Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426B11A08CB
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718709563; cv=none; b=BP8quRH2J+ifxHTDpRF8MAOdPDTUAZmqQ6TjoJVVqXiYmZEHYUWn0kK7OzjdRVdKf7w0XapLvRsOj8mIrgocXfAU0SmLOq5/KbPIjV9sqaPo+sP1h4jbohUCf5a8Pe/q29+8L2+KlP1kNOKeo8FX/4c9dADqKQUqW3j6vwG3fQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718709563; c=relaxed/simple;
	bh=c9bffdaKtZDML/lb4ad+RdGlZH+kl3e4WWvep2PQwfE=;
	h=To:Subject:From:Message-Id:Date; b=AG6lOEp3Ghgva2YL3863f5WFdbD7trc40WGynd710xZHOC2t9EKIejMG+T2Ti5T53MHURl2IWu88PPqvT1feCCYpAjGzTCGfwOFn+T+yC6akcuO5vFCfT2ue9HQ3EepvwGmgFugktU8B7oHKeLYNQHaolVFdilydM8Pu1SCRRqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrsQw6GZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrsQw6GZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20EEC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718709562;
	bh=c9bffdaKtZDML/lb4ad+RdGlZH+kl3e4WWvep2PQwfE=;
	h=To:Subject:From:Date:From;
	b=VrsQw6GZSDWUUgIx6D2qfuWxXiBL02IscyXFh2eg3FrP7ap79kJWg5tuKSMFjfofU
	 ptayea7s0VYUwot/h/aqP13tX5JlaV78qC4+VCIq8K+gr+PJqO/uxZkZNAGEohoXZ8
	 N6M+AMBCJmEX/slkG27cVMqwFOHfbsaoh3XnDCF/kwfkoBNfDlL3Ia2lrXoN14QW82
	 J506sjXjLFSf//7Wcc+uJltFgeeeTWcXWCa/z77rlFWumX3g7XM1dzkk7mrOmgjY+J
	 /VvGelSTesDzBA/QJcfqnm/cKoNMmuGm6LZHjyFh4t1DuUBJ5cUKNQ+s1SPIFineMn
	 SsTb2ZD1opPrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7DFC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870956277.1766.14466017070789584256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe1bef931ac74354f1e8d1d7f4d199f9a66c9b1a7edb6ffc2b7513ef1f07923
Date: Tue, 18 Jun 2024 11:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718709562
