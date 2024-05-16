Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7D83A8D0
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715833343; cv=none; b=c4Y5wyNnOG9abYggRCvLw4YbVloVb9AcsmLF9nMwwjZFdwzMdX7gMVP3MIpgyRSnpPixekFIgR4+rXjvn0DisNLt5aEjd9HOucccTUAAgh+JEhI+Gb6kkaxQD4Fu6laPgNRmV1suoQY9cDtGIVwOsVZmtjCzucLtll8KxJjJZOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715833343; c=relaxed/simple;
	bh=136k3hmh1hj92yoYWeSZms9jB/DavPMACVKjG7NzL6A=;
	h=To:Subject:From:Message-Id:Date; b=F29gRB4qhq9+FuMlsmQwEndv6M0fHQo+5c+JIl57rR6w8NU/8Ad2FmLQ8uU9xw5cpkwGwwrlH74gwyotF+z452oZ558p5GZLm2UGWtBUGM514LSqSRJfx9jRgdujZZSRLlmd2c6SrQYpX8i8KYekr1HPdpd9i/R+R6kXD+WGwmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGCXx/ce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGCXx/ce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB58BC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715833342;
	bh=136k3hmh1hj92yoYWeSZms9jB/DavPMACVKjG7NzL6A=;
	h=To:Subject:From:Date:From;
	b=FGCXx/ceXU1BrtCabAYYLDzQXyQ75sRuruaeYN+zYfil6N08VbeXjpCIzjkdCtDQi
	 MzbGOk0joffbOQRdhje8ncqsYmRkCQb5Uavi233AiPTLb5t14GPQmOH7Eay3Gy93aO
	 aj0weOxznTH5T2cVPerVaBF1sGNXGDoBw+r/WEGRGEcDMrR89UsDEItB9YXrOMFCgM
	 2rafGJHMKVI7VOJ0V2Nz3mdkwpcLgXoxHlMK0De8EhbwjlidOSNpppUmk9d2HtL7QP
	 QmHLWvxNVk3SdO2Fs271Dw71Jne3xCo60vVFJ5swUCI3jRZSPCKU1kdkaOasz1WKYl
	 lH4BMk73urhzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BBDC25B77
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171583334278.24976.6479495652951825910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89ad85428b8fc32ec680d7e619034230f598c3782866d50f6150e455293267c
Date: Thu, 16 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715833342
