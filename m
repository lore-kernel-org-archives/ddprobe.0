Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439D3BA33
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748308194; cv=none; b=o37MtZ7+0Uc1z4DXgmiTsmm2BZl3AfGJdGe82lEWsiWLgLj8Hr/8OJERlz3A368dQ5e4qkurMPEdunnCX/PL3Uas/mAj3uFERhRlL4o67y/mFlUT4FpYSPmsThKX3kiC55UiNkFz6IriOtr6QTGw8UmBWIOpvx0NLslyJpA7QEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748308194; c=relaxed/simple;
	bh=FhSRMPPN2MzbvsPK53uKZagE+izs33gvfSrmIOTC+nY=;
	h=To:Subject:From:Message-Id:Date; b=Dtyr5DFXWa+laT56NLPIDmfAlMRUrCpGs+OBJ50JS5B1FxRFJeeWROsWJkq5axlIhiPnCIlk6E+1gOXDMPouZqBAdBkpzDR+8LC/YWhBVvHjMKnY8pbinBnGwC56nx/JJXJSCF2IuIjQ1gCnAx5Nag9q3TkKqIGKczfaXlO7mmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THVKTUM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THVKTUM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7941C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748308193;
	bh=FhSRMPPN2MzbvsPK53uKZagE+izs33gvfSrmIOTC+nY=;
	h=To:Subject:From:Date:From;
	b=THVKTUM/6njj6FjJT2PE7NCTWhb7Ert03zGUElgyf2WDwDJZ0RjADOa7B9JF72BcT
	 ikmXgIkgucBJGD04EMRxGSGdZforHxPCDJQ1hiKNNe9geJ4j3xgeWNANZyEK8aV+Gs
	 3Nafe+HFH5lfVLfwL8F3VIwLcvDmbdUil1715dJzseCQqN16Z8HCeQlE9RQ5R40ija
	 heTjoTUOHNC+Z3Tk4eZhoEMeHaLlbngva8aBAak4EaE1fZ/lVdK1Tp2DQoA6LYeHTa
	 ayN7ogdn8NQK53x5Z/336dmLkN4swa9m+ZwLuu+82rMnt81cFPNz5bMIvy/g2dzB9H
	 bKwnBei9b7TaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931E6C54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830819358.13920.9421170292766226512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77e19db4345ef2bcdfd7a7795768cd481b12837e742a9691b26915eaed8c239
Date: Tue, 27 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748308193
