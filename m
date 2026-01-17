Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E9127713
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768653834; cv=none; b=Cb1WT2AdRcBQ+kXoORwqHd/gF9xpHfXTKP2QGnNzb4B8mjQAO6Kq0tWP6KDghxos00kLMxfB0Mr4wukKeyJ91BpITMnJF+N8qaZl0+W9PVWx/NiGVtDoJUHZFCMOOhyOoW7Hzv5WHK7RvENclXWnmYDIwRDABnpR4BmbKDVUToI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768653834; c=relaxed/simple;
	bh=KLze6tkJp57ZohdrqaNrJ90+hB391aQxyJNOk4gXdaE=;
	h=To:Subject:From:Message-Id:Date; b=fzPavhBbZnNbFVm9kfxYOaCf2KlUFUthZD1LquYuTrDh6fJ3ou0WDHb2xbTD27i0DpqM82bSYfsG1aDraJaiQaB2+dml7wLNBRIU2/21xoR+UFotIpK3r/cckmJfCK+dSYNk7yMj1AYw0W2m17MZg7X3yv6bldppjrTmh+i9uUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqvsT1W4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqvsT1W4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D44C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768653833;
	bh=KLze6tkJp57ZohdrqaNrJ90+hB391aQxyJNOk4gXdaE=;
	h=To:Subject:From:Date:From;
	b=TqvsT1W44N1OBSgUtbtuzdV76jhKEyumFRDGTcVJzXEtfdRrTFg5moQz4Bt+2hb9F
	 QsZj4Ylac3EnAHspbyRjQKPHxhSguWDN9mEC+3WBdjcXbWpJW4tZqFTf4l65kHKOvi
	 5y4Z+Cr6FZ3r7yls8oh0PxGCSO+hgO1FnoznKw6siuzZH2INTEM9x4l1FKjbMpwtTa
	 +Mnw0jN+Gdg+q3dAc2BE/6QL3d8cD0t8KTWcqJn5hgAMOn9DmwU7n/FLRFJPPyfE8r
	 cf1Bsz//6zcA7CEpCoT8MRTuOwPgvfCwlkoZoiPBboaYwiZV4H89DbJ091Sae5G9p+
	 +7rXCe79z9Ggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94168C98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865383358.24604.3175955422275889972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da015dfcee536f8da3cb03ffe29cc980b8b5ac6314db176ce4718bc9624986a7
Date: Sat, 17 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768653833
