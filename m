Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CB176410
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746612594; cv=none; b=qoTTgtOwKUPzUNpIr9tc0UhwsRg4ylz2AdjuoR2dCt8scnT8GcMpyTmuhXrOFVNyECf0K08SZhZP1fd4Y8aS5QvAHXJPGo9kUXCr5S3wuS2kPo8Nre4LZh1MeSZtI0gwQp9jOabTSgjhHQxn69acSEnf2FhnvKjsCZ96pM5FQuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746612594; c=relaxed/simple;
	bh=RthmtLnGr8H/r47Z9/iBHkGrKisDaOQOMAL10S+8zV0=;
	h=To:Subject:From:Message-Id:Date; b=i8tgdYl/4zfM4seyGvxKsqhivjbgRuUjNHJll4X5tmQF+7uQbzEbIJS0lHcF7fppmIni3r7glE8dUjWFuqs8iPhw439JwgJy1pMvfO7Asyg+x/CLWj0OEghflNpI1zuZ9MizUgjcNEMz4J0kggfsN8bLWqVf1pI9V++kH9PV9JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQXBiwiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQXBiwiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BECC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746612593;
	bh=RthmtLnGr8H/r47Z9/iBHkGrKisDaOQOMAL10S+8zV0=;
	h=To:Subject:From:Date:From;
	b=QQXBiwiAkXdFCYD6CmLt21X5d7WzOH4S09bc4Y63Ps+uY4YGXIPE5QR+JsDPTThyp
	 ZFLW//TYB63UYKCXNqoEM1oGj+FYD0NHWv/sWIj0ha4SmP5rgwkopIPN+5OnEYHLFn
	 ItKmH5iHuMDhahyWheN+wKY2ZEbTUSWbq5vcKZx2t0T7ZsEnHRkSf30dk03U4kOhTq
	 gaWh5ex4hEQEF22aA7FNj4W8kVu0DclBOXXgTiX0oIUcj8qYN9NABBdNz38kdOEfa1
	 hcRqZYOXK5iSiJY1hT+tW9i+V3zdC61Z8owBdSyivBWKO4kST2gV706MgWovu+vVmB
	 TLmSnwayZAQKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E816C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661259357.12419.12271760709578623835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613abc840d36c177cb0a5d82765a7d2ca54bc797a34a6ba52a3d823c52142d08
Date: Wed, 07 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746612593
