Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8971B974
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717738043; cv=none; b=m1zToHSu5mN3mF3AaJy42I8pVYkYuricrRspkSey/uQvE0rV58X5NGCIFX90AutnEZGf8L55KDRKiNGVDkviOPm2nCha/0apuRK504yybOjZ9b0hwL2wOW4ApBpCSNh8ZXH5SpuKL16/6uXDQypRBKBaE7V2hD2lRNeWCGyjt6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717738043; c=relaxed/simple;
	bh=Ws5he8ZgsjukdaKHQuvuCl+lKaYnWiM1/hCRUSMzDbc=;
	h=To:Subject:From:Message-Id:Date; b=JWv+mEmtNwDO5TY1B+2+7a0z7PIK9jxeUU/ETfMVhPQub6VfDm6DQWlJ/3x0xAU4Cnl5Ks9bWV6NaIp57hhRFJ1ta7AUcI1fNwd2z7vFpAKaT9/pBbnQAIfDsnk9V50GptwV0GCTHajC9Hy7NM8PBUXRw1g2px0Wuv9dtIM9gEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/2GPEW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/2GPEW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E333CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717738042;
	bh=Ws5he8ZgsjukdaKHQuvuCl+lKaYnWiM1/hCRUSMzDbc=;
	h=To:Subject:From:Date:From;
	b=r/2GPEW1Fz0YwveNb1h+6JlcVR31jFLIkM6kTmcKdN6GFS+umURUoFHQy7TEkgNd5
	 MELp6SlrM6ATCN4AOvenlIkfW02AqkNZgOGSnQsjKOrR9oq4vD2FEjTGE5/Wjl6tev
	 BRS6YHuxGqfrBDXeNp1fbcZv2ga+Cx4FUmINK+Rwd4wojDl27DYqdbR6KObc8yd4du
	 /DBhU6x7BICDQkXfy2cxwX9eSuiRdY/2LlCCjlM39IML7DfI8btip9jeX1URzae+x9
	 NfSB8vE8vpGEef2uNCb0fbrvQOSQ7pqmbli6RwbC4fVTZy1M6OiJXZEl8KFyw/ve5b
	 RUUkDxZAktmjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC318C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773804282.18405.12991694381216495863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc61506c88e72298f5c7a6854485223eeb8a4b7b2972ced7fd703e0420b0227
Date: Fri, 07 Jun 2024 05:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717738042
