Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4694B231A51
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741774134; cv=none; b=XKq0XDFmkOESpFS8CI53Rg3gKlBlKv9TmIHsrOVnAF1X8NS05HwN04tBQIFUTdYEK1pa1sXfNiY4xAy25nTQamiAYso6QI5w3dQqKjVrEn2Xk/FHb8WeH4aFaXjghtL6ICkPXdj02OW7QYkPid3HagXuwfLu05Gg8FWxHg72KYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741774134; c=relaxed/simple;
	bh=Dhd7reC5zslUhREnAET/f2JI59AbZEpLEX/gaqD0zt4=;
	h=To:Subject:From:Message-Id:Date; b=D+JMk2jPFphoXM/AK5n5uWGSRgx9nhJT8Ws+kDMuT1MtuJ6k6If+/BPjvj7JrCFLpBtSMQHjVWQcyWgkSPPzfrPRE5hgp5mYtYHVf0W5S4Bu8vSpoyZGBFeFKKSedV1EFXaEvGamgutroqnsGszjwXXDrmLHWeA+SN/Jy4NMtAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMoyyOEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMoyyOEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EA2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741774133;
	bh=Dhd7reC5zslUhREnAET/f2JI59AbZEpLEX/gaqD0zt4=;
	h=To:Subject:From:Date:From;
	b=sMoyyOEpB/WkgGNwbOOpYQTG2IKsW1ZeWJtu0MwQLk3hzP6Jo8JSmZDQPQKLrXWu/
	 4YeGkx3nw6AeoyuAqS6Fjd5u0ZOKm3Kg3fkFzc9FPvHvFGiHZABwEFfq+/xWc/2zkm
	 YKsalB5eg1ozEp1gzwO8zzsTJFyokteGWxNEaEkjTMKQbkJY2aSFqRSpy32UEJfXHz
	 Apbp9vZpWtrFTjp+irmjClrYBeolXoG4CB6qmWwJ/j0jIEM9x3/8MxvU+e6kVkvbt9
	 FzeCf9xhjBgtL7l14ZcHHlzBj+LgHI6VSq5QyHprosH9mApcOEh1HNfnSL+QNMMCr1
	 Y1PiLMqgg4S7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94091C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177413359.2158.5231729922899481487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe009f8f118744c1c33344bd3ed4eb560dd7ac6bcbe21261da706090521996e3
Date: Wed, 12 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741774133
