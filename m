Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F814283FD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788087034; cv=none; b=C3uSpMpjuL5wD6ERTO5qNHJySB78kSB2YPKDDlTWHqAib8UlHso62Z3pi2/B59ya7Vm8GHNCapgdpp4Vs7SwJ68gnLBahPe6/Vlk1wOiw3w6nWPW22/k5bADqmDwkVGOPXZdWqjTCh1sCrjStH25+7Zacvi+3AugmDPs0mkZNv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788087034; c=relaxed/simple;
	bh=gxgHD6LLSrIiQERIvFc/Rfky5tmVW7NwiQk1smTNOFo=;
	h=To:Subject:From:Message-Id:Date; b=LOdlEgWDzmFXWNPo6jjzNNUbFE3GI+kuxxA1NfnOh82GPPE9AkauoafeEKUkqtd8o4f7lhZzDCy+T4y8SrdoxuWKfPytxnyuXScRSylgf0Ot/JKaOzBdHsmwt9atDEQCNizpHC+2t+poP9M6VpRN11SQs1FWvymaOR7ymzAObag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/P3FD9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/P3FD9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A6AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788087033;
	bh=gxgHD6LLSrIiQERIvFc/Rfky5tmVW7NwiQk1smTNOFo=;
	h=To:Subject:From:Date:From;
	b=l/P3FD9nSTecGKeN4ptOOLR1EyOqEGHnma6oqCfKwem5dThJ3IL352Fg3buy5aFbb
	 IQUXulyqwVMrydt+96xrZqW3BX5IpwnGzDB4rP6c4R0CtWzzgwet9iFecNPW183eDY
	 oiZehWWcLLoqz4vyl4DxKyVgfZtQ8dg8FQlgGxfgYadglvf1IVxq/9U/ylbxnD2CF2
	 xBwe7cEpHpO5Qi39WZ3PJG0IUkuu7KGv7BSBJF1gsTvGdLFGAgvyvC5OYZNaWR0V/s
	 G/0zJxx1mdkMmki1SMCAEvCmL8BDbd7SZMlTUHIgSWc+TQk+0QkV3SMpkZz9pBvNbx
	 RqVpqGHhY3T/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD005C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808703368.4701.301908245970808592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe839d62c1bead79c14d8634b14f6fc573dea846a75ae9cd65b26a13d3342c6e
Date: Sun, 30 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788087033
