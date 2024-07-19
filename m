Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3252BB05
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721424354; cv=none; b=eSpqEE5HX1FtrwL5QfWBiYhKi9wyGFn35IZTyePy+cwaTElcx3ieVU5Wag7UDwKOSOQsMmUivKueZzY3gRwIc720P6t2sILKsDJZEdvsahBoOYJVhYMTGxKomsFR48oV67FTay33gcv9VQPsp3/V3iOtmmWZm93xCtUw2k3nX2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721424354; c=relaxed/simple;
	bh=vtwN1TNJ5ROOXP6ko40ffSUL2s5scRs1dsN3sES0NJ4=;
	h=To:Subject:From:Message-Id:Date; b=Kzo4cfVmQVK0ixBXUG0GgXTq1lKIaNAASF/6A2wwuDvUdP7DZSRrHR8QLcMU6UtWMbLb0FJ1nFg/FGEHN+xFhho7CW6w59h3193bB+XX7Ryhz1Qf338kBOqNweP6yv92V33byXHNzSTXLR7fz+xpHJ5Bpn170kgYh1e4lImkOPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NURjNJow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NURjNJow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD188C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721424353;
	bh=vtwN1TNJ5ROOXP6ko40ffSUL2s5scRs1dsN3sES0NJ4=;
	h=To:Subject:From:Date:From;
	b=NURjNJowIQCge4hX9/yHHcF48QSuP9dcqXmeQWmCfELBrqA7IwPGHlQHrjPipWlVH
	 msN8/Ckk0iyGiw2xKE89nR0VePn9L+TltFbVbkspUKpC0IklBTtt6hX5fT9MWvVNg/
	 rb8hSwCZcSnwDWLKLR2qHD+IyEbIgk3ikPiH4ee6hney80FkpZ/+FVAcSxsMoNsLBa
	 KEErFPQnKcD7X/oZowsbHYfm7C87qaJRMbERobw83b4sVSO7OrrULrbVbFiuU0aglh
	 AS0cGTC6O9VPlkU/sMT0i2ZnyV+bOvgW64mZTJCqro14nFoz3qmRJpjLL6FzHLhPAF
	 eEHhq1jNDdXBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B8EC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142435358.31759.5825801845959583281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3056d4a61030478ad9b32cad7361bcdf1c7be7dc448a55a25ed5f86e9707c0bb
Date: Fri, 19 Jul 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721424353
