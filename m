Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08536157476
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721750154; cv=none; b=DSc5fsgcchDxmkH2jw+5BoHwctwFqShJ9m2zw2Ss0YFyHtYhVzwJy2f5IrLbdhTlfyKBdLPWUqOKDxOSSq/NPd3ZyK8oFcYpeiahOqYVULG51P2OOwO1RELsFDnN8pJ0IZVfTPPs00z3KNyxdl8SMGVpNer1nmb3az1KSUfrvR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721750154; c=relaxed/simple;
	bh=x86lx9QywBI1HeXE2L5//byF/+dy+lDujiFe/hJret8=;
	h=To:Subject:From:Message-Id:Date; b=jhAKds4BxFULh2EWWWpHGnAcqQ0PyZ76czUfxJWu0SWGvt0zHZ2F3Eh9anMPaojU2BCNP2NLDoKHfqzzabfJhDwz4DaLsuB9FRgbN4lNMrTXIljszVnFnigKckGS3snGIVmgeOwpO3j/+4T9wJSrTQOGLimEnQ2WMPGgJk7q8yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDSAUEjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDSAUEjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE57C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721750153;
	bh=x86lx9QywBI1HeXE2L5//byF/+dy+lDujiFe/hJret8=;
	h=To:Subject:From:Date:From;
	b=VDSAUEjT5CiuOjtwIYvGj1NBDcT0SiOoINKDt/W0MOB5qbNOtJzgBQF7LwVUadcCX
	 PzzBJL36+igiQZy6gS2r0fVnmZFQWVD0ghTIJTOnpEwj0z0S3rW3y2OLT9K5ykSKvc
	 MAXjtuw4sxNOOXe++l2gPTCMYXaByr3TuJOLtJNkVHSRUXYfBQU97R7IXyuUikjZFb
	 QBhI4YA0CuLz65I3tvAz16reHOdza31Sv7KTKNG8QsgShkUfrxPjkA7wo6OyaY09lL
	 YjvlDfpTPDjhsLT1y0LzUkcPxJlcRLHhCre55RwrSTiDqPelMoTeyu5WSU6ZZsO0lL
	 TO/qQqN97hg3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C099C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175015362.29271.10027928973065877955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16f264be4fb788acc8806d9a78ea48aed63b4cb19f61184a8c9de9d1eea4288
Date: Tue, 23 Jul 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721750153
