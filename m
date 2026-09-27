Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE595695
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790468434; cv=none; b=BASnZ+ju8+xuWTVmEE9ViZ/MNyih37rfLL0pxsIWRfKKoJY7vRj4eV1pwWwmxnU7BjFM+244DwF3VRnRrpdcxyYw1Rmrvt6TVhKkkfAKX7dvsQaFZlEg724dJtt1b7bPYIgH5rDJddGbFAhSi3TxYUX50wmTzVOUa3mZVO2WjYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790468434; c=relaxed/simple;
	bh=0w0TEiU310diLWo/kCTnNEAA5xoA602l14UKger/d0U=;
	h=To:Subject:From:Message-Id:Date; b=EbRZpZf7tyPSPLV5TnpIus5NVEOm7B7Gw37X0ChU1Ym5ReIklZOll8txe0J/6/FDwWuwjgA12j5lPF/dQniHbynqhxUf/tMRb794y7n32i0JuN9ayvqChjk2SWla2DW+kmqLOYk2azYHwscc8YqJ5d2K0sgd/ptu0LbMvrxPLvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pcqxhv6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pcqxhv6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F88C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790468433;
	bh=0w0TEiU310diLWo/kCTnNEAA5xoA602l14UKger/d0U=;
	h=To:Subject:From:Date:From;
	b=Pcqxhv6PncDxTuR4kY6qFcbsuDnFxXGi9L+25bE7jfWPYg2zhjXSZSPDMUgW1xfaO
	 i279Uv0q6QXXb28ubf26ENNzsUbqMWDA9x1n4UBl3k/rMGI0d5EX0x9KlC/FDcpk6h
	 SvhLE+wK94Z242sT3v/cqUJLeDXuJ3cwbVjo6Caml3GgCOjxLDdYJpodAj8QJPE8gV
	 PCae2XtSuGFegimFTJx6Xg7imk1OBhhN2FOuCj1NlWLKVVRvyHdqO/UXO7O9QM4B7+
	 Gno+sbLdirwNXO4/LI2OALF6DRU/SYYsjpesHU4XMa2C7E0rCIXb7ye66UVLcfTUfx
	 AbYye8+kJLcMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD18BC98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046843368.22139.10968062947866522327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdeac221ff7f19df70595dbd9a3c17a8247f27a1da1373cbe3d4225d9bd04734
Date: Sun, 27 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790468433
