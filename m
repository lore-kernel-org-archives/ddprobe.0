Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CE81E4A9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747461594; cv=none; b=Vm85TZhVan14Nv2N3LSj40ENlAqDENVOZ82h5P7TPmBCSYnJDGnMbvc9ZeEMlWziEWx//NDjY+mPhZB/27DvFEy+eHOEOykA/5aPCQoevlbgeOViehvWVbpGKrg7toEDEAmiVV03SQnabttA+m5inKG5GdDoIBnp4bupRxryJEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747461594; c=relaxed/simple;
	bh=7pBVuMTwmOhHLBZpIjkaTix5RXOtl76gd6iUkUQo8Ow=;
	h=To:Subject:From:Message-Id:Date; b=qoqQeUYzkvqsMXxS0Fa77AsqJBDG77UPOSdq15Sb1B3GeBaW/5IeXlhe/6nHL5BFoJFlZ1AJnIpjKSDB7o88TPh/ZOcEI+YJZgAVLfYmwm0HdKkkMc9Nr65e8b+sA5TuP09SOmmKQ5jMkdS6cIDDhxspYoRheQ5cqY6ZLlOHB0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq7JFJRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq7JFJRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6300C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747461593;
	bh=7pBVuMTwmOhHLBZpIjkaTix5RXOtl76gd6iUkUQo8Ow=;
	h=To:Subject:From:Date:From;
	b=lq7JFJRkSo7dgc7ljriOfrm6gT1WAGNworSnRWT2493BgO5VWSk/qsmGRIifU8l9L
	 kmbqEflu0y/QsMKd6e60+cq/7qlJc/oRLPeJ+8L9I0fQry1enLl/O5CWmis0NkO8Vl
	 aS5nasqA6YpeEDh3prK2GAKBeVfRWbEeYAn/WKQGuaFknhT4cj2nYixSe7d15iFKxV
	 ZD3/gNHBQAiP8aVGoqVwfMKs5wLSXHZWdC02nsP/JEkCY26Mx/YSX7GxiW7cqc78Wh
	 MzdAwBo5XaAo+4jVGXsx8XExKYsrgCIjL2hIlwfBBjYBrJ+FrFVv3CD995cLxfkLL+
	 o0oh3VXbc9XVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946ABC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746159358.18920.4308463116370053182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97bc01cc7ed2982276a36190e2716eba5277b0a8d45a2d7d5792eb2d3a82518
Date: Sat, 17 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747461593
