Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5232FC028
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759141794; cv=none; b=eOhtVmUjg2CD/5uhrLhke7bLvZDaYGu4mzzARFIzH0BYiv+9qf5Rb2GvU9P3BtIjY8TS63io2yB3dDny/5NHrG1mPrcK977RT5ZZRD8ru+BaIjM0Yi5r7PdgEYXCGY3NCCaHHirRzcqB9wefty6fUmLh2Ce0kgkewwhbgfC6/yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759141794; c=relaxed/simple;
	bh=B3dmE6wHfMfJDeDo0JOW+1mpSnDZ4gXQtmaR5xMwfSA=;
	h=To:Subject:From:Message-Id:Date; b=jdVZ4+kOb0N9UNk/qltdnxTBGBZcrcNFzEP53+dE2rZvYJftirZbKVWuGEWIzXL22oHeFwLlx5Crw1qEzbL2xAVAHavevpXyPvylnAxOYfQjbCgZtBQT8IJiQ+PwJMtdQxH7bxxi/egDfdwzhYFtumfjE/5/hXPtF60sN2YH6cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RE2bmlAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RE2bmlAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6526C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759141793;
	bh=B3dmE6wHfMfJDeDo0JOW+1mpSnDZ4gXQtmaR5xMwfSA=;
	h=To:Subject:From:Date:From;
	b=RE2bmlAOnr0tFygcIHyATkDZC/jHgCArg+soDmoamgrd6nXJ5Dfqiwspg9MiA4CT4
	 TDkqQaOk3Ia8Dbj2HhjY8a9WLvCFJZ6tIjpK4HR/0dQS9jRgGUojE13uyZvdJWyCj/
	 y9wxdjxrMR3jMHwCJksVNhlVwB32lcGpN0ZM8kXQOZcVQM+C9Mt0L4J4BSOptozqCE
	 JgSxGFtktjNAEUnjO7DqTUgm96d6T9l0598uVeecwJ6lElK/s/vTSqlzow7NXdMxwN
	 ADolhfbpc7cOMAI645HzwAqVdLoK3A+rXJM7dG+pQItBhDG+qkVv7uJQQhLHX09itR
	 6461hzWDyb7Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A9BCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914179366.11452.14840195300393349660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dda594b1547134f45194ae5a7ffb62b06d6093fa13541065cb3b566334f7f82
Date: Mon, 29 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759141793
