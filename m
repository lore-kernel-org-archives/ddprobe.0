Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D433CBE9B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773225294; cv=none; b=FKwMyGR6VUucKfxTL0djDthk0ty3HqBU1ggs/BVp49ghSBgp2hHJC1673NiZ2JoqneDbDzUGgCzMM0/Y1sv/lSb1PzpOD88gmEM5RkyZSLx5RGCZio9p2atS4ek0UV6cx8dzGCRyO48E1hKaN72SkwsNc1GlXcGyDkpScIcxe0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773225294; c=relaxed/simple;
	bh=l4JhJMR96Rk8i+l4Ol/kJJuUx/HTET6YrWXH9kzfSho=;
	h=To:Subject:From:Message-Id:Date; b=XamqQsu62AQaWVh1q5+yFHRVHDd+R8ltqNcqgDulRghgb/uxVUB0gHQ62fcZ1aNdC17Q2UgvvTwYV8Bdqf1/UtwHeQBY312fxGNH338Jo9N4/cKLX45ZuvhGZocBo3y1kJNHU/zeBm8d8aeDDmZvCixmLQiJqSxPWnGPFOS45+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbCveZ9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbCveZ9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8705C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773225293;
	bh=l4JhJMR96Rk8i+l4Ol/kJJuUx/HTET6YrWXH9kzfSho=;
	h=To:Subject:From:Date:From;
	b=gbCveZ9wfSCqTIfNu5+k2uBz7BzfanoB+duS3c4PsJfDcZMG1A/RjNL1frGccsq5u
	 MZ4Mglf7HJ0aADTRlZz6WE7y2ZwQ4krfXMGclHnyKnwfTMX1AbtCQyK6bD1uHJHAOo
	 XvDdu7DbMXhFrevLp+Ykr8sW3kMMIduBpt7W461o+CjfL3Woznw53ij6xvdArd4qlr
	 AV18WDW6WkFMYxcziK3mr0OdA8OGH3Jg/D1EdQYt7D0fXoWuvZPmuQNJHh0ag/ZXZz
	 bVM6ZzTF+18mpyYn+WbwPZGALwgO1MYniCRKiLn3BMuMKQAPNlzrUFqGi9fzBl1Jrg
	 W2wkpyTo4nGyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982FA104BED9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322529360.3118.8700704971924807370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42caf2a4ffde8d7e4140ce0c6806edf3fc8d939f3bb007d861eaa06c2b279079
Date: Wed, 11 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773225293
