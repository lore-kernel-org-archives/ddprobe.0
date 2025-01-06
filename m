Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268C42AD16
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736155554; cv=none; b=ihzeE0fNNdpkvx5gELVO/6rZTL57BBssPdk8EyGLe4JfLoD5nRX/3oXhPBSBFT2q+ILwcq0BCyydCOpVP4p0cGckEBZGX1fUZImnOUzZETbyTX0yns0RHBaqSL7NouAI9VbYY5ZFUiiCeOs/DQu2vrwiBUczT77JLOZGzNEz+xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736155554; c=relaxed/simple;
	bh=mIBvkN7OpTeZpDE4cyAhxGRxE85Kts2MVAAROAMFvjg=;
	h=To:Subject:From:Message-Id:Date; b=lm8BKnj3SyYk4r0tSrQPYTy9KXQQhK4XewvHEdI+ilIylDAduFwydzbEapu/ZqL/78HCNtf9aeDfIywVyCK08PeGl5osg60KK6L3i1NJva1ke1IZMgxnH9SomF4qf++XdVRVQ8j7U6lpN8JZjkU1+p1AoQTblKekdtOuzVoNhro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StS+lYgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StS+lYgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE927C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736155553;
	bh=mIBvkN7OpTeZpDE4cyAhxGRxE85Kts2MVAAROAMFvjg=;
	h=To:Subject:From:Date:From;
	b=StS+lYgw9Rhx57z4+x73CYK2yJsJLnai+4HB5zlY2gce3Fd3fTWa7AS+SzXclBMcd
	 V6WnuYrzgLsz1Hw1RzqPtlwpwfWscqj/we5BZZ8ddGk1YapCpxIH4WAla+X0/qIuyN
	 TIOxTUAltl4QS/i/fN9MpKQGvMWcKEjq6Y1t0kx3xqJp9hL6MYL4FEES722sm6TaVq
	 NVFrM8ScQQ34Q90ktXEgkLmO9hg1FNBcksmTzTAdFExifINnCCtfCy8JJq5hgDYf9a
	 JDE/4fCEt0XWqMikPuaV8cZafRVUFzOBYbzaztxVPIpmpdw2Ig3VrjXvxTa7xMivst
	 CYZgPr3vbMw2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A1E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615555358.6862.15460043782340000033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d6222301d8595b88eabc367dad3726e89f2a59adc398a35bde552a09efa0a9
Date: Mon, 06 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736155553
