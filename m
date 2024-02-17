Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B341CAB3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708156097; cv=none; b=MD7cteWkPrimknWEgMMD5hXEk+iqjKDb9CbMo4KHTZu6j/aNw7B/ltGAA/vwuBFT7geirCoUgXo6kZmm0y/fCIIR0ap6pC/RSAv0NzS3OTWgLZaUzgK/L4KBXNxBGM0a83enn6MixADzmKGVIu2ge0U7rH0Fm6y3BeDozdSKIF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708156097; c=relaxed/simple;
	bh=GWFVznOwPsfkY/BDSEQZf125hYv3/cufqhYgPFh20cg=;
	h=To:Subject:From:Message-Id:Date; b=SPtmiZOSfBywj8BndHQ+WwpuHbUXa7JUW4+3UPvFuC+N6DqClFPIm5lVVLUydqcYnIo8p01SIOLkZo2f84Cb7XgfU7m3QfKsye93M7n7seR4+QOMEVTr9QyStAbyAYLVVkY9Tp8zSx1wMupo5dLhdHPLa1jClcxMLYRSzMRrsuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsKj0BmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsKj0BmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 840DAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708156096;
	bh=GWFVznOwPsfkY/BDSEQZf125hYv3/cufqhYgPFh20cg=;
	h=To:Subject:From:Date:From;
	b=IsKj0BmBpQd2FEs4PI4kIsR0C6+W8DGV6tzS7BuGmv/GiAI+Otpcj16ukRbUVCcP9
	 da23jAWZtTo5PzRzJLOA3DuoKgQH5wB07kAZcudD/npkFX7vos39VDwgeQt+baAgIS
	 dyfxco7d69voBe+gyd5m+gFBOeH3qpwYofj51Yj/NU562aPBGrK2wS0Me3J0oVgBAP
	 ZWaeaPtiAk7SmEjAOH5hL/MKJKD6UVitiplFsXLK34qUddYTA72H0sa3+f7EiYLN6G
	 iCmxXdspZecz7hKAOV6ltu09PicGIDA/Xz8IDV1Jx1laLbdurIdVentbqpBJ4Otqui
	 +HKbAttKnnzRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D96C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170815609639.27271.12283344685903173017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba40bdc24ed6e8d2a654d446cac09b10db4c4327d724dd1f72fa2f2b3641f7a1
Date: Sat, 17 Feb 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708156096
