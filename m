Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA924C81
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759265994; cv=none; b=Nw/qZBMusXd+TJO4hwKjaGjmwSUpaaYHZMrnz4dzyG7B/joySLVwEzgI+11LinUH/hxzVnS/cQ1B89WIw0D071KFcNkK5VRdLpynaIU7QRevFSHNyK3hhOW55CHpfQR29mVPOw9z9alxuHlZDrih1u7DzD4URM10mf3o1Ep0t38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759265994; c=relaxed/simple;
	bh=nGHrOw4us2k/NHSzici62JiEnJ0PHqpAqoGLsFZGCU0=;
	h=To:Subject:From:Message-Id:Date; b=F9QagOxXSidi7VQVcJ32Trd1C6ObRnC3uM71aR5akYJ37JtxBgKkr0ORGe5ENXK/Tu+LoAl/yqrN498sW+s+NvIPxBwGshVqLCYNAeR2+yWcmW/9O9gAgjbE256oplOulhe3UfazKKLfv76G0azBgZSYBr0cpxSCUmhDY/X/mu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY6XRu7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY6XRu7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6652C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759265993;
	bh=nGHrOw4us2k/NHSzici62JiEnJ0PHqpAqoGLsFZGCU0=;
	h=To:Subject:From:Date:From;
	b=MY6XRu7MS9OatXC1SAmpI1fzawyBqGMDwlW12mUSid4DCUEeOh7r/SaDcNFPBqo7U
	 uSGP5Hv0RBIgue9Lc9nm5IIsLr94rXIbfe52+LVDQ9vyhx4s/zS5S+gW6/d9gkzWPa
	 lBv/IjghhTaElqHfWqw4WbQHB12gZbhwwSoxVvtPfSk0XJUkuBY4t03c8qFCkvwody
	 sioMnr7BKdS7eqIcLuqvaUiI4ru5w26/Aa7kFpSVR6YksrBA8BufbHdTPMRVzdsYUt
	 44q6sXKvfNKnh0dkdedbicZGSP0jJja/eH3Mue+vEBSWpSe1O37YkuL+XFr36oBfvK
	 Xq0zEjOgleoVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9348FCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926599358.31128.12584460818930725098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c262d679cad91e53b11adadf516bed3c7c062988695e966a7b39611db71b730
Date: Tue, 30 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759265993
