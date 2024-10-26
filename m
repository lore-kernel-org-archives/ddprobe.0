Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCFD13B294
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729937754; cv=none; b=RpbIQQL9NxJfWDTn4ivQ9mp1XU1k63etBjR6YehsPsLgr+hvoxFzUrSeOY+lPAkNchH9RFNv8HaZm/oYUBsdkB+bmSIPbvz//D+lrxWgXAiJM8bHP4i2LOl0YUEhTPw3aqNX3+rTi7pf28sTv16VPiZxlxdDJ5htpXqw2XNOLBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729937754; c=relaxed/simple;
	bh=UVf8VroHNsNIc3LQLnFHjikiEtNoj5vG2B92+LnEAQU=;
	h=To:Subject:From:Message-Id:Date; b=AVVIvjkCN/D/C/owNwxbOjE+6dp2ejZ2Klgu+cnB8vTs9ctX4tWwGw29+LU560cwuIkgn1bRwUrKgh6T1ipHfKubUSjQ8TcGrzfekwFtgyF9Wxb4fySzi+7SWJqEjQjwKHMjd2KNY05ystDh7PE9eCyveQ/tjJ6ZZaIc3K8tje8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiefsSh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiefsSh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DDCC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729937753;
	bh=UVf8VroHNsNIc3LQLnFHjikiEtNoj5vG2B92+LnEAQU=;
	h=To:Subject:From:Date:From;
	b=AiefsSh8qGvk46v2VGh6/k61Nv829XRbKXGniqOADcz6E2EvuEm9RQH4BEx6qy18s
	 pH4gnni1LMrf+8GRaUlRKdCIItb772Yyh2uS3rg+dtYUPK64Dijjdjz8dF4yCrLkmp
	 lYbxiimE9/o1tdmJT26s5bs9cq583w7nqlHGAkRvXAL32T/wD/aJ7Jw3Q187VIVE19
	 FvbspcVdaB2aRmA/Wvvh0pQ1yW9biO71IhC3XI8rZ70oFH3kkSvFrrRwOe/iptFjxd
	 dZ7agTLSPJFcLAFIqQJPhgUQvyfdlAqPgZO8WWQi3reLPXEzzuMLfuz2OyPaMZDjsw
	 IHXGud1lv/5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C39D10BF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172993775362.10495.9698362529021266004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6340ea0e4c767edd654c49061cf9bb53aeee01a0c1e49083413041621d5198
Date: Sat, 26 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729937753
