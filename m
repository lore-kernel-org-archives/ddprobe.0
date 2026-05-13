Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30AE47A0A1
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778686234; cv=none; b=twD0mRiLTFgg5EeQuyx3oqK/YjI4rt6HIZ+TbKIn0c4t3WhMvzjU6qSO1d6oMUOWHEoFoxhGDLFit3X//6acSAILALMcHBhVRsQWvhwwIyzj2y4UuhN9KWeouMAFBhTa0HxdRCxZtvtxZDf4KnFAKhMcoX7CgM2rrSX6PLcKiyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778686234; c=relaxed/simple;
	bh=TWBwhXfWQeOsMIRBfpN4X3d/Ik2zxpSbPAaXaoJX9yE=;
	h=To:Subject:From:Message-Id:Date; b=Fvf+OfrkGNdBqKY5JwhMnO1/ItaOy7l5QAIQGbxsWnUUxWcF9qyAJ8XSUXNL53KEzanl/Nesne/J0Ae7MMG93TkdX4r/vUJh9im55bKkbrHyCpOoRJoXb/eg1FkO2ODNA0ae8sitGcqvug0H3RdaPhVQ/1idHi7cVxN3/TX+dlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfP5iytt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfP5iytt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF271C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778686233;
	bh=TWBwhXfWQeOsMIRBfpN4X3d/Ik2zxpSbPAaXaoJX9yE=;
	h=To:Subject:From:Date:From;
	b=UfP5iyttTKlWCpiFg8HXg6uWt1cn/BNMtyuxM8b/GrW2XWjV7AAh6RABSeJm+7bmD
	 EMaw90I5FsV35N+E4YETuQUGbiFaQHG3VAvxuuln2Smp7bluV5+bXpDrCbm6A9ujVZ
	 2N/1/VUj7bUmL/Y4tyvvMIrr20DbIx/9k1K6amMxR2N+394uTpoPKbHfmWqw4xMlqv
	 wDH0ZGOLAWpj8jJREZdBTc1IIfoVpchCJiD/bgzeBsMUogXtuXU125msefZARyY15T
	 jmFi20W+Auor7DUz7tbvtdW+8jugx/HAYOwBtaDWzbn3pzFxXY41c0T/OQ40bPdWpe
	 dPxSPljrWqtsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F55CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868623368.26750.2435627843418845371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4a0f6fb4951d355884575c0ad9a806d0c73d2a16b1deb5c717b37d9c111fe6
Date: Wed, 13 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778686233
