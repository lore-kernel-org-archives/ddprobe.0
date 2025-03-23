Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09B913C8E8
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742749194; cv=none; b=K6r3YtxLH/9yerAYcrfyKpDWNIuQWJRVvcig/Igpr3TYNmJXJ3D9ldHKjgqMYoZBSECVb1WObBxUCOg75xtvQVhLoODWPg1IYBn4xXSSIQtOW1rEro/Eonae6f3W7W/pv6fct9NCdbB4yBT+ErIlg1XeGreYq5jPl+IaQ6BGQ8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742749194; c=relaxed/simple;
	bh=5TzSqqSDgIx4p8IAMEGnppuZDL0uHdGN8pmDMfhprNQ=;
	h=To:Subject:From:Message-Id:Date; b=cgeX4vgteQRCT2+MOQpSYRdLcLlywt9hYt1t9izundxQW3AEZP8aH/BgN/MiEeZUlhxiLmcPnMwi0tuNqgbCZZcVU3R8jKY5Sqi4XBRnhcHMsaI94aBBrAj0BdW//93r8wS6CA6Ugqp2HM/ZKqGCSeBy5tvQHbZxIryKQY5Kzks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BP3Hts1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BP3Hts1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA34C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742749193;
	bh=5TzSqqSDgIx4p8IAMEGnppuZDL0uHdGN8pmDMfhprNQ=;
	h=To:Subject:From:Date:From;
	b=BP3Hts1m8z8YFGc9Q1Uw26UrEbJ3wYMW0/T5OD4wcTHD7M/gLXBnhbbM95VT50jbD
	 5Pgw4X8vXFhaYHX0oA59vGTFdoAI/brb0B+YX7qSK/Qi819nQyOrtnxpF1Y/7IyGIu
	 L5E+FIuLSIKLqnML+h9oVCawg7YBd2ZR7Xgqc3T7WtUup8Colpa+YphBKMgNgQrP29
	 vWBjjalQFH4DiuPym0oH+XOo9XRQP6sM+a6AOx5IkPuS6KLlF+sKCdls+gMuDk4CHJ
	 ic5nsvIVh3wVXkCRbWTyhnAJQC6GiXSD8czCxW5QtXq5qaRgRUnxbEU2QpHMTFyLEJ
	 zSvJ+8VFAOghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AD3C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274919360.16527.4329397100795275322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c4d9a0396fd463fc7941fd8a613414e65765e4eac1ff00daa745966aa22c24
Date: Sun, 23 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742749193
