Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3161109
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713750023; cv=none; b=PWkV1sFKxwxGu/UjlVqk3ol2MqCECyML5LBk0qW35B9EzhWtiB5ZgolroC+FZvMhWQGxXRH9hLTGfnuEAOmDuGyt+mWLOQrYEKr8cqWQ9tiqcfd/WRElYL7M9IUq4UP5q8DQzvp4SYooItL2EgOK7/TKIvW27YdHNHew0oa70FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713750023; c=relaxed/simple;
	bh=sn70BsyL5O+36xNW6Wov+hjBttBshhZgsEzPFSUek2o=;
	h=To:Subject:From:Message-Id:Date; b=mK6G6oxUbpHkNeLYDWR4Q10LhczSplMUKNut0F5PhSEMGIV7MRNZjvsFnPziTN4ATMMLZcHEKES2gMHZtoT/ta/eB07fNhikQ/90Pf7ZoiuIn1lfrYvOqbYbgnQvRfxf+mqWUJrb/JEyNuZ1NKvroSa5/wRNihRhOMhtIoFZj/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9lljLFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9lljLFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04BD7C113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713750023;
	bh=sn70BsyL5O+36xNW6Wov+hjBttBshhZgsEzPFSUek2o=;
	h=To:Subject:From:Date:From;
	b=o9lljLFJxk16BZBJgYY2mDznHpAXTCjkcrPbbF782WNs1BHHJJEQVw4tXe5QXIvvA
	 2DE88r4MCn1ZEtmmAh0oNEcBN8ZSSb0tg5zvprRrD7UXGdvk0L8ntW40jYw3xKpQAc
	 f0Up/WZOry+5i3RM1euh9iDwSBt8ETRHCGApo0xNQLXsXCCPOW+x75Th8tuqnnKtZo
	 ZCRHtVEPr9CH2gOtCYXYLQcyzoHzrknaTk2ozRWMF0vaKSzAWGsNv5r6nsXu9U7mod
	 POynqjqRZn5YALMts8AnQz1NXIH+RvBCnyNK8S2+x54l/JHrmDYU6XA9b6XLNb76u9
	 IXLfCNN+yPHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D880BC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171375002283.22489.8102774501777290324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18aa9009bca9c7cf0f0beb5d98580fba497e1b8359ae12b80ec8f268cecd0ce1
Date: Mon, 22 Apr 2024 01:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713750022
