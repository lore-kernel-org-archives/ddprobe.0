Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3757133998
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776613654; cv=none; b=EYuFrMusrNOVOr9h9ehTk841z/+d7e5RAjXRk9L36mVqJMIL0I3kMCYwDAFXpyASv9OtpAmZ1v65A3vdEUK2NAxSmaeaVpZYiuwTNCPZIAH9nh2rm2tPMPKqWWyInOStkt8zencFp34uvjUe6n2Yf6V/KCqJ8E/ipoWPZLSr0jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776613654; c=relaxed/simple;
	bh=Y3DgVGWOOPhbgT5TInjoyGxfTv371nxFJE58XRCdbls=;
	h=To:Subject:From:Message-Id:Date; b=l1GiBRAnVch8tn+xLUUBWCXjf1Bclc7zluaw3Xq+MeD5NjU5S5YyUDBhPgXqRbQB/chm8E871qexmJbeZH7l+rt8Cjt3/wD6g4I9Zd2ReBZdJ9sJ501P8/d0nJMHW3OoxgoQtbc3d/d1SX/38NmMLLTc9Bd2pGdyA9hTzTY9Zlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iwlak+RY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iwlak+RY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC13DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776613653;
	bh=Y3DgVGWOOPhbgT5TInjoyGxfTv371nxFJE58XRCdbls=;
	h=To:Subject:From:Date:From;
	b=Iwlak+RYujO1kecHCBaYbuvPgrTxZkYrU9rN4YGBrySsOVpsWHqBNSkXy46YSMcN+
	 AUEFay4Pt1qHZVc/Jlpz/kIX8pRbf9b/AIpU1yFCfgJ+GzhWhtFN1fLqCNU1nrS8Mr
	 fBKqD8IW66ALl94EN156R0AEu+1XEx/3nLb4czyjLMYolEqzGi/q2ISiTtUqkKKgl8
	 6RirqUyrdiBYln96WdGWHzmjUwir5T6w/tDv7WwO+DNBs602HsKYJa2mo9sZymye+R
	 x3+u03NFFf6zesxztX7IEHJFJR3BIwr2C/xBrSiomXSp/LqZEytSUQmEr20VCYj07R
	 JdhUKCwlAs5mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E1EA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661365368.2551.16253183753430687702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d08c8a7a9f5ce9b022b84211ed05ca094a75fbb5d120a7168a4b87959d8f37
Date: Sun, 19 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776613653
