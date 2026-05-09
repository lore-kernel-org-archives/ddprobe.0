Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F482877E8
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778291854; cv=none; b=M4luXPY4PK6s5cd2VH5Ce0SLjCpBBol0uV4mE5nsy+wcteVVschtGqatr1AS6U99XPe2heCNLWVcc6iAV0fRPliOopq7Kcr+/S7d4+iQvLJvJQm00J5v2yd4r+kk9qIUJ/s94RA4IR/jn3jb6wz7myETOrUCQS3iULiEHyBx2fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778291854; c=relaxed/simple;
	bh=00cAtdEgntdMHSKEhkrsHlh1pHY/HTzBRMLQheJEJyQ=;
	h=To:Subject:From:Message-Id:Date; b=IRMYZHKHPxOFFG6SXuunxv+iHI1ycr/X+7hR+2zlCi3cco9ZTNzwR+gE/ap6hYvkfyKStnA8o61FGxmGS1tgC/8POXpix05y/ditasUA3BO2t2qyLTgIHeMMB/iqXUr4NGXMO4aig6PPyrhX6NJjLy/5R/yyIQPlNrTJaebMdOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLTuuHFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLTuuHFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44C5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778291853;
	bh=00cAtdEgntdMHSKEhkrsHlh1pHY/HTzBRMLQheJEJyQ=;
	h=To:Subject:From:Date:From;
	b=CLTuuHFbva92czE/lut40m6TanvQXi/MoBDyoYOQjg+QC+snk8WKeMq0lpFeKe+U+
	 8D59Rw26ftYHDZ8OqH2QPonusatS+mUzxEFFi/P6WPRiODSu1Agsx3oQqxzgRsgNYT
	 PdPHMUxYicpKgZtdK82ivOEhvyDRfnGBwlmlQ2wqObLACA8/Ha8rBaV3wC8a5ZMa84
	 VbAyKaBSDcoAwFwNb5f0VncugRMFRsnOOTHz4vs9uRkiI0FuThRtCaa3C1u6MNgoaa
	 p/IPQe+u9KMHYo4PygqElRsEBxacyWpccz6OQuD3DLP7b+wEzpJcKWMVtZsfta3SXX
	 BPUaCHdLpnjXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D1CD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829185369.11657.16771898708215104020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e0920d465c2e2ec1076150dfd06ed3260111676a51b1c6851a2b87b6278889
Date: Sat, 09 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778291853
