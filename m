Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCA8282EE
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756858794; cv=none; b=oqUgoYy3dFrBQKJ7S4bLdSuMV6CuLbErlk0I0WGYTFUSZtPqJdpGiarEcEgRBYzJbH9wIBFoV1N5WX0AnousUmHIJcQoWcM6eeudkFI9NzjEU4bIiFd+MLRYPKeH/TeI4Y5WqBME7Wmodg/MYrxLa+54fn99Mk0/U2xehCWF/8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756858794; c=relaxed/simple;
	bh=cE/emMJZrHkKdSEds5BJa+JGI7x/Z815qWyiNXhs/A4=;
	h=To:Subject:From:Message-Id:Date; b=HwP4dgaybRK4M3M4igiNimC++ha9domffc6LfVEcK3XtXtAu8E5arwTvTpc1CpyyncUcbh/10dpiwk/kZ/5RVMPakLHzz9oibVDTLX2rtZdRIvNnGas7uOhquaQPW82lCTAE2AgJ9idzn6q77rZXvBVnOP+f2cW6clmr+C4JS3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr0PQU7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qr0PQU7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A768CC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756858793;
	bh=cE/emMJZrHkKdSEds5BJa+JGI7x/Z815qWyiNXhs/A4=;
	h=To:Subject:From:Date:From;
	b=Qr0PQU7m3MZvMZStfGzMFLnbRFCuejhT9Bn+VEEY4Qm2yYbAVNYplytHBCi04VPyk
	 5jUMrAfEyM75xpCX2oVRL8/y19QMGfz/88Y94b42slq+DsZzOMj+iabnlUO92uSq/U
	 e/Nx/+1KbpdcPgaJfoobLWS2DMpkTsXjhYHAnoFa+JFxpPM9qwMvVvo6xBwj4/cE+y
	 owVtjQbDGWNcA84iswmQwvxmAR5jV/siWRNd1yQT5/GJk14Z4PQAmcpRUDU/fgqmpX
	 Q1Bd3T0kZG/xj+ySCenItMmiuOK1ku/7h17vgrT+WD1H+k4usfmeeNmwKgjVu/dM0Q
	 kH6BMtCtxi06Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281FCA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685879357.25169.11700620094367044602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34eadf269ef33be65e77cf9ddcc8ad911e52c712c90d105e6406984d5e73b1e3
Date: Wed, 03 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756858793
