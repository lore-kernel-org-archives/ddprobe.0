Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54115430CF9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786101634; cv=none; b=roV4NFxQ1ykSL8eg1/bwrGjU5/W7IdCmBBmZ3uQfH8n/Qd9gkb6EIjei2XCo5yu5HTKkHUW4aMKXUevHCSqWKMjaJhtfzuaYi7qa8JYFliB7FGzkVE0B8kumxFJnEz+5xqw3N/fWwXi4C3VTxJGxM9EgQYqiLoBSjgcD4iRsdB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786101634; c=relaxed/simple;
	bh=mOJPJ1CmUmQuzdsnBhNNeg1qQ92gWF/7kFTg5vPPiSY=;
	h=To:Subject:From:Message-Id:Date; b=gmrwCQc2X4LDiQ/XYMwFwck+eISV8/QURniCV3GRkJpGyhDkilloZ5106qu+hzfRBPTAW0no8e4ZYpKx6qqf19wFzMdDyA97rh/V11t+RKsmIAYlosb1PJHoSUUYWK/Fhs0IQbpV3hmIRWLF57E5RSSMZTMO5v7KgxYfC4sDqFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyca3WJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyca3WJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB09C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786101633;
	bh=mOJPJ1CmUmQuzdsnBhNNeg1qQ92gWF/7kFTg5vPPiSY=;
	h=To:Subject:From:Date:From;
	b=iyca3WJcuLN/cHVddkaH/NH/jAIm/dBqeQn9PMBzyU8Q1VoMkN7ZAs7AMsGMUbKkN
	 /6VG0+8LNrFCWiMJ2vMgs+3j/F9EB0pFDtn7MxISb+6QWiaqv7BvUnyyS2JeP7obFT
	 wj2MdapeKrXUawElDSyMxrcHKaDCqdn62I4s0l7P7tNGQxLLBtTAALPPxTnJ7igKsh
	 057+QcOkA9sxDy5fLu51OdHUHWSd6FC8iJwLX2q2mES3qWITqi3RxyojaubB0gJcP0
	 +4sGTArgT7BwcCY5dZdh7t9N5RvPn+hIBPceWGqPUoXNBmuhZfhJaphuWCPJHnAOxH
	 tCH2CxpD8kZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F6C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610163369.4963.14844490642998276102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf23b1aeccf49112b406d8fb4a21a81eb51c9170ec9318f6e8da10255b8dfc9
Date: Fri, 07 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786101633
