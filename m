Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306D34A04
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733018154; cv=none; b=YAFnn0Dgr54otaOmrhyTA5GgHNqXD+1Af5yLl4kTYL2CimUzJyvzMiB/JdlXdpi34RwVVmjImccDPuTJqjrl7i9ZFkerLcayunLNk6f8DLr8L6IlNwoP4eNr3q1Z6qDPVlRGduyD6Ro+vY3o/frht9GGwXOTZmQAi7PbKyg6LFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733018154; c=relaxed/simple;
	bh=6RJ6ltdA457Rdft8wX6Dh2tRtMOsPzhxl/D16C5itAc=;
	h=To:Subject:From:Message-Id:Date; b=q5+/MldWSEBWbeVWyuKrdfYBRh4AC//OhrQYN+hs8oiu6wQ85XX4UA5Kc24K4i5lH4vL+Zs5JH87kX0HeRyoPLZgJtNio238+yFL8DHvWJb/QyYvjN5j40c2ep47mHkd1WoJB/wiAZu1Iqjwm/+ks7KifK6g86I0ph1U+vrJxXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcYicUYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcYicUYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BADC4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733018153;
	bh=6RJ6ltdA457Rdft8wX6Dh2tRtMOsPzhxl/D16C5itAc=;
	h=To:Subject:From:Date:From;
	b=hcYicUYGnfaVUmRxuCLWrgg+ne9/gXEXmLqyKDmldstU6BPV1uczyPfal9EZnWuw5
	 xSgDew2w6QoeOK0lkfdmIw5puXAe0NB1k3VCwXmHAc0T2L6BPpbg/M/v5aHsYwUJ70
	 bywckdbpfW+dYsHYAc5CErFqJ2TVnpL9kNhJIr6zKuWXgdodFunZ8ACpATm+Jmf+Bw
	 pKadNt5Z8UTrJvH7tKThrRN+g0sjs/R14HwxrTNjdOjse3TafoGd9RgJFy8P2ovM47
	 wjP1NvhWWwP0/H3w0AqQLAtoBwYX5EhQufHYA4Z1pc+LhedQ4TA9OKrxAnyO0ad6Hy
	 Vf2/OVZGIjXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2F8D73619
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301815360.12290.6270960024945648880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad290e28e4f8c16417fa0e0fa23ae113261f0cdf2e1c5600eba841bdcd62a9e8
Date: Sun, 01 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733018153
