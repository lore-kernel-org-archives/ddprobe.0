Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1990F1FC8
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786406434; cv=none; b=VQ6vVucg/ki9iYXBczXXFWyeGDM/mGaElB8h4ObrkhCg7RdaBuNUsSAZIwoF3Vd5JCijUFI6HWP8ozer3OyU4xlPG4DJPXHDEmhFWbCtdUD6rRUlaymRaO8HOUHm/jObEHvcrRy9IeiJGz72lJZ8Q3PWNUvIBDdn4M86avXwUyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786406434; c=relaxed/simple;
	bh=IHBWt1Bg21j+IYuPyWgtm4COsO9mRCC7pxCpAP0QRhY=;
	h=To:Subject:From:Message-Id:Date; b=DLIPvGhemynz6Ei0YhK/nkbWoAzx00KLWvticL7dGAC/IHZQi9UAWYxwemfWASUup7nFHFF3gQ1OOo+xAz3xi7RUMCvDU3u+ZywVH0ZwRj1G/uqSSNf2z879Z0kvsr3+twIEe/AHfSJYUalJMVFYvfZq1jp6ozBdMWbeigCPLC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVrxAakf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVrxAakf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE342C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786406433;
	bh=IHBWt1Bg21j+IYuPyWgtm4COsO9mRCC7pxCpAP0QRhY=;
	h=To:Subject:From:Date:From;
	b=BVrxAakftTfxBoSv3DZwSpns8JwR2ucbVwCVBSpd8Q7hFvtmM3dHt7DgaIhnbYVVV
	 3kLAUuZPan88xG0sS4DXDB2kucdcIa1lX9VFgHrhW+1xjKZruM87JJg9s32TnQ2alW
	 gV9Eql8VMXJ680EbQ/PiFMBIO3aBgcXR+P95WNyzyTvhVhDF6BvStleAXRqrqfOIAB
	 yjxqFzCYXzlcL2/CK8ltVKl99RSHTKvkVfAQ/Cx+qj0G4xEqzpoztB83tx+sCdC36m
	 FXEgwWDzMAc3nwMzai4qPhXoIRmbyFb6w/z4M8v0zbYy/OrGxutvPJ+6qSW/W3ZPPd
	 8h/HHYD3qQkOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB355C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640643368.31726.7884947817617220379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ee4dfd9d0cc38798bef38d1d193fb280f3b316d724fd123c9945278e1335b1
Date: Tue, 11 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786406433
