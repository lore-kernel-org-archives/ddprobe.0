Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CB0DF76
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776575854; cv=none; b=DUk3jOI1V5bT3JLlkQy880AvCId4QPfFePim5QusawBbtEhBKlzmoSlqzVpxzbNWxGG/l2JQ4ygz0QdxMOG7B/CoLb2Fkq9uEjm9bnCrEhOhnU3k0uPjPpkXxjnfR4OR16AS292q5/PKf63h+Tk3H8csnlfdWDQbeXAFwPt3Wkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776575854; c=relaxed/simple;
	bh=K6LBgn5WtFLDFdRBcQWyyfs2cyag+7dQox8dvCaQ+tU=;
	h=To:Subject:From:Message-Id:Date; b=u1wkHriPJuUrgiRmBClD0hQ5zh1ddMYr5oXFN4K4bKHaLHYgdKIoupoiFGLQfIjRIIPOzVHOlWfzlXxZ3p4SD0xZn+rltagWNkLTxz9srvSWiBPPGdz802vyYRcC0R9S6+m6Iybe/hechO+O1dUOn8t8/4qfwnpyhNK1zfRqcKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ywzsvoz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ywzsvoz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE581C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776575853;
	bh=K6LBgn5WtFLDFdRBcQWyyfs2cyag+7dQox8dvCaQ+tU=;
	h=To:Subject:From:Date:From;
	b=Ywzsvoz7FRXWcSVdYH6FQSE5TOvDzsX+RX53jhmHRwVcfUZJILs9cw1haOxv0QHPs
	 3pSvAYnHp0wPeNbVs+iExar6Ant9cquZ/wCgSP8pF1OuXBg61MTYgGESrLE0GLEoWK
	 ftBadi+6ORYEGlsHjfDM9DL+DCY3CevN56MP6v9S1LmLuypT64/y5ONWbF7oQcD4Ui
	 TOvBOlAdKAhSwR9XKdeQIx9aePb/cwd447GGMhcGLf6Gt6uvkTMo3YWRxhJKscikk8
	 +utrBBhiV3/daJ8ZFZWU8v5ZmofSI9kZEJnNVcvTfxanedSH64B+ecUaILELD1VSJe
	 5zwdxHm1Zg2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC47AEA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657585368.14343.10162194443630296383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25753cabc5415b75bbdaa2b4a8752b5347ff5a47d562b810cffa1fb72d7c0df6
Date: Sun, 19 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776575853
