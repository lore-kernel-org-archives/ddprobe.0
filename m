Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EAC535FA0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791917434; cv=none; b=m85EWi5k1LVgZb214Bo5TcKUBp/aPlnMu0dVio+T5Avm45azqXZ6cMwOCHSvIASJDp49mUg2FdEz65IsbkqXv8GxVd2WPvk7A0vbNXm9MC5nZTKeZJJ/2AFQT+eu2MOjBqb6qBjv2woCYCm64QFwxhUD31kDuZz5/X9BOH+HZbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791917434; c=relaxed/simple;
	bh=Jpzy6T/yQOkAVO4BmHQMWI8jP+jE1p/ajNXqNYLanwU=;
	h=To:Subject:From:Message-Id:Date; b=jJKI1IfZ8UyBnZ74c50JriJBHCTK5DRvTDPFpiHyHQosiN0cf92CcQ3my+eXecq+yKDVgJOd81OawPuQB2WvgCrIyI/7qVviCjsxh8RrjA7RJByTuFUBiS0aj8A0XUZnGK0Hf3z8s8F+NnIv9hXfXJ9skUAOLbnqqhPZGpoG9ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDmuNSCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDmuNSCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD48C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791917433;
	bh=Jpzy6T/yQOkAVO4BmHQMWI8jP+jE1p/ajNXqNYLanwU=;
	h=To:Subject:From:Date:From;
	b=oDmuNSCkXnmOgj+poEw/+L++Jl/zBYpu77EA+IMNB0dL2BZ1KsS2Uqw4RddJHqxYR
	 s/GdwyUfawUGgu6Gi6fenMeRZJljSCk1G9V+3rCjOY3oeHt2Do/grOMtwRd5/8Ntkb
	 NsuAKvcjESIbvMLfHIm0Jv58oa2OrbeFbaayMlfcOVDaU/JW648MrXnHUshdedak9u
	 ZJpKrtfWOhIUnA98OwOZKLu5AXhQD+ECxhN0aY45BxxlyH2IYqHnPt67qeXUmXEPGF
	 jNWTFddKE7GDHrK5qYt1/dG5B30lHvT/Z8/PPRUx8p0MKWOWQlgByIiAtpnbwpCdny
	 c0r4i7pE/kbDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F0CC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191743369.29519.5787257162331998705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba48abafcfb944f6fe0c0320550d1ad31121269093d9511b04d33339d376e1bf
Date: Tue, 13 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791917433
