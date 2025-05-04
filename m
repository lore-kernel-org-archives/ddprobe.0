Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F93189BB5
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746368395; cv=none; b=AkHPzxzNYX2SijbL8MCkHaUgOCqyj8X6nMPYjVcxpLdzg4FJ4LpO2qe1ehepzwec+96YtQUnvWA/M6Yakkv3ZjhB4ueEgHn9kmvlrQLdIEwhGlQSE/386sN1U9/5KckLOGUHCQ7g/lKzmd9sYkJzZitZBsdkCnzIGijujZAY3Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746368395; c=relaxed/simple;
	bh=NMlfOXNUqNgy40s3op0y9fl3FIQx2AN2knPlF/sMd/Y=;
	h=To:Subject:From:Message-Id:Date; b=eupfAE2uOJLYAiLkkKYVyLpXT+lChp0LUVObmpTtahff0rx+qQQFGdvgoYIH6qS+xaVIvPgoAVEe8nIGWflYPEGXAi2fX4cWcam+xetrWjQ3t98meGPSEG6Z1bnCSGrAAoUqAwXc4IdGmDRmzLmhVy9fnpH4riUTdxaIWh9RIzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glvm3NL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glvm3NL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C3FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746368393;
	bh=NMlfOXNUqNgy40s3op0y9fl3FIQx2AN2knPlF/sMd/Y=;
	h=To:Subject:From:Date:From;
	b=glvm3NL5vDVXJacdtilC1rQ0B9qtq/6TZfmw821Kn4SxRCUbbyUGeuZvb2rB3ZihX
	 g7rrJd/LC7LYUincVyAKnbgrSEmSBw5X9tGAfjHv+xngBQ/uHX/4uz6CBwvCFziqd6
	 I0wgoGNh9wqsfdi73alvAC/bKRWaJpIfVxxTTH0TODTth+A0ELWL9fst/27Nvo5W95
	 15/1rZyV9cTZ28gwUfAeflrc89jzYSXQQKQKsAyQNAK3gPX9pq+EHKefwaEZIsawrr
	 +PlRON/B2KZnIbJrb1oiD9YHYH8unEkBYMm2Y7Sox+EVCjiY5SJfyixXQE6ewj+MBA
	 7MYdQv6tWeHtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E3C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636839357.21198.3508230405156850045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949d5618b49dd1a9eb87a57a5f3aff6dbaed320dbe51ca19b761ab0c8d3b08c8
Date: Sun, 04 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746368393
