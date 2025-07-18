Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA65225A24
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752882594; cv=none; b=OtZijBjRj1AS4uMIaFUVUGNfI9/ah619NmuS4gK9cZKl8DV5nz05wYtbWKavasnVrotBJeg5FazxjZn2Vwef8OuX18wkF9noiXU6WOBIehqgJ8M19t6Lg2cJMTScW7qjz6z/yWce9ZnuTiajR0wb5DUwTHHIUvcMZ2iuVXfRar4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752882594; c=relaxed/simple;
	bh=zipV+sfmkW+ds3p5Z1jjtJCRaIvFaPHlvJmC6LzESFE=;
	h=To:Subject:From:Message-Id:Date; b=F5pb2BCQD5PACbGUMjeXwf9YIQT8LNDEmTLtu6n9sABMQSgG2lgwasVSw/x+qc8dT7TxClFqsI/pFCwV1M6qH56aLjRZjQXQGXuA8Mbmuyh8ecA7ihJQpdv5KphXBr1qwB+tj9OzDT2sRcPCBWHhY/QCke6UYokGFIbaMmG2PpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILHsrYiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILHsrYiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D9FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752882593;
	bh=zipV+sfmkW+ds3p5Z1jjtJCRaIvFaPHlvJmC6LzESFE=;
	h=To:Subject:From:Date:From;
	b=ILHsrYiK3HdOFlYqt+DiurgfrmhMcOhKUKMdyJJAJZ4EGPbKAMuK8TSKGJWwdgVsv
	 mX2pDtQzS1zX2078uUQz6TjFoL6n8FBsABkr8kt5RXgcmMLF12UZRCyqNoUCyV+HtQ
	 g4V5moagLQKOO2Qw20ILfOO07k+Zf2pPgMax6GMSp0Lt5hdwWroszhauk8+V/nSrFQ
	 IJ+AwinramND1/OVkz7txHQ1iaAvQXBL3yOR6mkaCxWu2qmwbH/xwsGm/r6F8LJV0a
	 MS/46Z1PnWhngeTA3yCllkbcB3ZkNJ+MC1X15774qzDE83FkIV8+tixXC/+ubWSZVB
	 viLcfRHUIeeeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C1C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288259358.994.4511712688635236761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89da42dbc3af3a883fb9e38c3ae39f211942b32f4bc9203c220b928a645e3802
Date: Fri, 18 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752882593
