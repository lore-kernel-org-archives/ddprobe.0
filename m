Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856983BB661
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785394234; cv=none; b=ZSdpAaojLwDFjBheXc4VdlJASJVW8moN3PasY2miFgTkMPyoJPbma/RW8mTscvp6P5DOjUwoFF0MuRzTHvXd7GUNo9rDKYXi8dvtBmXKnHZ9SqUohChFjFuO8eWh6lvj+EWrZMqUGCXOsXi7IkUbENC4KtGh8gUsv8eTJDBKTGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785394234; c=relaxed/simple;
	bh=uBRqj8hiNouiTZUKaPjgpGNJoJ98woL8aHT+OFulO+s=;
	h=To:Subject:From:Message-Id:Date; b=Ow27YY4QPdLhC42M21aYeNDbQmZrNZmvvdhgmKVH93dkD6asDAeQwgvNaHf4Lr68uKgFxaeTveiS4kMPJ6eCMopJmgWuQDZtbxCa6TSzNOdX423B0it7IN2sKOVyQMufYCWCILNK8NuQRozlcFO7m7U4pXOW4UYEPr5pCQK9XsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GguW0UNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GguW0UNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECCAAC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785394234;
	bh=uBRqj8hiNouiTZUKaPjgpGNJoJ98woL8aHT+OFulO+s=;
	h=To:Subject:From:Date:From;
	b=GguW0UNL7EaiKMabEffengD3tMU7PuY4IjexS8/H08WibsWn3Q9pg9UCtlsPpSGfH
	 LTydptbSLBEm//QSStR9BSXET3ETvm7ywsZws8nsls2p62pIWpEDehYC3X4d44/X9J
	 Xi4KHbln8G1dFVkR7le2Lk4PUbvnH3a+FKqB7IeRkwekqitY0trQc1UakSGBsIjpAx
	 b+uHA0XJPL3ES5C1JrDmixrmGPBg+AmctbJpXJFZa0d9V5BMe4wH7/jlBz+/3Jj61d
	 Gp/8kBVpoIA27UwxbrErBWIK3O17ldkVYq5nXh5Dnkoi6xHBoAzkMIsWQbzSZFEIAE
	 6fpmPo5T08XxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA788C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539423375.18767.4602722719850451799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90d2f6bb0683a1017e31a6edbce66bf5af597d825baa69054fac7b2db90eb5c
Date: Thu, 30 Jul 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785394233
