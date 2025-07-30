Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFE71D54EE
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753907993; cv=none; b=bLt6aNefaHaD/+eZKuyyYB9uOJl2mTTLMljeiEOtNJ22vzGyFv/djPDLIM9nSypY2dfd8XB5Rs9mX+vQq8TSRfq+kzfOqSCEnSLce7JZZGEA2dKK+4HdyQAinC6LAbd400PJGH7zUZ6R8w92MJi8Df0LzT1/ZPdFA8PwNKjZjsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753907993; c=relaxed/simple;
	bh=KMo3Fa/erQeW38TNleFLENBQ9+453+eJ4ihwQ5cHmfQ=;
	h=To:Subject:From:Message-Id:Date; b=GBOb/xneECdZFAseNqSUFTkSJOdMieC5GxOXuyKsy3Gn+nKcK35jNPTg+ibHDxMY6LFq0Z3nK5k58EnZQXV3yxXqXbJtJzNL/Oz+NKZSgtPnrtiegTiIdVYGhoxjzwE6NhpTnqLSpG5jGcnO8TSBlEz+HNGbxGG+mWn98BsKwO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LirI20Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LirI20Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CACC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753907993;
	bh=KMo3Fa/erQeW38TNleFLENBQ9+453+eJ4ihwQ5cHmfQ=;
	h=To:Subject:From:Date:From;
	b=LirI20ZlJ0h/Ttkm7raQTS2SNMLnVUaL3u+JR++mBZW/xjC86kLZN02NEG+6YcZKO
	 Ov5SKh31koqvVRsHnXA9WckvfLIRCLMxQI40WMhLfwQ6ZukJjJEr+Dj1zAjFBkcPVW
	 unkVsmNi1qRu9iMqRGwpRtxNGdvX4O9pR607lkjLxzrBeI4hlFoH6A4DNvVdCWmn2v
	 B2u2fs+zhH2xsw9uAyTd7dyXcGYEB8XBMvqRpf85dAh/NHXblsjVWJCUMM048kyEPn
	 jpVx4FZHzVZu57CxO+D2DUwo1Z5E0W+ppnsppSErTq3/HokakKx5S/p4UpwuJgB1oP
	 KfdaZiZkRqWSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CBDC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390799358.4983.12565742994559990464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68a6c39f67f0a58dbc46ff3b43343f171b4e6e3611aa57c1438a877d781af33
Date: Wed, 30 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753907993
