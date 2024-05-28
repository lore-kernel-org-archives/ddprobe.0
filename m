Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503D674E11
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716901463; cv=none; b=Iu63JKs95Uda33gnbYKvxcnKXUtcFJFjPx+3MBFewLA0uD3Qx9/4ZYwQJOjrMEHzENwy/AmltCIr3DX6oWb9t2xi60q0epaoDZTWArmmo4lTLs3IB3KaXCWaHEB3xTutp83LX/0QDODBGsJE37y2hXYjEdprCXebcY19raG8saI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716901463; c=relaxed/simple;
	bh=kDMUFwSc2RAO6LxZyV1lIwpix+xp2JhrpjXV2VIYXLA=;
	h=To:Subject:From:Message-Id:Date; b=J8uNw8NXPOt2PrGAzZ7JfFUvQWxMu4/Te3xCJBNZ2P2U816DVyYGw4dt825dLnzJcp8JHLoL4iKgBz5OvoEZ7WtcaYsPUkPcQz22mBZ2OML1mt0S2jaPjfeNKgetcpfUK5blbSHkTv6y9Yw4duC+h13k4SAWyLet1v1df5iCStE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8m4FLzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8m4FLzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3C1C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716901462;
	bh=kDMUFwSc2RAO6LxZyV1lIwpix+xp2JhrpjXV2VIYXLA=;
	h=To:Subject:From:Date:From;
	b=j8m4FLzOFlAADMh2QeCa3jWGaiEJLSiRUssPa5rNDuomfSEdx4YknlXgId3cjR7gx
	 4+rF1crfKs+l9R7t8tp+xOfPb43joaFJQeR5iCgpbOVym1F89w8RKcL046VIdQ4prV
	 nhwoztxjzEAYDrWSp8um/3ZPRTiciqK6iP06cAt0zpH5zUbbJpXvNSsa9ebsD+q0WW
	 dX4B7l+H00o2Rt5XypZLq/vFhLeUfYPN0ZeepzQlXmZFV2aDJeZQDMzj/vtUN4BBTb
	 POhAaik4Vt1kgGkOJnrE3I73Z6LHTT8YA7x/CqxBq0ShFbmt4xii8eNS9+POSGdvg9
	 vUrt14dAUj5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC4DC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690146275.4110.13540608112071630635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74cd629b0d798f38f8e4caf395b192e00ac07dc4ad20e66041c322aa37f12a5
Date: Tue, 28 May 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716901462
