Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0F644393
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725213954; cv=none; b=nZ2XLVCwAFRlo/eBBfWGPgO8Oz271aAh3xR31t/hx1sTx3swP8UqUuBeu61INUYtIp5ExzLncp5aa/3s4XRd/4Cau9mBk/GM2BbDgtDz2CrqKYVwlKIy0RyH0PHg6+J+bJ0OovTBh1bdC3Batx33AdCBoPxjrNTAI0DVhmaMMuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725213954; c=relaxed/simple;
	bh=WT5Vq7JxWWIzn+8KD0R8WdE4qp9Sd1QSL6lFMPIqkvI=;
	h=To:Subject:From:Message-Id:Date; b=W+PmPPTGGrcTKvE6U4m3hC04xQ+UHzhVZ8UaW5p56mcTgJHjJzy72VFY018r8pI2QJ/h+wvihd+wdxUobNIu707MECARAakv4fPpXSG3cN9w6ji7xTywI+ZQptG7TasoQhGo+uMo8it47P7os1yM0xrQqBhGECfI8SKVgG+P7Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA5R5kFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA5R5kFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57B2C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725213953;
	bh=WT5Vq7JxWWIzn+8KD0R8WdE4qp9Sd1QSL6lFMPIqkvI=;
	h=To:Subject:From:Date:From;
	b=kA5R5kFRlY55z2oddIMv4Zt6qSCFyY1VcTRYvmiv8bwd9W2pLRCLgEKnLoXBxsyjJ
	 pT3XmygjDlEMhMSPZBkAbvNv5xHc8bd4Gbmk5vwX79eQRDUmG5VoluP/ASg4tyOqiG
	 N9smFcdCq/6jCK03GbZsH5jezTgOSZdPjzvtZzJgBFxG9MUBuPmAzDXfsJ/nYEomju
	 2YPVYJAEtNe1nBd1CXY6/5y/318Pce4l6xi87LgH5RTk9dK2YCJcGWf5UBIzPfterd
	 3j9nUjqxTL4A2j4NyFbBFOIR/XAf3FYEM5jc9+LX8B/3ibgKUeUOC4pod49ylggoyt
	 mJqWL2NDCzpgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CEECD3420
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172521395371.7292.10120971507459728344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb2fdee58390f9b8384557207ba8f3a2a66559ba76c1e2b12d3a4835b0404d2
Date: Sun, 01 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725213953
