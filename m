Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FA91397
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758043794; cv=none; b=nbDWW/I2PQjzCxoozgSdtxotBNCgbEbrMrZOtozKuAEYRaR1EHQ1Dj9OiDyT4ps8czls3Y1G204zvU3snyQ/okEUpWhdLeUxU0bpynzmy+I/qKKhrMtsF9zX39ZnYbI++L0VjjUz7iAK4fsjV/ROJzsnvjA0dRtijE4jpy5SHL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758043794; c=relaxed/simple;
	bh=DzOyvJLbRC82oHCMIrEvpZL22xIsRrzb3NbatTDzmhA=;
	h=To:Subject:From:Message-Id:Date; b=AzHIvvgtgh0+ur4PqLpLHhLie2GIrH1xPiCjo8Z5SLEFK6M8GMi6ViwvROdHIfVQr3cHyPQbJENzg+x2gxlnhwEZf4rv4sL3GvLFsoisq2tLFqAGEQCoBaGTgfamJrvAMGikKhvmV/dRGixYYj11ugJPsEocexeTZluOLZT87v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncA72Z3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncA72Z3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5776C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758043793;
	bh=DzOyvJLbRC82oHCMIrEvpZL22xIsRrzb3NbatTDzmhA=;
	h=To:Subject:From:Date:From;
	b=ncA72Z3MtFMFxI0hUGun3bITNz5D4v47SR1KWvrH1PrXsXn5UuMTvWcZyC14+cZZN
	 iA9D3kuoThZMudl3y7we2JfBQXFgLPkb+2qJ5YT7DL5AmnWxfe+7Y4mhguWJhvR0rF
	 ozV3SP8iPlK7LG3xNGbKlJNlLcT8DAmOEMo5byOIrTZi70p40UgnIK8FUdVLMJcbOU
	 ydh4CpUmOwPJ2YjBzcm5kE/wH9R9/eY+iipaOKbreOOBDcOkNrzZaCo7OvmUt6eCuC
	 nQ3/EV5QbHKo3oTwBarybQ58Lm42P7BL7otTz8TZDVPt0tZYzAqLxtiYsBdWEXLEgS
	 uu7TcdXonf/kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90145CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804379358.19559.14034358349004885834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daea15f5cfedc062d4f4f88fa8bea6650e518f461b5d906e8a7443c5b7468afc
Date: Tue, 16 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758043793
