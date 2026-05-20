Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E0739F182
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779316234; cv=none; b=kvH6aUvg5iLuKU97/xGaBJAydL7OOaN+tPFWgIrpoxy8QlxXzce2c/jcnk54mSyBNXXJ2GL3W6usq2jdhqIFRLBXGyQO7X/0nJD6E8kOKTiv3ClOhABIejMWs0pqUPKfN6WbAyH06J/UTmnaaRJDnERxyjSDYvD2pkTaXrVk5EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779316234; c=relaxed/simple;
	bh=DKQwnPL3CQkjNy5OpP5uW3N/T34vkOm3uuLvwZYGS5o=;
	h=To:Subject:From:Message-Id:Date; b=KVgR5ceLxZd0l/2QzYoKb6zZFNa/bKHUKF/bODs5WTb6ctuv6UnbxAPQKwLXkmaTlBtueSOGMuQU3Y/3GoE7RqcZhThVkXDyvehxhejxcjSq33vxOeeTtu3oSEseLLkMYX/crpFp0q7EX8/uP5AOEu5eHPFKoYssevqCXW24fac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHl/As/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHl/As/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F7CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779316233;
	bh=DKQwnPL3CQkjNy5OpP5uW3N/T34vkOm3uuLvwZYGS5o=;
	h=To:Subject:From:Date:From;
	b=IHl/As/oId+oJ0Abv5OEseeOIRrVa0BWlmC97vCXuq7R4B8d9tNQtN8GUBJYsPS0/
	 qhXqh/EI1rQLo4ixWHZiL5B/7qEPF4/YLxccQGw/MpGvceGKCN0tSXXkv2a3/0L+kp
	 zUmyU7/RNZa38Y0LJImOw/VZNymf8YyAzfKEpz8Fr0FdMD0ZIpXmDDYWmVbev8CpFf
	 SnEKemHybU+gcof+MdHU9833Dtybb+9aRfCD+rxIRp4xBLFnxIcs9Jni07Iji+Mkcd
	 jLpS6MD9yQE0QVgWJybSDhP88JYHeDyjzuayn27KiUpn8kNqI1CscyFpvelNHHpEhk
	 Ovx0pKk8s+3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8297CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931623374.1050.3487125733996420795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2095c77bfff53f37dd9c74bf6a2ba196ed21b82f3b03a6256db848358f31fde
Date: Wed, 20 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779316233
