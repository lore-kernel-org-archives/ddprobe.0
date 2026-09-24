Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FD24AC166
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790269834; cv=none; b=YziHAJlTGm26A7l9boFXDL8f5nSCjm5h4cSJ5SFQHwFW5q1qQUcPUo6W63xvqqwz0Q2hI1o8/lbdVgb14mtLAjx0apd4t5dhGPIbuwBV/x4LhkXh3HQ+WY5+WeUms/Pgo/Q4LaZOINF5ziXIU4U519FTQ7ohhqsKE+53soRMrMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790269834; c=relaxed/simple;
	bh=30K08Pgtu5+sE+F83WXDaBdvvSC5F34Vf6Nc98KzOWc=;
	h=To:Subject:From:Message-Id:Date; b=RELmjXx5vWmCN3o7xFH75NY2YieC2jvJLuCLArSeoxtYWBF+4sVvfcy/+Zyt53POAMKIYmoXcGJcoe8u/aIfGGyBNC6JJe2eN4PmDLTw1MdUZM0FJuJbVte/fNk1hXfaqwTFEaJA7vrEs0f40wZU+ucUMHN8Zyxbz+oATc5/k7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnmCaPxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnmCaPxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4316C2BCFA
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790269833;
	bh=30K08Pgtu5+sE+F83WXDaBdvvSC5F34Vf6Nc98KzOWc=;
	h=To:Subject:From:Date:From;
	b=JnmCaPxGwPCG+Jt9AYah+0D5cnsFlLKSGp5g7NAGLxLb4Puzvl48PiTk7kzp5AP94
	 tsW99ZnKfjLEC8Gj6Q4ig24jUpFr4D7qMN57uUjCsL2d4vR4BG0jx5Tp/Wtp+IWEr3
	 7L5OlwzNXhIzqKl6rC73LetDYVQhWUp1ImM5WQDCn5Y/lIfne96+1VDFOGYMV6xJ3Z
	 ciJZf8+69tf6GXEVK2miL8Agl8dqUA23gWM9yvHciOyzflv5i/NKSOhJ4PDmUM4KQk
	 RAumXP6PsVGVw9+vb+beg2Cx0RWQqWEkoVT1GpsPehlr+t3FfSexE0soB2ALNyBzOX
	 wcepE/8KlLjvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEC3C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026983370.30769.3172655655545015398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633b3ce07e954ba279ab137740df45551ebafe88117da28fd10a72dfe9cb5adc
Date: Thu, 24 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790269833
