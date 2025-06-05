Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE9E20FA9C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749119994; cv=none; b=cPYcJUPtDtFYCoVr8U7eL6s2/kkQud1wyid7yxCiRHVa8tAGJJwBH18CZhZ7d8D5p9Um/ws1Z4u4fodFCI00sqOMPHvNUIuCaeDXVzfkUiI9v41Ds3AXYscAtbvqEPkqmsDJDoEtILQSEd781K0DfeRsljQgFaEg6NoYZ0JbCCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749119994; c=relaxed/simple;
	bh=muROKdQFgB/dmXKPpUAeFbMEdOJslLFcYKxllVAuAOs=;
	h=To:Subject:From:Message-Id:Date; b=LOo4q5A5RR62WD68I6PIV/0tQfTj6102/THBv0CIhXc9JYxh+HIx6lR/2wErKuJKPsevfl0DIoKkFTH9DfR99nuJ09TMUjNvKJpEeaVBMCDbgZc8ytnQ4/vkRaF/zos3FN35pKSFQzGRPQsGTZzpMAf/ihS9GHbUj3pK6JPP9FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/BPovz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/BPovz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749119993;
	bh=muROKdQFgB/dmXKPpUAeFbMEdOJslLFcYKxllVAuAOs=;
	h=To:Subject:From:Date:From;
	b=b/BPovz5xo7iScnbCxpYIN4lt23/P25BTjKw21fSv0DSIA6dQBsdz1hV5CcbmV6ga
	 SXDaa5VAgmna3Wdhiv5pfYa8an5NKkx9MGSH4fR2pX61pYMFWZ1KLQJiaeeIJahWEm
	 HbZcn4V23UKR7QayNr+/fxuIkY+NjA6d5cGqiW8yhmTg3d7A6VKJyPtCDkc6lkaJBB
	 bhvdiOONXUmD/EbntWriAAqOn0jY26jRdIoIz41eAArptNA3Tr0CUNVFyXq2NbFzd9
	 zQwIgbwM4k7FiKTTptQnywlHJ9yAeQjYE5ICVs0Hr2sI1eyogV8b7R/MwlXSg/nsv/
	 GhmT+QV5ZqvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916ABC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911999358.24536.560388455015237707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0899b77bc579cefa38afd870db01bb061b64db47b1716c024909f1726be8ae
Date: Thu, 05 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749119993
