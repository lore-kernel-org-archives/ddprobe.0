Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1850A296BBD
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755700794; cv=none; b=dqqo2BmXhWEuooDx5eenJdARI7YVJLdZSNvd7kyiqA+BSkOh9XYgLBjhKpEgo2YIE5dhyIFxwUxSjLBB53s3wVlmQGJomtCi8WulVotayfghkwA2DN8dSkWLkBHrI4gwWbxD9tMso7a1/f+J4exbE3VQp3KcmYE6VA465Mx6u+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755700794; c=relaxed/simple;
	bh=tHqql0zAj+4+vjArjchSnSVEk7Rv+7+qpF6Jw/y6cG0=;
	h=To:Subject:From:Message-Id:Date; b=ZLT9kxCmP2bA7Z8IuDrhoFMtpoo5JScfkHWDvQFiTfDnzAHwTy8rpYCuyFiDLOZg/51w3B2JJfV8jHRSsc+G3kbdD5j3dH4O1eIbF8Dv55ztbYebzIiqzwkqwNsme29lGHPiNvM2VFWh0I8toFCLICZmWC4vURAKST6HVUSLPMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBCYJ6mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBCYJ6mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBEEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755700793;
	bh=tHqql0zAj+4+vjArjchSnSVEk7Rv+7+qpF6Jw/y6cG0=;
	h=To:Subject:From:Date:From;
	b=mBCYJ6mxnAJoW5eN/VnSzAi0FVl0fk/2dyrtWCUNEbAIdFeiBwhu6//D8HUa2JZjO
	 melu6c6GKX0gpWe2NrZwuJBxVTiSpB3snT3ReQ96r1TVVrx5Bh3pKeOFa6lRHhj4vu
	 kIHPiibt5k8EGmqhUWV1KSEAIqEcQ/cMf1v6UJFBjE8PShNkQ0z7Zn+B3KuBIqbbKB
	 60udfUzj8/z80b661vQnZEBt2EdNBhriHI9SkBwBfUPsj9HkCeHp4y5dIFmvAmqfBM
	 dl21RmjAbW9cPJCL1eld18MaCPRiE4I/eogvFGGecLLrIwgusAOCnVF2EJfgIrm7Pm
	 zekardZkAOx4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F464CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570079357.12671.7770427075898998603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2820a4ca86786357c79ff953e5d688931dad5b9ed5b7f1e858ce8faf0ceddf30
Date: Wed, 20 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755700793
