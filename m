Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B3B1F94A
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730531154; cv=none; b=s99xyDMkNNInTsAT9dXMptWTBF7yfVV2CoNqpF3oSzWMHY1vCuqsCxr2w94vYmhbM6sufMxt+48jpGde+gEnc3qDADmTVamAuRlEAA0I2EQhTAcVETFcyDN3N3RzkfIf0qbujsfyzg7PDVJcxiU2E3g4ocT3gNT4svP4aTi8qRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730531154; c=relaxed/simple;
	bh=wRnfi39JQeq9k4PJRGioMtATDoPhdQ9qpu2qXUpseJY=;
	h=To:Subject:From:Message-Id:Date; b=iiuY/k4MKdB5KHo9idyvKALNzdBU/N/BnpIicNztRF+Gl0VqABJAv46iSqIwVPEflma0v/HdYMhozqcj8P4Cr4merly6P/t/AxhEYfHYwWgn6JzpwQ0QYOpXSIOSFbhEt4KhTsRrps0QgdrgBCAlIfk0BIZznAnWny4Wutoo/t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPAmVJOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPAmVJOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC05C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730531153;
	bh=wRnfi39JQeq9k4PJRGioMtATDoPhdQ9qpu2qXUpseJY=;
	h=To:Subject:From:Date:From;
	b=oPAmVJObaL8qxl5LAT8BNT0jymAfxb3qE8JBp3WuHzYjqyoGyfLTCqAX0x4+SEHCr
	 vy82aQdHpUmPBl+/BBS1q34K9Z4AZYMlJfBeogV68Bp/GD30R+YXHpXlUOwrqjyTV9
	 a/ad3dr1b2uAK0rouEXp/S2vSkTFuNdjni1zUrK1Y2kbSvjz3QILeDywK7Px0LEvik
	 kkihWUyZRPw0wuUgMznzlk/0Si/LIMTdonZXERaO8xk5aC0ff5k+IFjceVtI39YDD+
	 lFdoYgnb+BtGs2XydlgikwcEpMm4bugqOP1G4Qlt1FQbvURJGfTwEX1lbNRjF9aaeT
	 Qa/RvRbc7ERPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83D6E677EE
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173053115364.7564.2072003295483853676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bd0bd5ce198281e8d462176cd064212438050048dade02904dec57cea7334f
Date: Sat, 02 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730531153
