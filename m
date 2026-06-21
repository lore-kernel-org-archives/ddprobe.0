Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577C953E0B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782017794; cv=none; b=ZaaHshWbjIp+XJUw2kAoA271LHmYhKduEn96KaJA7gF5SMqo9VB+cXReEPDDhbIkpBNlYRUBEfJjXw6m77IyVRMNrfYF4Gjvpy7oGuLKs59U+JbIo0LDISU+A0qcUv8aJ4kz35cA4vp7SXmf6Z8VvbigNoq0jxqsV5Yn4sUoezA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782017794; c=relaxed/simple;
	bh=X7gJUqc9DuWsWgmhmp+gNv4aKxX081UR5wPtNbnBl28=;
	h=To:Subject:From:Message-Id:Date; b=BiJU5oUbMfxyBYp2veGVr90NGeVqpf1NdQV/R24pIUKdD86yvsnOLADid5eusglsvXiXa60dHNcxlUAumA+wnWlJWgEN71jjR0FB+NTIq4M2vskFUomUpOC/tczeK8WyiklK9c7XeBeb33R5UUS2hacS97IfnNbqrA54HzfN3eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC90UiKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC90UiKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F2EC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782017793;
	bh=X7gJUqc9DuWsWgmhmp+gNv4aKxX081UR5wPtNbnBl28=;
	h=To:Subject:From:Date:From;
	b=IC90UiKp21lTiBZyvrhiLhLdaNwHGdOdBo/9homEjRqNza/YCzBUlMxohjBjKw/Po
	 DPuo7IObABiKfKtXIpqOytmCNNrfrQ3bCgW3xsJdtS8P9BLOYioDoEP67d90fb6DE0
	 Nksy6mbBt/tY5KzO9CEJctl1xHPJyi5wAHsut2jTriiOa20Pwv8Pii+/MifHvGdFEK
	 GDE0acdcALLOFBnTF7WFez6eyv6mgAhPJCKeWtkxCaSdSjkPBh+T/pcGwMG27cuCae
	 w+n1GSC4CKyHHdZJ7MBbWC4huTDf6qyBfT/00dLrPj39B0iPCZoQfkTSn3sOAf+AyH
	 1KUPlUCrt+6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85D8CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201779370.27423.13469756377533826126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e9c5e04a5de2ddc8d3aa41492e01c7c7b1b836c9bbed84a25af7d248771db7
Date: Sun, 21 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782017793
