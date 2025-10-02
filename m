Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCBB23E35F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759414794; cv=none; b=rbbb9d6ZphIJ+CISY8gmcAQWb6jBS4lz2eCtDc1X5YvUzHt64SKeSf0Bn0J5PBx/kiYOCQS7S4BwPZSn6gq9XZzvyloX7mXh7LM/o2LvgxaYtqFIhNpOPVrg4Ah/ehRPvu75D7+0DFIlUIsLSb7/EuG2VvL2hh00rZHlIG47bfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759414794; c=relaxed/simple;
	bh=C/jX1N/ZBTgndREw8yXbqVv0pMSzWF8CrbBU2n1gBU0=;
	h=To:Subject:From:Message-Id:Date; b=IbYq9fbojoqG5RFmkWZUGESwJP4py0D7HoYIaLPlCmvhyfUXK2L6UI65dKhmZZSYBZuS/VBXHCa77jdlDA2Dq1K5DKYhNLJqS7AOd4gQosIJuDO5oZTKtDMdav+QAOV2kM4x0atfI+iOtFn8WinRlYwanAeOCA3d72BFMhlRkMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7tpC58y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7tpC58y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FCC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759414793;
	bh=C/jX1N/ZBTgndREw8yXbqVv0pMSzWF8CrbBU2n1gBU0=;
	h=To:Subject:From:Date:From;
	b=W7tpC58yo3N77ibq6A3boywroiRkyIGE0H9sVmx50rTaBfXAcXhqmaTAqQfvdrfKS
	 wzSt9P9+KMdTaEr8gxeQbhSf3ic94cVsuNXvpI1HNUHxo97dTRsiqkCcvv8PctVMga
	 xjakaoVV4geSL2/1cidehWFYJxjGb3znn3IqCGzkWcU/1Rd+j9qTxRaP6EZmNHP1LX
	 D/2J7phZfiklbW+iaigHcI0A+QWNocNVZOu4q29yVmPr3WtGzVd5SS5Bktos9C+hOv
	 pYP+/IxwsMGlFv1Fe4JtJxdcWLQcfJdTUyu95ENSK8AIYiahbJ6xXljvamZG7LbJIw
	 OMU0gqhqCF0Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955CECAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941479357.22291.1540570513763264297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c16bdb8a6a3793e20d577ac3f25f02daed91381a594c9e1c412b8019dc8cc4
Date: Thu, 02 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759414793
