Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113EC19A
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707956897; cv=none; b=tk6oG+/p7i0lMziiz0QjFsHM9zM/brw766TLks0L8A90uJT/bEpmIT3igf1tv00kjC9zULRWRiKKUQd5ZLLVyRE5JJ2uZlFY162bzw5qMrkCiOuNvrdDNsO20nErbtOrzfHRFAIwWBWFuIUy2BwVcNTlL4I1/zYlsqqR9XSqoaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707956897; c=relaxed/simple;
	bh=AkcXg/HeFCI6xreXBb9vhZquKMkiZkIboQjibdlX+bI=;
	h=To:Subject:From:Message-Id:Date; b=bA6ZvE0Hu9G2C3DKho92oov6NDe1h25C3ojyoBjMxIb8UZNn+VsMK/XZ5iVy9qg8pPj1X6L36HnAp3h33zl+EUpSnweb2DfYJv4fwk6vES1sIM0ZwuZlbmOzrxAbBiATKbcg7OcnR4QPLFmH2n4Y5WllkMocj2LgWA/cXIcBOjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuk/NPpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuk/NPpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C29DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707956896;
	bh=AkcXg/HeFCI6xreXBb9vhZquKMkiZkIboQjibdlX+bI=;
	h=To:Subject:From:Date:From;
	b=uuk/NPpTKwpBx+/cpZeR15s5+umK0Lwd4NXQCPuRgW717feoVWAn4CZU5TW1+tebP
	 +NcsLnfWLtDFbnPos3OMMqwxMeRtoXL3TrqXLjdspVm1uAIQqdWpSi0lS29Qe9CERl
	 ekHVGz4W1WO2h+U6JRszsDS2IH1fSD7+fiYPKsdagNfihaGdlwmB4NyVqK6zxzCJuD
	 OfdN+hEVrKFxROnt3EuqzsT9YWyJhODnBqvPpsoZkhP7tSc320xNPocgtmLhVgabQo
	 h4wucYnM6gA7XpldSyLSkY6KMgLlNSCQekSM/cz+R3f1pU9rDahKdd5PXZmp4lRxuR
	 pEn1AjsuLXR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6283AC48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170795689638.25042.18031409900866909311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140b01940ad88180a68a107b1c34e9cec74ee40250697a053b7a00d69be89661
Date: Thu, 15 Feb 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707956896
