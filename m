Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D46126C18
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739591934; cv=none; b=gmxlt2UX7DqvIR0wA59V59G5+XqSqglvvi1/8JyzuktQhn18qenpy8wlPEn9sOXNJ3+14lmNtNMe/razIgG0qcJpC+9Pgf5VSN88Wo3xqDX3OuJoINVbJCxZ+2WlGbmHDdrXP8QpsVAMNOrPieBhkNvS/9jrtjXX1y/gxaYZ5Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739591934; c=relaxed/simple;
	bh=05AmwLNb1Ci1a6I0K2zgY8CxGPDNjHkReP7MnskPhtU=;
	h=To:Subject:From:Message-Id:Date; b=Jsk8t1UI3+bd+XHW+6JpkkIZvFDtA3NE9pXtEylAVxICnTNcWLyQ/En25hkAIyaJHOR/KfWX5nb9zjgfii2YxHzz5RFkk+16aQ1YHwok5rC2VmH6lAvfGVJlYMVRQop0Fw5kYIgmPJ1phOBqAAk2D7m1+xUS5fGhGJWrPXo6a6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg68+H1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg68+H1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7D5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739591933;
	bh=05AmwLNb1Ci1a6I0K2zgY8CxGPDNjHkReP7MnskPhtU=;
	h=To:Subject:From:Date:From;
	b=Jg68+H1On8aHxaTYsvmO9deWsUm0ahQH5lcBeroVtS03MS+S8ZjFoagSuqOR9rll4
	 jVu58lFXbDka52vbHDjPU2TgoireLVidZPaT3iYQvOb4ElTRxXOd2febo7Cu4bIQnG
	 7LnFZghrpLZK2wLNoYlhLeVPCF4kNkMX/LE7zhBGFTnOwg2cNP+FtIU0PXN0QHz2uK
	 ZxmSFNHYKD62ogxSQNPco0CHzKdXumwZ96RQsdFDShmp7C+B+0ldkuRfSRklI6HNvP
	 OhSTEJZX5l7dxr21+h+5hRJ57NyLCF9TtdE60pOyR6eqwk5grvN+gTaC/2IK71g5X/
	 +sFgz4ILoW2Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4431C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173959193364.19316.8933776228401285614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf5df2dc8a5ef9389e1ef7270a43ba04d554dd45b5fc9bf2737be502e496a77
Date: Sat, 15 Feb 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739591933
