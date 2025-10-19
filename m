Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24F2354AC1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760835593; cv=none; b=E3uvZoT1DpravAhLxtUczXDkxoZeJgiTfU5Uz+C3G/iCD68IBUUJ+ZP5sGAH0Rurw6Qr86EOz948q6CUQWfj/LokGjTx0ItwBcz5VsJ1im4u8a1QKMRyG4twk32kSKp3s3xUye0sCbcND8lHraseMKY46lNrfxZuzB51mn3B/5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760835593; c=relaxed/simple;
	bh=TlbBR6kvth++K0mitc2MyOLoXdmyq/S9HXXmDTbAvcU=;
	h=To:Subject:From:Message-Id:Date; b=YwAlCsQm97eNff+pN+sySpLDZnwVdigLK+fyi07lgtPSJOO11o4JVJqEYT6XLMnk62Vr/pYBr9V/DPgRw2MrUyrouGfKeZdSJLMIxUt22xf+uGIlLomHpmD22+DKtxSQoRvJf5QfNSGw3JVutGo6mvwM1912UHeBG9YiBVxhsR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRqTs9MA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRqTs9MA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5566C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760835593;
	bh=TlbBR6kvth++K0mitc2MyOLoXdmyq/S9HXXmDTbAvcU=;
	h=To:Subject:From:Date:From;
	b=cRqTs9MAG+NTf4dRB9qMLD4o5WdwM6fkauofmUM2x2RyVPSQk2KSm6DeaoXz4LDz+
	 kZV0Zsh/ZTNk44I+SUoDT3SL7ZcXZvRUfsz0hwRq03eSlgiNrOsNaN9qHyLht+7OQA
	 zeeLP78HMNlJP7jtuJ8nvYy4rb8yEuQSJMBE1V8/MLnJRmeOOFcNYPOnY50fp7mxrI
	 vvI/XcYPPLP03R9oEj9asOFy6As6+pk/gIGrqdebnJfskbLyEnc5z2cSjqxNQ5EgEz
	 163VcCYJyVJ57RujT8OfTpN5wxrZD4vZd4yPvKdWa29qAlsOZQBfpvxIvW6c4LBBSq
	 A1ZXu+7cMKc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91207CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083559358.13609.7579529113883925418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1556fd776d265c0f3882dc016c56d7985f8750284a40b2bfdbbdcce276dd9336
Date: Sun, 19 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760835593
