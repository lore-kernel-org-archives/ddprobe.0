Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95122260C
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746383393; cv=none; b=RYssuD/ppg/DUZ9B7JXNNllVdrtEEi9GQbMQ4y9uSb/oI3lbbD6APx5RKFQ+MRLwlKk0YIfv/2XOEGIEwsHKSIO6olcd2caRcMqBB4XnfXtkmONQxMeiU6XwmPopUSzRxtK+c0lSfTLc/L/oJEuov8UJ2hcLlsjVPEmUagpXrfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746383393; c=relaxed/simple;
	bh=ZGryxu3FpOfqS7UGfgnFvM0U1ZJP+DuzUv2PnjFcmwI=;
	h=To:Subject:From:Message-Id:Date; b=Fb9Q8JOKvlJiydxz4szvwz5Tw+N0gTn90PmB16DQWxkUbXHrJm9yDiEDQDphxPo26qRUktyayuc2YwFqUsA0z02fFxR8r9KCtY1020LAvJqF8EwvTZKTvOKWUo84IEigCp/o6T7BVQ3+bG7/AKmypEJeZrZSEfKa8VCXzqejBDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKidxA5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKidxA5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98471C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746383393;
	bh=ZGryxu3FpOfqS7UGfgnFvM0U1ZJP+DuzUv2PnjFcmwI=;
	h=To:Subject:From:Date:From;
	b=iKidxA5G/kMvT6XwYjUZ0qTv71g5XUa5cr9ILU9/LD+FDxwpZBKDVKaCz3afdo41e
	 i7tStVgDD3+UEC6MLyyPTm4toTfdM5fhdTHML2Kx8xlBsrUrB+Won7l1lWbC/ZaQxl
	 oOy8sKX/asXfFoVDoKaqtxZRhTgPOJrJPaxvukSVOJtJIHhl2Xqrr9LXIM6gypb2jc
	 MPRZAMwrpyBBUIi+65hH2x4YvfOfTJp4a29t7Pj3hnPpMWWXPtz6yBoBWMVm4cjuEB
	 6XVFvpvD0suWJrDEHIS7Qail57858v/mt+5ArQhqC0YIihIZ9Vrp+cKmFo+KagIqfl
	 JjlMNOKtktmxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E795C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638339357.24447.16646425255744515044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e581dfabe1a7e6c3d4c6d6d7b824c2ee546ac38a9b8abbba7639385472898bc
Date: Sun, 04 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746383393
