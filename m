Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C513438B5
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779631354; cv=none; b=X6Pv2VN6ZJ8DQvdN7Ekc+ht0NRKUTdaFfNoIjvWGtzFmA0mKy9L/a48G5aQUfL8pPFElU8OOBVxmhK5I0/ZzFf2tAEbFWFoQ9mZFpj0ywp3HS0lxruIWEsulfxz0Zi9Lqk/MziMLMvN1l55/Tv83Gw2E7cagkspvGezlAMkpeP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779631354; c=relaxed/simple;
	bh=B9MhAxVcadxGHdAxk36v7MfFohMJr8ZsxI6rJ3K33q4=;
	h=To:Subject:From:Message-Id:Date; b=h5iqrf5ZFORtKcQjG1QT40Pamq/pG3Dibxa26KqayT3mYd392TDE8RIC1clIi8ab9l/V/ZLbfWAGrwwxa1b506ALzeBaS4W0f8rl7vzwKLpEfXrik7Yw+iuiSuB5Ygr2qF2K4qmsQmJ8AL6yilH+MwcA3gtND8rl8stowqLu+94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4SVIhed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4SVIhed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81F9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779631353;
	bh=B9MhAxVcadxGHdAxk36v7MfFohMJr8ZsxI6rJ3K33q4=;
	h=To:Subject:From:Date:From;
	b=s4SVIhedveZCnk+T8mJzdV3P0M865S3XWFaafvsKDkg8uZoOUVOWk8tAX/KByi/mi
	 Uzv2u+OqhU0mymUdD3OrkVFlHtrpjuVmf/hy7n5QH6yZwvM46pXyV7X1KWQfFA6h8Q
	 RoGFKGVEC5ZcqekUZFloETO2+SB8mDEWTH1wCwK2MXZpvgCEOFPGw4ZUEFTTsKr6BX
	 djA8X0+YeRJi6odRe7GKK9EneiDzHG/71as3rr7mpGSk5wxZ5Vl+3myuyu4xmSQehK
	 r7w6za6CGL7kG+Dpd8TeCJPnTvp4ROt+4AyZLAH8Y7zwRuGFBdvWYKXZn9BlQh2e7i
	 opQAPlIlpuzSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC18FCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963135368.25536.9008763650245304286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec598a44b95199c59af123ca2d0fa174c507743005370bf08c37df743b98a2c1
Date: Sun, 24 May 2026 14:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779631353
