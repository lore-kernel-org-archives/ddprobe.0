Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DDE16D4E6
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728252954; cv=none; b=OCc6N3bfN3tBBE2yFy7QSnGWLfxwYZGtM2fh620II4ouqy6svHBNsog9R+mRDgVevXfJZuGmX6R5Ufl28IGzqS+ToZ+rXc9NaX9ByHWQni40fnJmDlkCsh1YBOS2QHohJsuUEnj9tZ+sQHhwgTzdglQWF3GAMt6GiJIfrVGQSu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728252954; c=relaxed/simple;
	bh=1ZGutopXOeHcRih6m4gNwHBH1sNIaR21YG9Rzt7Kd0I=;
	h=To:Subject:From:Message-Id:Date; b=dJkO8Q3lA5gijDmABGURcBmByjivlRAkJrL9nvPR07cldOT5de8KC8fjtlOIdVtN7p/i0uHGAvwwA5oSdSvp6mv4INQmIkyqpre4kPqUThcXynRnYu0+IEkrwvwxiqjTY1+/pMqPISCHLbfe2ALq2UwMcTi2XZg9DOQ9Mreq3/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiS7zPia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiS7zPia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DE9C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728252953;
	bh=1ZGutopXOeHcRih6m4gNwHBH1sNIaR21YG9Rzt7Kd0I=;
	h=To:Subject:From:Date:From;
	b=iiS7zPiaEIjCzsAyKxQrsjC+ATSa7nz2dc9XEQvxAW2o8o1ExAV3ww27ssITU3xQ+
	 zCnRDysItqFbs2Bs0lSgMqGBzbWcCWCLVGxFmW5gpdtCEqK9FA/+tUYlspH070Hn1i
	 Lp8kdnO+bqxRauc+dZ7rzTrwCYtxoa/Zm8ujKz5vuBtIq2mrhIcOQNOA3T35cfm1es
	 4EWISaEcDyKDdrEzZdMLvHu28rk7Fp0ePqf66cUrTbS3nBDkDoWNOSpLfVCph5uME7
	 b+lrkCr0pksi6rJ822gWbrnI61V9puLCIcLiM+u830J44z5cFJCAWnWvOfzkkRrWO2
	 5Ou3RDD0IQtNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9A5CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825295360.4410.2317609399922151665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4c1ccb9e3de4a03ff80f9c550cc30506315d0ebb966300f2dc69abe7e65ffe
Date: Sun, 06 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728252953
