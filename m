Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151E31DE4FB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766311434; cv=none; b=Vs3PPzgHCFfVb5Vq/O+mwz9bE3DFpxazc8bSM3ECsqbZktodcvRsi3jIkbE5hwYUiHH+HotoomcG2TVagUYKGbE05mB/gtGclOAgyS/qUHc01xcjmkIbjFbBRM18aKtE/D//NmLjwAhxegqRS2EdulO8YUhXDFCzn5p5T4j+2K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766311434; c=relaxed/simple;
	bh=EGgNcup5ASZKsX1+03Y+WtLNFx5FvWeYiHUQNfL5F7s=;
	h=To:Subject:From:Message-Id:Date; b=RA3HxRtlXc3889EGDCa9AHWABFYZxtnJ9k8029ylk35V/V28PfQlzVYSJRwCV6+AWwt/wr5cKEOTQ0meBIyLklUowXDQ47hi1CJFw5FbP4uneN6ew5Llth++mn9RS+7QMtsoPfKHlX5RY8yZXa2WlcoDTXrIisPrfJmXiIyair4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNRswuxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNRswuxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48F2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766311433;
	bh=EGgNcup5ASZKsX1+03Y+WtLNFx5FvWeYiHUQNfL5F7s=;
	h=To:Subject:From:Date:From;
	b=qNRswuxgk5tqjBuOZrkz/O9ab+TkExSu24/3N8gC7Hruf6M+HlL7i/MjR3rYuiV72
	 oMM+hSBE0F3mhsKnPg7sLZsfPNd0cDGgjctnSx+piHVSKNnGOsdddnkdsyET1c+vHR
	 +1RsYyNwkhYbQZobYcI8mN8kNZcTy6g7CAB2py9qu0XDSNxX8TqAnfHxVsF6vnIelu
	 CQU0b2jTIDABo7aW1e3FfCXvxdJ7OBoVBGW8MT9R21UcjNInsQkeTtrBT7yBmQ6qcF
	 Oz9nJd5FkL7MlMgGCyChN+Pcjp2lmmx7V1jWm+oeaIvI6SH13Ql4etCM3PRI6J5Pis
	 HOfUja+b4mG8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94750D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631143357.13606.17249710045793372659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8795bde6e0235505748671719ba0f0bf46eda466de62dc77ca5c96273586bf
Date: Sun, 21 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766311433
