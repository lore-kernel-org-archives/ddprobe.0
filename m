Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FCF1A76BB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755878394; cv=none; b=SgYz2Cnv5DLlO24YXImqp+lroJVtEd2AnJmByXTul9dH2hWnv5QylwZQshhMIN0SWN2NHUNCP2Qksj2zNpa6Y1WsVpmFudAkNywqbSWQDcrxoHWj5ZEePDCSza64u2kjeHyTyf7H9ppnkb0OWk5LdOz0vaXNbnI1CDqnrQdrOHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755878394; c=relaxed/simple;
	bh=q/rPvccdwYvaKIJJUpWzg4RuE+2AAdE14f/IVCoSIe8=;
	h=To:Subject:From:Message-Id:Date; b=K8Xz8qtMyEpCB4V9GyImoNCoIedzShFX2nlwiIChBbmYO97GZm6q+GpZlR8lbyN5n4y8g9OK64k15pOCoqELWPdEFtqHL4jST4GnJvNVPv/kGtXaepzCPUikWAXlfT0ITnkkeaEqHvFEIP52PliCAyVF7xcmeaY2N1tys5k5vqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEPTHTq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEPTHTq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B0F2C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755878393;
	bh=q/rPvccdwYvaKIJJUpWzg4RuE+2AAdE14f/IVCoSIe8=;
	h=To:Subject:From:Date:From;
	b=FEPTHTq6cZAqzhPLPcOMq2PjRYbLVwYk/z8S8hdU0ERXD6wROKEZaDdS+1fXGzfMp
	 s/RTlvtBXz+ubF8JCZhvYQkolyD4KyOFGX18wHy9ZRU9Rf2cXqxo1tFa2mM0RKB4dK
	 F994pixNMB1CKDgd9vL9fZFvmlrEcrbvGhLhyZeVIcJgTOWD658F/HABEeajrd6pIT
	 k2OgdD6DncRfq9c+7LazfOWJVPypwhxvBUzBy0T3P97l/AFD/k9W5pb6NvZUE3y3G1
	 5LpxmCuZq2RAZbNH6AzAMKmbO1mQDP5StlYHXntJnJvM9Lqdyrm3QK0Bkn0Swt+dIv
	 e8rd6hT7HIkUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78FCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587839357.23674.327791696912580282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d958905efe0351d4a25961297bbe0f61949ffa0c596c3a4ca35ac50b59d960c
Date: Fri, 22 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755878393
