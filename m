Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312E02F7EF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781291794; cv=none; b=N20RokRSdt7aFvWJ2MMxKEkBlaJgjNRHv9AZG0EcddQ38yMW1kl6EH6YFfqsdmSC4KWw3aGBsxz3KAEYdAkw0ZMg0BhNJ4K2oSoFWbVo3zBUeT3+0W7qNeHYdzVb3XNH34ekLG5vDRljnJN+YDXXp1dE2N/Zsw0fJszAluqFTcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781291794; c=relaxed/simple;
	bh=UoaSqLTaC7AXK/Xl+3w/U2MUaQzi1VOH6QWYIkQT3zU=;
	h=To:Subject:From:Message-Id:Date; b=uQ7vgkfC6gPihU+ywcKT21n6MHQSYaDQE919HNdgIazQNeWwwzVO1sLl/6UKhmaYeVV2LRn1kAdqEcBQmfXLe6N6BGE2S9DFq3XpvOzvUD8qYQnaiPDJnFLijwaLWOPwbWxGyr0xlLXjDnF0AJWECDFs5JJ3KDijR2SznWnsZhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9H6xQl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9H6xQl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F82C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781291793;
	bh=UoaSqLTaC7AXK/Xl+3w/U2MUaQzi1VOH6QWYIkQT3zU=;
	h=To:Subject:From:Date:From;
	b=h9H6xQl16S0RVUyOy4oApgOwik3bJ/m9aT70Q/6pS1IiGU5bX8Pz639H9YXlBSgOz
	 aqAe1SrxbbA/l3c4gjmLFeTNLK6YqWy6m48FOfbWPqvZZyFYQjuashyTzt6gxS07c3
	 EdUGFmypA/cQ3UMcarD1SoRmrdisTdTFJCHMPsGC/4SeqeTdYF2teAhjJMZ3VPzHHF
	 +u8CHSJoxLoptIGppSqoQzB5ZCqJtI0+NivJ7r0RJnFORGjm/Td+Lby5qi82+bLUoC
	 Jd7j18WPShAXOtrE6tBL0Y+vEb5p489jgO+kKIHdJyOYnH2UqaRPl58mkkvktTXFC1
	 rGlyWDoIYTMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B35CD98D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129179368.29066.15629763174764303411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534a9b849a5de9829becd7530750e4679628d1e2fde25e78535bb60fa2e6764e
Date: Fri, 12 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781291793
