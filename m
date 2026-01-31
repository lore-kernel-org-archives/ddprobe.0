Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3D72BE03C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769879034; cv=none; b=coxmlD4RGRWuj/d/ob0+gNvzQnQT4aEwPFuF+UOtvhOCHyWxrk3NAAKE9R+BT7mqigzSzfLpLtFymr/vL2vmJ8UroI5V5CU03amhnGlOExC3fr1OqT9dAIMNr6icmcFh4s8rrWwRk+lMm/U8FeNoHeeS9nkEHA2XGAlt9YBM3no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769879034; c=relaxed/simple;
	bh=tFFZgwyalfeRfvC2KWS+oMCf5IdDwWa7UUL/JP5z1Io=;
	h=To:Subject:From:Message-Id:Date; b=ComDKSZx5jfPDCmkn5aLV2Yu5KsbzLfzrLJwAmIn4VAok2Fr+K207e6ypL6+lLPMuK4rCc0Q2iwEyzl/Ci8N+5lcjsdb0DgsGVUhsSCAlv7PR8SjoWUXbi/rYDGm9M1UE4YpJOBy5BJdiJLteV9r0wev55Bugbxx++up0p1xowE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDpmpdSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDpmpdSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8719C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769879033;
	bh=tFFZgwyalfeRfvC2KWS+oMCf5IdDwWa7UUL/JP5z1Io=;
	h=To:Subject:From:Date:From;
	b=UDpmpdSgwquC+CN/jD1VTs6/lWxjY4+XAd9O7DYGnNP2IA3bYIrwFOAWV3kMizMaM
	 HVOY3tanUmR9JR3i8bJnte+Pl1DKp3Hq/qOckFBnTGLVgNs+CLcK2gG9Ms20ovRAhT
	 XZ5Bdp8LS/N/7I5tbr8Xzb1p3SkRSI78XG1CkPxrtn+Seq4IhIqT4SxoWLHbfwMlHH
	 30xurotew50dl2mCfv/i1y0lZzRfo8DvEnyPIPLoFEZUC/aeHocD1FBHxe9dJFujrH
	 E7o5/xCERzFXLbDNLCXEWm+qqmI1a5l4rBlurrp+8QP9WyR6xTNErKFSUKnKwXDN9P
	 RYcDSktoi2zJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D0D49C9E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987903358.17579.3331092301278860276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52d32ea4f26f048890cfc053451d5d90f6570d4db4fb558ee8d7dab5094a76b
Date: Sat, 31 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769879033
