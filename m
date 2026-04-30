Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204AE32C942
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777517254; cv=none; b=hspNXeOZCG+9OorE/vZvAfWHybEkP0UDTf+5sASTbz6pxwA6/6XlQoJbLhVJfbYS7gABjOVCouX2UdEKryEW3enC/mCo1aX0fAoaT9VB7V3QmLiIxj9bf30P6+kFCku7EspKZQxb8DDAAO7LMixekXQK9pjEMbkD8htXPUCFDI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777517254; c=relaxed/simple;
	bh=AW9WNSiR4hu7QSoNrrRn59kl9S7vYX++fUFnoMSxRmI=;
	h=To:Subject:From:Message-Id:Date; b=bNvfdxAa5wM+G3d2796hhYq1lhzJHFM+5KeRg0HvExdQuoRa7XYlXQLGh7jw5KMjjacUETKV9pFkeVOUcVdF72hfN3tsdh0Si+VFHMUsTnKUl1euuJKR4e3Zj0iyXG4azM9x70w16vxcxkyonHjWqa5WOYEBrj64DmIf5AdiMR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVI2RlT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVI2RlT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7818C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777517253;
	bh=AW9WNSiR4hu7QSoNrrRn59kl9S7vYX++fUFnoMSxRmI=;
	h=To:Subject:From:Date:From;
	b=WVI2RlT0hZxx0GB4tEs3HAxae22/VbPREDkTxUXlk93LhNBER6mZQmsupDqBgIy2S
	 2U3mFqUW8KQp6ouyFRVNTcHBYiHHwAgKVHPBsAp8Y9u+SdAU92GFEqCqrss6rclBe/
	 5aHBEGQQZExliCmYBsXb7IahOXWtbsBCygaORJU0Bhap+3jBHLMEVIBgPqExJX9iAi
	 BBFnht2j9kRvUtUngDoO0YlSNMM3dJxC5HYldLT9FWeh5DirL11vpA9Du8/vpUKG9V
	 ehsQHdBP8iHazD/P7hnbk2sYjYRcvcF4hmJvhKW9zwb3g/IAhvWID1rSIhSoPf3O0a
	 Qf/7zJbTrMW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA55FF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751725368.16838.18077383041888741398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f974ecfe18a5cb3fff151e0e41302dc738f9d075d154f368ef22919e7ade15
Date: Thu, 30 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777517253
