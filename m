Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1948D195B1E
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717694243; cv=none; b=ZlYuiIRbHT6nLT/M4lQVSLCAIHz1//Bt2ctofKm7negSr20VI9SvhA1aGEVI7BUQbApTfM+KLap+anscrWyKFk0xsij0JOKGCKCIJRhDiMEkmu2+OM0xUJ5BE/porfGdZ+zNwm+43L5KnGA5ODmxtrPVGAvV32cNzDcsEFpRb6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717694243; c=relaxed/simple;
	bh=uOhPtaPlmUp9cIHD3L1wxD24kYrrKy2C0fyn5ZwGBIs=;
	h=To:Subject:From:Message-Id:Date; b=SH2E3XX+doVx6bcantPngFaK+a1Z0dtXEMGETPk8QezXtuex2c7BVAtmy/89HZhDpNrbncKvozPazfNRC8xWaF/Rei4CSS7TBt7gK3rDGxesjPONauv5xLdkAyawmV+4soVGFOQt5V6lTbG4ZtIuPFjkfNMdSKI76ElU2hyiJ7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqjY64ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqjY64ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30DEC32782
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717694242;
	bh=uOhPtaPlmUp9cIHD3L1wxD24kYrrKy2C0fyn5ZwGBIs=;
	h=To:Subject:From:Date:From;
	b=PqjY64ec05EexKa1Uh+BeYWkpqgksMj6KJX/EAJDwg6hPhNyaeS4iN/pmSITj3qFW
	 n9ZQylLIB+Gm03PM0PQCY2e3BQ9b7RHmZQ35ZJVxdrfaG6omyYzxurd5Bh8W6LZGT9
	 vpykJao2zlr6E/IpxaKPHaSHwjN7Fyir+VUfNifRE3sqOZaeH6ptbIVj+dgISLLl8F
	 njlhrcwxNcGCPpDDV5FZpmVFR+nTofR+93q6+E7ILQWk5UkzQLgBHWMWHevDhv4L1p
	 jEE2k98llHfz2YAwwhWpcKmt0sVgqgWluoRB0zYplJbP+hjSLmfjKZ1Exrqy/lpm8F
	 NOShdj4XAW3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D260EC27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769424285.1473.10122262881166631621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710957789f437cf58213bc27f1ca4fb1593d236d81ec25ec2e15ff3023cb0fc5
Date: Thu, 06 Jun 2024 17:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717694242
