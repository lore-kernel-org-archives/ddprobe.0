Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CF2101DB
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716214343; cv=none; b=XazDEWIdVvLUvYCN4kQcJrtTMqvV06y05MrQEDxZ9PMq/8RydRM0p8RddyiqINraRPN6dA3LxWoatUC5raWPuDDM+gAm+2cCYSkrrV9ZJrRVnwzaO8q+bKcOhNmGohskdQ4RzWIoRSdE413ejILU4ZmuWjassb2LOyNKZL7C1IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716214343; c=relaxed/simple;
	bh=lwkcKYTmKpYr7uOVv/9gbZl4gald+IxGEg0o1j/cLC0=;
	h=To:Subject:From:Message-Id:Date; b=SfUBO4yYNXcwVakHIdQLCv6pvwwkYRHCb4Wc/oQrX2LFAzwUIW+g/1xOy57mItg1TBlQYC9PXx2vNd7UWaI5oYMy0btaCDjq9+LvLUO0dAzr1Ow5jCA93R5/NIoN05RHJUKDBYBGxTFzp+bHJUbPr1uapTBdxYTBl2yD+VTGLjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM8RiEGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM8RiEGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC72C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716214342;
	bh=lwkcKYTmKpYr7uOVv/9gbZl4gald+IxGEg0o1j/cLC0=;
	h=To:Subject:From:Date:From;
	b=hM8RiEGpaYvD7GPHXUo07A8ez/cIoexBAPJxuwYi64Kq+wOtAk85uYt7eoizh5MIP
	 aKn/weUsc7hydvSg6dVPzQXJwjobiazUCpKiKJtnESSlFVneg45rKFfg+iTUKI7Ata
	 K26Op0eC/JJqBRZUw/PzBTGXwYh4AFxO7mMmJwPJSMne009XZO0fd5I3csMkRNcxJm
	 6QpupMhtaUeSpWnsA1Xu+HJMRr5kXgth4rHc5TP//qGXBEDqP018aHr6hGmVt2KohM
	 L5rv90P+UtFCx5rvp2Jacbn2hF0pupk5g1QBNI64nMq9b4pvRZWv2wzTrtGsixDqtF
	 PbVHVFW15f/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D7EC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621434277.30039.9115363977179376321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f0a43904970cc3017859d11e71e475dc13ca49027cf6b66d3528aee3e615e0
Date: Mon, 20 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716214342
