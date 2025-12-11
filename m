Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165301531F9
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765461774; cv=none; b=dIFhNMIVi3rAzytW4gw2diwK8QI1dYnUO6gTIu0IgacCyT/yKMouVvgJ9gL4nBpNHzAUPn+63H1BGxCVv+9lRTP+WiMyzrkLFFbkuRFta+jBCPqVDh/2im/sGYRbEy5VLHhVxERcnR4foXWFYiSJBheq+YbT2VyywpBsAOXw9yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765461774; c=relaxed/simple;
	bh=zxYIo51+kK+7+U1rJTnwwZmsz47kM6HwhAELRccBMvc=;
	h=To:Subject:From:Message-Id:Date; b=EecR5zJmcu7r0TXbrsooK/qIgcgMuTGJu9OemNKrQNBx8s29u5ggswaQjWLUFas+fzoUn+dyT+6LKOgWQpQNjt8gkj3rGnxta9Jrj8DBLvaEkMZaIPjH7MCEir1CEw1xMu9PkgZQBSRi3Wl1V1xUeR61ALHuQf6R7VHWBTZHPVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9Df/Gn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9Df/Gn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB83FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765461773;
	bh=zxYIo51+kK+7+U1rJTnwwZmsz47kM6HwhAELRccBMvc=;
	h=To:Subject:From:Date:From;
	b=n9Df/Gn5x1sJSdU/vms2CVqsDuQe83IfkoODfDz9eeFM8G52HkiplwRZtkK0BPFHf
	 LfZEcu4vIQN6BIQeIjQMwdRuKs2ebF4m50gBFdBev0ZXtoULsG7ETmjfqJ7pntPoRk
	 IGn6hyP15pvZgoJSCIydwx2M+NxRv4/x75vdGc454Rr16IxBlytJBblFWqtWOXHz67
	 n9HFmRuo78J8rcEa12jAGimWZGVCTixIwjrqgvfCWZiK4zJiMHaYe2lXZ4UhJUKN0G
	 vNrZ9Eqh1bh51R9e8VSmykjn5F+0Pk2RdXDxqYaK43c2xr7S8WDKYkeLsD+CbtZkyY
	 e0muNrSEAVPDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92196D41C36
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546177358.11071.11818418855708552012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c24a2991e7e651db8fa96b711beace1cb1110de1e1f5bf498fddbb008a59c61
Date: Thu, 11 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765461773
