Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4E231195D
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759354194; cv=none; b=LSdmgdeGiFUUasLvu6Q3+srjEp3shmhT+K5xJGhqpXWPwKvQLsruMRlUtK8m1x3JoqxPSj3Y0Wl0hEmsURVvtFljJ1q6/kaFPERiMc3Tfh8sRNbVAu00jel8kIUmG2seGZ1vG0m00EHlmrsmiaa55nhR3ihEBaCRfZJ4WWHyJxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759354194; c=relaxed/simple;
	bh=gXWLEmF3BeeQQ5/dst9FJm9ZJgjWSoKRN78MDVQyPeo=;
	h=To:Subject:From:Message-Id:Date; b=sKIvIgLrEfr516Ie5g4RW33cKc5GZllwGznOq2/HV+p17A8pNAg6eUc3YmBzwr2oDtcbBH83WfKk1kALo96Rv44WMk4KDfC6y6MlP5ja76MX/2N5BrTqu26dsR3jv9mm7N/aFGCKZjZriyy9TLmxF1K+8q6TE23WUpLG9B0+TfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3YZr9Pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3YZr9Pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1159C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759354193;
	bh=gXWLEmF3BeeQQ5/dst9FJm9ZJgjWSoKRN78MDVQyPeo=;
	h=To:Subject:From:Date:From;
	b=a3YZr9PeYx4MZ+SLWI6uHLF0BZ/ZCEpAj5+8ODuZRbZZgOMxZGgbTLLMjqpXz1m1M
	 OO7mcLUjlt6jDgN37Fk0sWWW8K8fPolMRYz8OCRgzbUMrb6M505U1VsJQjDDfETRGj
	 a5FuUzDc2MfZbUPUE8aHkJtGjM/f+m2iPD5Q6NXBEDDsW6KIB9PXCGqcu7jnmeGEUj
	 KaPjxdbenbG+5hAa9I6p3UDwWARcTkYnONngzf/O36m4uSe29UhOzJO4Zx+JaaS736
	 7PT6poGBCb1VYO8zwd3T73i465VR/PaMh5JfIyTqvPq0kH7LxKRJ6FHW2GJbYkCN/O
	 /ypSSkEhDuAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED9CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935419358.1615.3797812503955388749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b602c8b2ef84c46a83c2f381732af8e374c1590b75d574f8025e1b74a1b07fd
Date: Wed, 01 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759354193
