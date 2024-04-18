Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CF025778
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 18:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713466163; cv=none; b=Zmpf9SWXN8nt2LyK3YLpvuxTi15tGE9vHkorT4UUfgoFJ6qmmMdhIHCIR0B0Gl091VXYwx6XhZQPzWNxappa0UhIjt9IrAYwbr1OhziM3FfwTq7NmFBFf5wq7heNmehkeLKAf6a/n/il2NLhThqFWWhKL2MmLb67Pazk6cV08tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713466163; c=relaxed/simple;
	bh=ciXduw5hQadZ3Rgfo7Ud/dWSp/Thak2ormiu0gYnfwY=;
	h=To:Subject:From:Message-Id:Date; b=Ik6/ICmaiGfj+5AZNSVgA0BRv5ZBOyx6oIpqi+ufA4Fv2mB3KXr0Izcg/JTpGwYmhO/+iWKVGo9Lrp3RTDriU+uiRafXmAgGqfLYJEYfWj3jRKjmqmKAbsPrlVl0q3rU/j24uRvKqH76CqGSFdpqsOoxMnEYlK8zHUFS82o7JY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJM3t86f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJM3t86f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEFCC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 18:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713466162;
	bh=ciXduw5hQadZ3Rgfo7Ud/dWSp/Thak2ormiu0gYnfwY=;
	h=To:Subject:From:Date:From;
	b=qJM3t86fihSzNMxS7XUbsZsbhL5UHurywjGjyDuLLWXPrWXyRF8sm+hDtMwkySqyd
	 HYufOciOuvLCT17Iu+2qC/5E8o7TL3x2TRyW+q9XtICc/PhEAPe80/WJ5TZ3IUbHIS
	 qp7c9wpUhihT6AkVfuoXqSMULuihRT9vE7wrDd9ehWomVdQW0UVAMmjWo2SuTyn/I+
	 c5ObnLvb+KR0H0kVAXRqVW55rkQENv2pJsQKsnRhUsz9myMBWZvx/iyrnHQ3y+PPuy
	 7PObSagjurMVkl8lpB9nshKj8DH8UEC/uTKR1SToqFnmFOomGfo067EuGdt8apM1vH
	 TccFCUHDU09cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C708FC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 18:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171346616280.14067.13159338090017781372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ab4326097d8709a4d6a0647ba9614b592cac2878aeef5d973be8403378b7f3
Date: Thu, 18 Apr 2024 18:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713466162
