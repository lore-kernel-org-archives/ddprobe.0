Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBBD2253B0
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785763835; cv=none; b=sPIQrlbVBHGKRUL+58A1eUpXDpRk5zRIiThxbfK8vnSpaSZwAcLZ+kkE36/uStMSYQdwQXPvaYZsTee4648lMXZqgyZI1cVkvjGNb6TaY1CwMfuHxknibslA7OSzG/87Dtq5UWfFW/76mnieGNY/9jn4vGSgt3+wBYRYuDk80hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785763835; c=relaxed/simple;
	bh=6bww4PnV8utpVRLvZXYWdsaHxxIx6va+0MRuK9r9I/8=;
	h=To:Subject:From:Message-Id:Date; b=CCB2aIBLZId9RwDZosR8g+hAfmLDvnpF17PiDe5QXoOd+KerTCVopsB88ylgvfaBkQXeyG83TqvhNeZOzlUMzP+RTUn4gK+9OXt2A86/84SQGiUDR++V+PKTyNV0kozr+UkEBvyLB58j6kjn+R2jjNFeQBr/H+MUTLF0dI71XCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfFFHxGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfFFHxGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4ADC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785763833;
	bh=6bww4PnV8utpVRLvZXYWdsaHxxIx6va+0MRuK9r9I/8=;
	h=To:Subject:From:Date:From;
	b=TfFFHxGQLpgvQL8KXt3Fo3+61fzdOIReGSmigtgvHta02NH4wIgril65mhOF+I/Vx
	 7dke6ie5NBUaWSOmgMnrj5+k3v3CY11IcB3WsakfHqQeuii4Ad6I/uhCDR3z4qGCS2
	 c/zJmjk57Eb2bFJwLhTYQp5Z9fZeZb3kNBxs9T6kr+XMkuyNLlpds7ygOr8cD7SHX1
	 Xn7tRFEfiUjtcXNvbo62W77eADGKY+Z5Ko+tIi3iuDnoorHdepXSfFrr++dUuyijed
	 c37bjFFEuI1rxzUjWcytPMNor/zChDW63kuY1CcQHPQnnRN2uJE9Dc9LIeL5rJo39b
	 9QDLCvNbmIr6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1496C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576383371.4443.3754932472854128156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54bb788d4aef80b49706e56753c86b0fa7d3e106942e4ac3c1d1d8a4c79a2000
Date: Mon, 03 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785763833
