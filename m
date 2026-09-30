Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACCE496D20
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790810436; cv=none; b=Zrm5Jvz9wA1azCR05y3N4/gTUa9AndhpTenmB812Pr50DaEylwOHqb4c0AdTSbcznibtJwh8gsPTavjWMMf9aQBplSxfi3tt14GfgPKs6KK09vGYhzy4HT5dnVkE+BYc8+uMwMlu3pZG0E4+V1Cgmy5kZUbVGcAM7XzdKhmG8pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790810436; c=relaxed/simple;
	bh=Opoik7R4I1IR60UhJFpL0sV/znT8QhK3GsXKjUJFEn8=;
	h=To:Subject:From:Message-Id:Date; b=uZHsRZt27guef1kvhMnL+EKAvjLIYyYypgaXv+FwGUyuTfId62K9GMWf/GwyAqDex2orZ77EL25cSKcnCOCK2rC9Vbs0ZVk77Evd0lAyRfafVtQMIsfA28xwfLoykaNVB+s/xn2VHC3UMMgxqxON1kQw0dczdAPTl0oq/Y0Anz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdeoGtBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdeoGtBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C10C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790810433;
	bh=Opoik7R4I1IR60UhJFpL0sV/znT8QhK3GsXKjUJFEn8=;
	h=To:Subject:From:Date:From;
	b=mdeoGtBaG8S8VWCrn85G7Lov9Y0nXLvmKrk0uXkFWAh5DRa6M4Ibi44K9SljUjZuf
	 YdRkTosWJFMyuP3E4AsBjaujDk3pyXOQnnk89rjZLBdklidPU1b7zcZuMk9svXbDqh
	 vWit91L9sc1U8Rd2sIKJifJjPxj4y9GAH4OXzbdQQ0PwBVoV5OKyeRjujvWGGwX4Uo
	 qfbycqr3XYzSRoHGDM8xxlYmFvVYv0OzGCBSSjPOrDzp3bzQqxTuGUa08cBUlTCvJr
	 2RXCTVByb4jgvwlA9WpCaslhJRTO8m4cRxr16j5nPcK3C8KdS0D5ampSjypOYuC2QZ
	 E7/mPNszamumA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA729CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081043368.19720.347743994644795999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2440c5e167786b2e34b2eee5b107554d8547c0d9e945710bb8d41a5519797c9
Date: Wed, 30 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790810433
