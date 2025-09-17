Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275AB3148CC
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758099594; cv=none; b=F46FPSe2r6/y1b0pfEPbt89l0TB8MZnVBZ0eFM7t+1duR+VYnZ7rVE702nys85nVTJ+WmMUhkamdiLhXZtdnSctbTcs/Gh4IOXWLpjg7uNFGzJpY+ddTjyl8iAyGrRvbzzI1Qak31/+43ULiy5QjOTq0l64+kk5F7nGJzAPzB0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758099594; c=relaxed/simple;
	bh=oUpbRyyV//Uikng6jNMsD069If010RuhH+g5Gi1FVyI=;
	h=To:Subject:From:Message-Id:Date; b=qzAhM3I4ebrO6GpGSB2tup42AHR6zN7XRpn3hUMkvr9kPGQzMTF1kXLTzrG/rtzQuth9AXRa5TRK487xgDRYnakE+LKiII4ZNTMjneKGPon1ALWWAuIlcpMJo1SdWibeQjt/ouNumFBfBxsipFzedJJEophccTr4OYngZO7HIpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EH7bNbyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EH7bNbyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8E3C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758099593;
	bh=oUpbRyyV//Uikng6jNMsD069If010RuhH+g5Gi1FVyI=;
	h=To:Subject:From:Date:From;
	b=EH7bNbyBt+761WEO17KFVZqxmFlvOfUZAeH+9AFTJkydWgDspJ80ioFpb2MMRFfL2
	 sQv4f8XrjWCX97ALP+3VgqF1ZlvaVcg05uypkrC9rDWZFN+aAbWy0aROme5mTJtcuX
	 V5sLpPE90+Xf73hMxnU9iEdJDGdC0xD/17Q28S51KDMy6WLTxw2NcVon6bph31Ug7C
	 dI3Am1CPIcFxVQW8nGB3xEjxXljW36F9sgL9Hm82opXF4byIsecr1sazDsZ8GzV3k5
	 dSsrR8Q7niSgPDtWI8w5nHBNEP+rn6DeivIbIp7f00iR7nbf1FyaCRa2U6HavEzAUo
	 RtOdEf2yx6ncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B572CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809959361.16203.9424179852659327702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a623c280cc5a35715f7ae85cae2ed1df39d4bd473ccfc30989a77f3bd97cd4c8
Date: Wed, 17 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758099593
