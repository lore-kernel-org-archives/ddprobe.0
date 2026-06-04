Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467151D7E41
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780614274; cv=none; b=OXjYj5ycj9h8p0+RqiWkSQd/QE966GtS5AkUuoRS1k9IsstIJTDmUcAhzenBMx9zhmFQPg4hfS4YulFZ8Gidi492Vy4uj7OEnbgvZXMg9rVvWf7yfkgjfYeRxfILlUEuL/5mUovmNVU5TWsPTXT5S2WPj3Pu8paHK+b3xqQy9r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780614274; c=relaxed/simple;
	bh=8eqhgPKeuEA5sqy8Bov6tW/SBIxJbRWJs5c9YKZT8vU=;
	h=To:Subject:From:Message-Id:Date; b=l2cFdNG2Av/SCdApCgB0q8XZbcX4+bZ/6/slfk1f5th9IVRiQLYeeuU2vYslWhnEpm4J8+vxCcATyT7R8lgg7oGDszRT0+6tJk/meb0MVRmdTQtkJPr91MpHUGNgsPyQU2gsMlBFGVuJr/712OJfJXdHCj3e+WNifcz2SrDLw4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZBA7TVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZBA7TVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CBFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780614273;
	bh=8eqhgPKeuEA5sqy8Bov6tW/SBIxJbRWJs5c9YKZT8vU=;
	h=To:Subject:From:Date:From;
	b=IZBA7TVzCzICpZZg7pYyfEQy81I+Q9DtBgbUrQRv/kOe710NAf8/CMwCRZRridKeo
	 svlAdwFi48IRU5bcZ5Xo0qaq5ftP5vHmdlcyq7VZiMpoI3ZdFLlkmrKqXvvA06VyV3
	 Idv5h2N4jGmkSaNnULOUj4NmNQ5CPvV2M5y0ViMxtDAQVSItqG90aVMZ6CRwFlJVvK
	 mW47xJj6Gb1Phhql2R42tEoQ4biG1iHWeDDYHc0WKRW8OVVvBdp5y4nEAJVmfqJOkF
	 2Qz2lPfdWC4NHVLVkDMMV7OPsi47o6Q+TMpU9qClUJFsNkLtrt8Z4iK3ozSPNFpekA
	 lPSELj4q3K2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE96CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061427373.27238.15879652517146734538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f697e83f667a315a219a5f94a2c971e35c8476a695883321f6dc6bcef68ab5d5
Date: Thu, 04 Jun 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780614273
