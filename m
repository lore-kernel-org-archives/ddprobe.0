Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E45728CF77
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783095514; cv=none; b=iAIH3+9INr0421JgAXE73T3XFEFaWYcL7MVq+ECAKHe1fqxsRf7uatVYHDWLFf5bXMkZy5/f+JW8BK3N8mT+OeSWnLnp+nb0IvT+iKx91X9D2TS4lBA6K+TaytMPZWPNU2pcJYwhED9UXZPX8OZ7A8EIygqvLzhvujbviEOlXHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783095514; c=relaxed/simple;
	bh=bck72rP7UFrgElV2hfuCVj4x4h3pi7KXdfC/QtHH89Y=;
	h=To:Subject:From:Message-Id:Date; b=CZTXJKeKyaA6hT2Y6hKAC6TW7MQJ2VUadkPYE0V9xTvfGo4Dn9GWDwR/zDMgpV7OCz0yQ7SYACCfjO8X81h0tl/T7B/443kIzLziFQyOVqMGy0ojJz0OCanD35iaHtDVStYRz5z3e0ykmAu+nMwCrqNI7+v4ZzB10JVdHWBAGdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEykxq8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEykxq8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F48C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783095513;
	bh=bck72rP7UFrgElV2hfuCVj4x4h3pi7KXdfC/QtHH89Y=;
	h=To:Subject:From:Date:From;
	b=eEykxq8AKTfoW8NQ0bJPwwmhwVfaNiNE0WVV7sIJUL5w6XYKxbJrV+AndTWnEqIWE
	 OVzTfg4Cv3kuYVwP8B3kCyWHEzzsM+t2yq8oxkxSYYd6HM+ZvCH1nfxyeYTwwHGLs5
	 zzU3IsRwzIAr28ecCrrGsgYcNOn7qvQ7YuF9Hn7Spp/ymdZrUQ2iG4atT4+JLN2zJ5
	 ecTZ+xpIgSl5qtqYvfCJ7OOvqaagOGXlsC6KEGHprTO5FpnXvu+0JCoDds6cLHI1Jl
	 DCZy08vHhukURcs1t3e01iYTpAxErv5m7dxxTzEGSUEP+VDh5RjNyeOXDeWSL+WEKo
	 1Rm2R7bsKssqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5746C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309551368.12922.12879390662933924556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c66f07606a25c568c6a22caa90397b5adbf1dded14c13f5d516a75f98a1c26d
Date: Fri, 03 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783095513
