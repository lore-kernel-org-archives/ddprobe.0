Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D32A223DFF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780956274; cv=none; b=DoGNQAlg6SIyetP9QTyjb/5vIQ23jx3NTU2VmKM49haGUS5atkXfNZ7FUedMEcN3KpXKAEd8PAWXM+EHcmwSvkhQrBMZAPh4QdXnGNn+aJo0Lkw1V1qfVIZFE8e4ZFwDnXZSxtNnmVFth68lebfx2cYVNFGnjz0ajGRVN4JkmOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780956274; c=relaxed/simple;
	bh=k3QChGB7H+15uZChxPcQzwPUr8uhllyS9JXRkDg3yfI=;
	h=To:Subject:From:Message-Id:Date; b=AlpOrXCDl7CRgS1mgm6R2O1gr+3gEgbPAJiQ0MLIgKsly+Od2IS0L3oMdmFWvpGw8RbgoapzHNc+kodCuyyYIF1BtyYWekNFeHslutPf0fwxJAjJUJZ5/y70LhGG+fhXO/bRdZoAh8KP5CtbRFMSXakuZnUcaLZuLAyaXFKV3FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8gGg1JQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8gGg1JQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C86C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780956273;
	bh=k3QChGB7H+15uZChxPcQzwPUr8uhllyS9JXRkDg3yfI=;
	h=To:Subject:From:Date:From;
	b=s8gGg1JQJcCT0tW32YsMago/wmyc0a6XJpLRHSnsQUHDDxOoHLzS5XBbq9u4/tc1v
	 Ml1qpJAtugmTqODIa5aJmvjOh6K7DxQo5mpdRx9Pi+ACUu6AnKhOrWsEcunExaWkow
	 X8Z4u9D1AXIgowSgPh8FxF2gPFcpIKEhScoW9CHV+XvrO3kDY6j0ngN1RX9U8TsgmR
	 v3EK8TT/9omHClk7i9skigriJT1nlSUG9+1vNyn2XNUPLmtsoHmjiHX8yBNp+f5kHp
	 HJZV6pgGncSF5ltgiGHFmaS0u07vauGCQAH1fHQ9mFWh6XIzwPcQGd68Vr/FizkuoV
	 wNXxaLufGHcNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CB3CD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095627372.28021.16918828557815602990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e520b2252e6a7b6f500e6a3df468038c442cefaf015b36df0f94641ce8b8740
Date: Mon, 08 Jun 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780956273
