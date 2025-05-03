Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D530EEA9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746312594; cv=none; b=BirqD9bVymMHwEWrLDm7N3XWGC6Y9pI0BNj7PY+pfychdoqFvOYirRFumGKbAXBh4lRDyuVUcEJ+eWWUnTtRh0huqyRPmLJi9QGX6p6Kgulf72YERK37bO56tP06lUkM2QhRzQpqrRK5EI+hW9fbCt9St384yE8PvmjEjwK11eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746312594; c=relaxed/simple;
	bh=Qy5PS6+g2ARZagLt5IDo9QyFLf/0UL3z77uaths371o=;
	h=To:Subject:From:Message-Id:Date; b=O9DZ2hyBmDW/rF56/6HWz0W9SFS6Ej5bYbuDVhV2kO0l+FLceg2EC1LSvGMbf3HZanQNRK3Oz+cdrcjcclNm1bfBEXDtmbFZ255Mm8sjUNv5g1BWcefy4GCt+fX22j2YtbRh7YR7fg/Q5l6k7EKWflDhYv5tJz+xAbVYIU1QXPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+NfoOh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+NfoOh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746312593;
	bh=Qy5PS6+g2ARZagLt5IDo9QyFLf/0UL3z77uaths371o=;
	h=To:Subject:From:Date:From;
	b=M+NfoOh7w84zStVpJVuEXarUHu83H6t3S9CCHfyCs8VKpUTOXMnezOcSJPomcF8vO
	 Kq12nGkJSrfSGd0GR5YnIxLJnvqCyLxVAdDGOKMOpVH1jfsdx8UvHRU8t2NndHIoie
	 u1KdHdBCJ42FOSzNruQimdlOOIpNw4JBb7HgBovm6iwfSn4uEEszNIWspSV+SYwPTI
	 OSJuagz43pfBaFoptgTLTyky6m7f/fpEMypqdONo5iltQrOtIgCJxvtEz5TwmGStEI
	 c7E44f9OtxtZxlaoEZ2Jc7kIg2pmm+laznCT3TZpASnDr6/CHd/oG18dRchF1B82az
	 5CeEbwzkGqppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E59CC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631259357.32347.7465550205103478072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b2173b0c4ee4ca045fb06ba0243130ec2ebccc00bced6a2e04378ca0bca962
Date: Sat, 03 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746312593
