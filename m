Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57C15B998
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782520714; cv=none; b=XIB2YnY3d52syN5bFSN4lmSgFiXK41yuuygm/Ib6OD/ZohAS/fhPEQ5yJnD4o/5wBVCbyWdmtQyzgybDhJa0c0YZIPb76bP27O6gLa5DNgxKNc74iDPaHnSb9acQ9g1lUmlhTvFeHp+Om+jSCCyk/aJFWvU17bYwMO9DsQH1fZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782520714; c=relaxed/simple;
	bh=D5mhz1RLWD4CxqixrwyoAxlgMleyPT7G/rw40cE7wLQ=;
	h=To:Subject:From:Message-Id:Date; b=QHZ+6ZHT+4CIEYOUknDm8BCwPhXnnSD1CyHgFnyiNHcc2Bg3Aw8xt9L1a18ShYKyEitnMysOz1c5+DeCgWwAtWbBvJ/RDfCSNkVj1taiuaBnvunUgiHL8hS1zq7FyA/9rq8toMWYZxdgpYOIlsL/oXB7mneBXmWlf/W2fDeuZrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM4HA/yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM4HA/yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C541CC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782520713;
	bh=D5mhz1RLWD4CxqixrwyoAxlgMleyPT7G/rw40cE7wLQ=;
	h=To:Subject:From:Date:From;
	b=RM4HA/yJqKfHvvtMRJwJrfoPvKCdVFZIGn0hNP3qtzziogEl5qHi7PPCsaaKw+iST
	 NZwHrV0zWjXDUA2NUjqfB8FOmi00e+7MAq5L98t/F0W5hlNQsu5Bj3SGCiZFOQ5KYh
	 tnOI2OI1taIUMlrAatRR/00Wjo7bE68FKp1rB8lPqPLJfk8fCLVPH906OwnLNxAdz1
	 EOZqJW90pEB1nC437qtH7qJ6TEYJrioTV99l/NsaNHaEpyrVS43lQiCp1oX7owcXZ0
	 0FoUAZKJzMQRzBbpEcewznq0BlFDfhHaJAGadExY+ad3WMWYShSTXBowstmmJ5Ud60
	 wqqa1rF7JXBLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE45C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252071369.10453.5579295178941675672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a6dade4186a0163b762985aea7b0e9bb95e2df6ac520ebe57c6b44f1de4fa5
Date: Sat, 27 Jun 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782520713
