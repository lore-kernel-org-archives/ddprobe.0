Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C2B30C601
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760618393; cv=none; b=QDSn7Tlx5mteqgRzITYEah5x6jPBt62TM7L0LMrA0Hf4D9sSheXwULwfD5vLMR4FzeQ59Xz7ilqNbj0jVbcFAzg8i/FwZpaFbbzABSii7eBLl4u4KajaSgx5lI3Z38xmkMzVTV3gUf1FyOih26gs/aTHJicE6sQ0SNZz0unPU5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760618393; c=relaxed/simple;
	bh=7ydxrG2m39J/DIngf7EeXQb1XLb7dipJJf7ckq0aAj0=;
	h=To:Subject:From:Message-Id:Date; b=sAFJdhclDsJihtJDVF4FMGc64IWK9GtBwnpkuQfPm62uwWvSSjoelt98/3LfPuHz5rA/cMJeDPydT2eu9ZpLXZtBBPj6qZpz3mLuYIRyS9nOZzjx94m0QjIZS2l7KVTUUvpyZWUNnAfyi901Nq4cpN4X6JaBhOT+BzpvhSol1w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqutizi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqutizi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B26C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760618393;
	bh=7ydxrG2m39J/DIngf7EeXQb1XLb7dipJJf7ckq0aAj0=;
	h=To:Subject:From:Date:From;
	b=Yqutizi4Uit9gFts+5ruHd1L4YajifStrchmMHhQAQrW+DFcMqbEnosF0OdGYNO+D
	 e5agcjV7s54DI4AmR7tNEJTtW4KJp7nqxPKYXvzJWU4mZVfwLHa1bfTQbRp+9EwZx7
	 Fku3stveFpyAVZhtxNlypeECBB7QzwrMtPuu79Ekr4JQxBxMccOX7r21UPMnu/yY8G
	 BzkCr9+PeQZpVbQAWCg5AyPwWV41fjzfSHQDPF/vzaiCUPmgkxec+fDsWcY+Rwau9b
	 hUUVCzuhth7ZfOG/t3fzrndu0ieEhA1rSftZnTONl1aUUFabpasPSQwo19isbqS7Ce
	 TOiB5M7QyTQIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F59CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061839360.8583.8512486896394166701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880e0df5cd5924cf8d8e53e6d5bde712095673a8efd398230684044f34874db5
Date: Thu, 16 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760618393
