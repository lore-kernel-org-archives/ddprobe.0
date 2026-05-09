Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD65B38D
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778285253; cv=none; b=i3wzh1cXBpLxodYyuVVsEfikX1ZRkStRm2sNVCLyxcOS9AWcIGRqshG6fauIQKpBaMEPxxUaL7neiXtdzIUA0hHu2IY/OApughm3Dz2fGEXh4CZ2PZbibUwolJHXXlzldcfpnSvjadObDy1N+vtep/SU+2CBtRex1YDm/D38dlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778285253; c=relaxed/simple;
	bh=eRXyurlnCnXlyseA04gkuKmUxNf20YuTQpWig6OlTa0=;
	h=To:Subject:From:Message-Id:Date; b=aBIVc4pZQRlGMuFtaiBmhE7l9hqVTHjX/+SnvFTDpj0OZCrfGnXgUmFsRJfv6aZb1jhRrAJ5WoMiEJc7n8C/YMvu4mhVVG4HhbeDejrmD81PcTzUYvuxhsoUMoKUn3+Kd7vs0i+0btg3XDxYBcWbCR4+vy8dOswU9lGseJVGx/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsKaXLVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsKaXLVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE1BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778285253;
	bh=eRXyurlnCnXlyseA04gkuKmUxNf20YuTQpWig6OlTa0=;
	h=To:Subject:From:Date:From;
	b=YsKaXLVPrTmnlRvSZk2GRDSC5NFyQD3gPsi5ibIE59Ce04/DTAo48WWsSyYDwBvsK
	 D5tAC2L6Fb/D28wUEYgDxqfeONqKCfyVSeGPvi4RkGDMEq+3BakUhlC0quU+TyPyFH
	 mNNVozj5CCgEVfB2iUkC/TsR0pTLVyGI6Ms/nxOJKvSmDuy2eFFHLHBW3HNwsd2UGM
	 IwUEf7JgG5B3GTTBErXc5RtrY1NdEbUR4IiMMiBxjfHDKYxudv7f30JuZL8vEBgr4a
	 if9kCumGps6EwOrzcXzp6zkaAgVm9Ej0zdgsHe6h82SqQdAH/m4Sjz19c4aOqkwiqK
	 znZhvZdbsjuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE054CD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828525369.22731.14719752890715985572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd4ba23e7ee4947b780af80e28804d25d9c0beb5e068f32d777d5593e97e994
Date: Sat, 09 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778285253
