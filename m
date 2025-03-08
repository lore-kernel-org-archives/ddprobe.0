Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D0B2BB15
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741443533; cv=none; b=NifBNwCd7uYDXXhLh9IVpJwGnVEongeRK4N2sNSlfwXdraByPyZK9apLaicYjwhWHXz3Jn7Rrw9xst2Nle+VkUPdFvepMU/Z+sIbHzwSBGloK3Qxl9agtYfggNHMmwn4cgZsaPUB0D94iPWWOcH4TaHGk99woKZkVAiXCjnCLr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741443533; c=relaxed/simple;
	bh=NPjLaOUDYmdU9TVzXeRTyLcmmTNwLwSmJ8+6U7VIdFU=;
	h=To:Subject:From:Message-Id:Date; b=hDVmHGZBIzs3tgZ0VXiYUms+Pps1oOEAnp4OcQ5hxzw6euW0zr8cyZqBrTomYNGAdITpRyCSnWGVGzVwjmqzqPpGx8Sas02DWEMvtNjm/yvMTlOhxeXL9YOiI1O+8rZa9CH0A0SOYENbvjrKnd4XBkWa+NYkGPYP6CPTMPaawAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYoNWZzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYoNWZzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D8FC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741443533;
	bh=NPjLaOUDYmdU9TVzXeRTyLcmmTNwLwSmJ8+6U7VIdFU=;
	h=To:Subject:From:Date:From;
	b=uYoNWZzxSiEoF+6/6tkE6Rdd6sFIao0sunGe7S6TvnD1OSXudGo8A4heynvt4lN0c
	 OFYPDkNHd2/3gNK/hj5H2ugaCsPdLMzBKlU4eo+KoGZPzuefkPwDXZ7Iu6Y7Etn9ET
	 NPms2t3y+qr4g/oKZx1+lOGYz4ZhVvjRikW6qmMntuSwe5aU6IiDbvYTq8HKGcbG63
	 KFQr1QB+NnzbLK32ClNlpvVFOknsLTPp0KyZCdx+BXBuJlVo5P4HYlFoCcRpkbdP5J
	 /zgsUBnoarB1N22cf9/dHMFBIFeTDQeRm9/oIP3kKEk+dWqELycus1Dan2AywHvUDL
	 OeLW019Kp60Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9491BC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144353359.4471.5625024719786287059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd46a694f91aa2e9be22f9d8d33250e05537734caecfe2f3459d8102072b4fd7
Date: Sat, 08 Mar 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741443533
