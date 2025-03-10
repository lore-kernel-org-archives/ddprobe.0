Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B881D514E
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741643334; cv=none; b=stvH13vWcdV+9T0IUf2EHIy5/y74ycko5yFZNa0pbZl9uJd1yArxRYUJw7b4T6kaX3a3RNqOqJPRhG4rFRUUD6/m0Vd+lWH+JI0DnmzCFspOgV15lirbrS45WrsUunMk4V4MDSXJCR+IryjXXuD3SXIsQ9zjU3flrvq+lIxmKIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741643334; c=relaxed/simple;
	bh=aWlmqpllmH6dGaR0Bf8OzmaQz68N2pAG0ZfyX7F3jpY=;
	h=To:Subject:From:Message-Id:Date; b=iVeFsPeQzLCZ5TF3jZf361MIiT4fe0cBa9hm4LS6guhwcONkkXAYY6cTQWy/qe4nJcajXGbRxK+XNYyGHF1MG0bKrth03oL8K2oGl2+CIlpQhqrdFfAAt97EkcT1UIoRmOWCtfHAyvaL+59P1n2PemxBTCQuqj7hsrAc2eyiMCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha1Bzc18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha1Bzc18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D71C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741643333;
	bh=aWlmqpllmH6dGaR0Bf8OzmaQz68N2pAG0ZfyX7F3jpY=;
	h=To:Subject:From:Date:From;
	b=ha1Bzc18gKD2ItX/KlXAVFBm70qX/pJqSxD5W+MSv/+DfNiiBaHZhfOpelqQD8oih
	 AzgKCrvqU2UPVrNw98HEAwoSMyjIn39LD+zHsKP/CKyxEhrEWMwCbVQ+k4HW0ubBRb
	 7gk6AGkH5RZk5PenpJH3zx7ksr/af0gY1jxf0lTkVA/L2hmkyrv3i9VCcM7TPSdK+3
	 kYar8TOydCMjfe+I/9m3CB4aEZn+LHMIjl8IRZ/EW1bP7eZqflmF/t9SF4JIcWRIAb
	 f6YtPHj5JIFKiCayVa0t4KVY9bJTaSmpktscfacZALGMLkojbz1UJGESxdj8S3L1fs
	 pujRzyzz0tzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F94C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174164333365.28136.8335767039514473888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb1a66c8e610b80d72d26f9f2ecf36c8bd9b419103057e99b39dc9b4640932c
Date: Mon, 10 Mar 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741643333
