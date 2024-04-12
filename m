Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692DE182DF
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712933963; cv=none; b=jipn04EbkmjKcCX7JCfCTwL3PUafUq3Zcj1y9EAAwaSS2bqNrMLhcdUFjZAlAotWDUMpmYcb63wRYi7OkURMeiO3Bncojz9izqAtSIAztGRck9T4tOS3DZikDDdOVFi/AFkSP/qzZFp/silnNOM5+thFAlW+0FfiaTlQJuj5Ak4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712933963; c=relaxed/simple;
	bh=l1cpewIZx2Ppw1B7FMHTi7QnW5yAaajqYEM0SF9pXl0=;
	h=To:Subject:From:Message-Id:Date; b=kS1/HGdLk39+8zmiyvE0MKX5irjxiBFaJZsVeFPbZnTVFL237mH+P16VoLOCZmLbCMom1XBrbAhmIgRGnhUh265QPjiUrMWJXAVABbQeF+BRpV9jMvmxEpd2e4quKj991ZXFTqqXXXXeQbL/TqJ+JA1YaeHwUBJAWjq6rlzMqoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ14+q3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ14+q3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C7FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712933962;
	bh=l1cpewIZx2Ppw1B7FMHTi7QnW5yAaajqYEM0SF9pXl0=;
	h=To:Subject:From:Date:From;
	b=GJ14+q3uHlnV0pFyJqGinobU0o/q/2+9g6HSY4S7nx51jY98UJ+uq0W/DOPCNAhKB
	 pfM0zg8AtM/47G2N8Q4h07Pwf6q3atXG+qynQCRRBnp/9X3BsA50CzV6N94yJXSejV
	 yI0mBL63wLZC/flhD+vwRb1yu7O42DWwF29zNDZ7zlbrm7JFGQgh2L5qmkW+chYLT5
	 I7tiQT8UPSBrjGPYFwmWn4aoOMf/+c8yXHBPJ9+HMxUlroCESlwEC9DptHcRidZm3G
	 A/uEWdfPoByVtjyHQ4WzX54G1KNDXsFYy5MXSzLQQT45DhNME/2y5ZLnFVTbWXftWx
	 ZAWrowRAOci3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2008C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293396278.19027.9785360815570155774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762043bd11e7ee9e62beb6dc276ccb39fb84f3bc3ca90e054157beda803c8a0a
Date: Fri, 12 Apr 2024 14:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712933962
