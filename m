Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570E716C850
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744571394; cv=none; b=dR6GZ0ewEax3XX4yLtgFsG/kuPru7vLxGhlDisS2y+ObFqJBBcpmisjlxCO2PU5NW7K5CtxcmFYfKf6QytoCIiS5zgm3QLAVRNm0P8rj2zk2CauAAg7HT0AGKy1HTIvShQAeLz4j9/hP6e7+hIFrNX95/oKICliCMhK9L8p2gG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744571394; c=relaxed/simple;
	bh=e2Xu21+SNDqmvYWBiikxtX5Ph67FhC9YPPfZ/9sKfcQ=;
	h=To:Subject:From:Message-Id:Date; b=kIFAtILbT4702gg+484qA33fQrddQkczk23pFClFdJI7QP0etSEVJzxWuGZYf+y+gYaTW6hT8nZB1XmIslf+T5x08fjtAdjqAInNBH3veDwU2DVpHcD3SRWXGKaI1NGNjP0O/GXJ2qMnvMG/53KXuo7HO85wxLHl6Ep2bW8riFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTK8UQeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTK8UQeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C5CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744571393;
	bh=e2Xu21+SNDqmvYWBiikxtX5Ph67FhC9YPPfZ/9sKfcQ=;
	h=To:Subject:From:Date:From;
	b=hTK8UQeUZ/zZTBSUvECReqv5l7OoU88HNkWC40ALk7mHgkXwdHZtEZMARgI4JteiT
	 xuDGCVu8rQISb+ZwZhoVH90KH8Cp1MudWIMPjKmuqLqhStNiNUuHSxx89W75X93TyD
	 xom1aaksqXVmxpBb9qEAYkyiiuerGnB4BZxSSDG5QtUsDoTh+/+gvklc862GZQDv1h
	 1vxF8+Az4b2oljey0Bo1nd5GZvl3iHJiXoY7s08sxEkeZifhIyHBPfGj6iDTCop2kz
	 dhszxy2yaNlwQTba2ZRdPYuHDKh3gF0lTmNUBWVmHeYpP5DpHD1Jx9o+UHQ/RueGxr
	 bAVONK1kihlCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4484C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457139372.12879.2271047640452968393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64df5fe5530fe712dd2f93bf0b8725f79c7dc8a202d0557227c3e3209ea9db65
Date: Sun, 13 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744571393
