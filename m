Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E2B3CC9F0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776881254; cv=none; b=Ra4gAqvOIG9OH1c9QPpIDth6nZsET3ldlX873Ru9KIaOS+LP9AJYBCTmh1JflQfm6xDub4fa/J4RSUk6jF6xglkl+il9QxNYzl0OkSLdCFZuc8ir8AFo1lWU1Na/wSIIrEmfLEmzmMX1Z1o/VPfE3KBdmsLDI+h3XOPsjLyKERM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776881254; c=relaxed/simple;
	bh=vbcSNcuVY4FEq2dzfSZ6MkttZoaWEHf2MoXuZ5pFKn8=;
	h=To:Subject:From:Message-Id:Date; b=VZv/O/SoRgVTePa9izOfd61WKNCmzYLLS8uPTi0YbMM6yd8NzrZSGUUze8tk1uKpjr0MwmGBBcRGuq8FRRiF2+vRodJWgmWxlToTycGZxglWHHaDPnoHIoJVs1EV8NwS0mq7BfLZRWVv6Em+87kA3JdHBDJG+NaJKMMeN0xXXEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXo2ne8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXo2ne8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EE5C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776881253;
	bh=vbcSNcuVY4FEq2dzfSZ6MkttZoaWEHf2MoXuZ5pFKn8=;
	h=To:Subject:From:Date:From;
	b=BXo2ne8HNNXUi8WWhKYoTmNGRh47kngZCJrPmlQ0msULpKi9AtWU8wdpiZ997o33r
	 qrNd+KY8+xIh/30hEOvBd1gce9Qd29EvLa3Jr7xrpQqDWxhjIsZH31ldkiA6UBaVAV
	 OHBWc68tU4jw/905rOnRk1x8Bh4X6QhGagNCt2fWpM8ga1UxDtFwelAVCQGv6eLocN
	 qGH0CZC3v5KhlKTDCUsgZ4X6iNe3BpM6PbGqudxAN4irmnNU+1ako4U4GKkZRk1Zuj
	 IHluLg8e7wG3R5vfa7Vme8Er/9XcSocjq6Zb8FgcaEyoKUZX5tLK8zktHJrSVlZPUj
	 MKk6KzykzEyng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1F2FA1FDC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688125368.3818.8695839879933421676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efc956f7076239d5fec70d9824b0c9b71d5617bd3b93d16171249456ff3d808
Date: Wed, 22 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776881253
