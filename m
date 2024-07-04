Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC4C18AED
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720133723; cv=none; b=cwJcqDfvUytwABDMnRyy6IMQLupvOg6QLJekUfOlhRo26ziaMi4oYQVVTGgmvhNT+ptwOasXmzPWwLUp94g2R6J41/3ufmzPtFrvolKTJOnHfV2T3DNv9Yg33bF3NAPEAe2n0IqCaVityoIECC2Q5gVzLLbnQlbyU/ox8Ua4Mtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720133723; c=relaxed/simple;
	bh=TylXtnKtYtlASyuCFWGklG9sQOilziXiDo/wZnfviF4=;
	h=To:Subject:From:Message-Id:Date; b=O30TJOR7cG5FB1xy8w1sXA2rXYuDZW0eWkcOgwfSyKS2e5oVGT57mfDu6ibI11juVC0JagAy4FNwix2H8FOK+e8ROFX6v7T5nhiQb80m2oQsrjYTAa26DXhceOI7hGllQ+MycnYa4J+qnPjd2OL+DQufL9iDS/nIskIgIoqrrm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJLvR9kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJLvR9kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D302DC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720133722;
	bh=TylXtnKtYtlASyuCFWGklG9sQOilziXiDo/wZnfviF4=;
	h=To:Subject:From:Date:From;
	b=sJLvR9kN0DdrlhHaWN5YLe46dvSPuTbROvW+grKNHkAxw1AEqcWHuPGDC2PxR0QQw
	 JhwX5B3v2WtlgVfACqidVfWu3ZvI387P+poVRMQttzahyH09/qxmcknL6ro2hAv6h0
	 ppBdcZQ6X9lsV/l9UieAfa0cV3rtKpyr6iZrdU2fWHVde+B9RvmeTQUEBEOdibTpVm
	 z+Qe1rFnHrHGr6a+bT7CH+t9uctcHLxUsjKe8cNAHRywhxt0Yxq34pUHiL/exC/Sv4
	 8DtyEdTYk8q2kNuwoDyTiNUeJ1bF/rsMHhYLK9UGesxUM01XpjFcSe/9Zlgznvm3kS
	 ophumaxbmWpmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE84EC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013372277.20111.7610280713917015360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69088ee758a918cdc9497968cf7354eedcf1374c495ae07fc7190e5a4aed9dad
Date: Thu, 04 Jul 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720133722
