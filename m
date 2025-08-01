Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287771F4188
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754035794; cv=none; b=peJhlPiVAG4etOul69tcNINb0S3RS8AO7dx4cfuX5H2RCn2twKu98j7B+05fz5JekzvvJZCR4JiYYLaeoqK+VhMF0LPj36YdLTx6MXmeRNu243nfwDimH1y/BpMUXuES2ohPsWEIg+x7o5UTmBvLXpuMx9XpOd/SUT84RTTVdGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754035794; c=relaxed/simple;
	bh=vL14SZvWTiOqc5xvwOT5wnLnamE6HIJrOkZf0wBZ89M=;
	h=To:Subject:From:Message-Id:Date; b=YgHGS9vVDfWOE44/Ax2eK38Tgq/PatXRNS+TVddJ9bnppnMZxQDkUHyR6dsOP+0Rkm/Wte1KeWMvekZ8X3tQyxWLvBPsWV2d1lz6rwrvhGY5otf2g6ABilEzvfcegBaMb9nzM4xMcmYCz5InLgezCmRlDx4kADVDfXua2Dt/nzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZ4DibGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZ4DibGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1581C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754035793;
	bh=vL14SZvWTiOqc5xvwOT5wnLnamE6HIJrOkZf0wBZ89M=;
	h=To:Subject:From:Date:From;
	b=oZ4DibGVp3NobnN8FXGUpkVMidHUIVC2HSb1JJwS/QZxzvWTUqmmgSSd4oABeNpB8
	 2yiSc26fGIRuVftbmchceIM1etmj5AbjuG/GVX5XOmeZet4+qaaIP5T1QkcVDb2TNs
	 ZIAPjA9k2qiioanUXwnQwlKzU52TobSraWXsAQ4CATzU6o/qidDCCCns8SSEaY3h2M
	 pIQX6yjoknjVemleB8x80CaxMabl/pyVsIvyyY7EDUhKv/adcd4UvkhyWHcUFfTTc2
	 55ubmGw2/o4FWvcjl4lHj1l+LajHm1wLdrTTKr9P5nwwVswq5pTkw0bwxw9pM8JEF9
	 XskAuU2tsarhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F932C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403579358.20807.9138372671049076887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6914eaf1c7b649b9b0600f988e1c0eeee0b4681b77fd1750461752e22b83936e
Date: Fri, 01 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754035793
