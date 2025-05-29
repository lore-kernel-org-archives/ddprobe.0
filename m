Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B33647
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748545795; cv=none; b=rOVRLJx/zOp+pOcmErUicu7L8CUJvD7HNTHnsONHByaIkviaOVfyM0M9p3EdNNwoJrw2Tc1pLiZYrvdSXLrhFdVpM6G9gl/8WUnBHB2KcTZbGltjiZSzA6tuKxIJyBeSwbcg1JrNqMifBcElXCzvLZ0IsMOVWiov3my8ML5L78I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748545795; c=relaxed/simple;
	bh=Lf1y5ypGUaWsIjU2mzIIoIxR3ILtyaKASTGXrDfB/+Q=;
	h=To:Subject:From:Message-Id:Date; b=FVDVjvZll/5vsALdtFEtlAbOhpLFpLotaAdMDLXaFKuGGRNXtBHetZAQjEP1C0ZJzM42CuRUkI8/tt/a86PeuynmNMD2mB8ki8pEmx8j5PemIVZ6mgBcrT7/a61MihD/dhC+sz4TPM7zRt7R8AeS9VFpk/bPdI0nvUcXPXHyK9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUn11mDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUn11mDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C85BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748545793;
	bh=Lf1y5ypGUaWsIjU2mzIIoIxR3ILtyaKASTGXrDfB/+Q=;
	h=To:Subject:From:Date:From;
	b=iUn11mDGHQLVTPu38YDE6uohwmJQyKfTu2ABgW+uV7BLPK+kgyWsG2rXsJckR/e2O
	 HwUzNKXOIw0vq+uMwvlbgSYU4tJP6GQUCJ6gPJw62djTYRvlx9RmkZU93NKSVhNXxJ
	 pUyVzLBEMFzDtckuqSHo/ukGI4nRLFnHwscC5WWXrGsl07aG1IVXqCDvaMvpNeLHEG
	 4ROx/G+h04WWrLYmc35XadLYJnHlt/L+cR0qtGMSuAZG8bKQIAN5e9M0f9c59UxE8q
	 T8OLiQ7l62dSwlSputaaVIkJAyt06yKNexEI9jqJF9zLQuuDI1y6pNXQWtQF6C/+oe
	 tVA0sm4y2ohbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E68CC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854579357.11126.6001223425874990016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33224855081cf2424adf9567f68932eb601e5e0b70625d6feb5f86765453ce50
Date: Thu, 29 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748545793
