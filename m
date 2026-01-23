Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13ED1E89C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769187834; cv=none; b=CKHQaCeIWd2r8BLEgtjbuk9mgb+5/WSBl3wtp63DQhSslDcpCAYoFhNia0AoTFDKHPAFnYFCNHimLgv5u830ikOBsEh7I8VtlQGIAM0tjdWaNk5V5E41D+cJKblebuBzRTuPLcEeJBp/qEjfQHJYil/Pgg3Zc0RFNuTMQXQvYiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769187834; c=relaxed/simple;
	bh=n/ry+dcqGoAbFYkJ343mnX/DM7vdKGxRlvVKND77hDM=;
	h=To:Subject:From:Message-Id:Date; b=TF0DqxxkatKXwpL3Ny/RG5U6FDGQej0+Ga6hQe/ovLN4pwHk7ylRGs1DCfdrq+8UNYBrz+IM4F//88/qu7eYjx0X/TGhiMMFdQzbHKHMrz1/JVZN1IlGsamb71g2TpCkF7NyrBloyjBfI3zWsiqCiY7ZVdJTiw3IyEtUIZFCq+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjfdHX73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjfdHX73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB2EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769187833;
	bh=n/ry+dcqGoAbFYkJ343mnX/DM7vdKGxRlvVKND77hDM=;
	h=To:Subject:From:Date:From;
	b=RjfdHX73CBBfWx/00fr2jmBW3PCKlDwpKMO8cZfOYHoS25P3+SNX/iJJO1riv6073
	 oIDz4Js1EDBAXHJndQ87i6mSx3jwTSjNWZEnRkfEb29DRBO7kiMSA2gBuJtD8QFV3W
	 tM7MyVS8ceXyzDDjX5hIhXQb8NAiWcxQeGQE3VFTPAzjnmg6b+isS8w7+koYBUUl7O
	 x5pFThrU/2D1W9DZUmnO8+5VAuGoIU1Bg854SgM1vaxj0B4pPCajezfa7T6wePMcNp
	 0kQ0UhlCX4jTIcq5kUm/Rqtdvk3Ux5pLTxfxVHzQ6Y927SrmEXJwg65wmJeX91JJIF
	 j447M/nLRsckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EDD7788E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918783357.22650.1348611781093494157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c1f912ede09817284f6f88087035c3b4d5b44638f41420682df9b85bc3b00f
Date: Fri, 23 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769187833
