Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531B7158DA4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719841523; cv=none; b=G/5mRHY1oQJg7NvTQqLFqKnSeOgIv8L6cKlbaTVIgvNRaKx75Pi57zvsQqG2iLUQqVzBRbPfx8ZBkpxvZB7YOR9pEI0xOp5UxCcosd6KKhVEmOH5D2zyprSbwMNitFT6+8ZEfT9QWo5cFqur00R4e5CZXTaErjaELUyFz9/8hyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719841523; c=relaxed/simple;
	bh=415Q9pTYdzOenvUd0OLNh97GE1LR+jhqkEJ1xDhjfGI=;
	h=To:Subject:From:Message-Id:Date; b=mZ7o1HBwsDHkySb5YNTCDom5Gs5rIkT0A7y+opyYpyxDh2Phzl2sEj/ZXDEAWhso9IJrD2zvLUKRh4KtukIGMAIrEki/8maC/pf46T1jo5lGHfLe2soa1KaKhXZTta7GT0ckMnylbYKBcHNIKtG67KdHnf4NTW3yMKGhzrpl9kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQv13IH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQv13IH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EC7C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719841522;
	bh=415Q9pTYdzOenvUd0OLNh97GE1LR+jhqkEJ1xDhjfGI=;
	h=To:Subject:From:Date:From;
	b=vQv13IH+81uLC8udYLGUj8WyBPitOfyBxXocWryrPck/k40D93n7FBOyNZCmEyGw1
	 8fMWav39lWBxCX6mPW+ZKakG0fwT5f7Wsha+BhdBE9lpImdc/9wB+c9xBh2SfnkuAl
	 q5EGqcDUvicv9klFdF5nhz7hnPuwDtLNcrozHLoJoSiI15vqNRAjQfvqfdv4OP4I5y
	 nSiB+ef0sV8q1ZwT/aCZfJqp7NpYLx+gKifezcYTAOVIWdnJyWOUUH42jOWWs5zG00
	 MY90l3MU9VkuqPsOtXeTvNGUD8UGAXV+AunaMGD3QJcbYQkEtNEKgBSb9Zwd7m+f20
	 N4sf+x+6KwHOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21AFC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984152278.653.1408697004186396444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3efcc8268fe62cb81a8d8e1ca25a1e6f8f254492b113d4fc6a87aa897771c92
Date: Mon, 01 Jul 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719841522
