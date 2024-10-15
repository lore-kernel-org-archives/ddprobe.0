Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CFF6AB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728960954; cv=none; b=cas4u7pMnH/Ko4oPsuvjlZWnpcO3+aDGoVzCHP8jo8pBb736rX3YN7McZ2FiSXXiVFOpaKSoebJA+kWu3AW8pfHJNZOa8772bQ1KDwwD4YnZvXMB0SBkhCb7NjvxX6PmypYjCNxgfBmw29Sd/+1004HdcCOTauzR2W6uhy4CcO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728960954; c=relaxed/simple;
	bh=itwX/DjYEPmTPoUSqFi57wXrlVRdjI118gyn/H1D2xc=;
	h=To:Subject:From:Message-Id:Date; b=OG0uJgq0cGTjX+F0mmD/xnkZFsKndjX4J9OeaozovEDkl+xTgIHE4s1FpJ4tU8ptcle3Uo17bj+131RL2gL+qIV3Qm19OLPvHWPRQkAD6+UB7vU5b8UAC5h813UUz9goTLhpNnWsAiTmd//LX9nXuqoM96q2LuvQSZiAfvKAAUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXjokBMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXjokBMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB589C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728960953;
	bh=itwX/DjYEPmTPoUSqFi57wXrlVRdjI118gyn/H1D2xc=;
	h=To:Subject:From:Date:From;
	b=hXjokBMHk4NDcHT0eAVawDlmWEi9Lmo5QDJkFZYhUKMkhqrYvSEbV9MdyOt/P6wFL
	 NuG4ZQifFMjQlMqWc8YbKfpemliHGZulWbdju41XWxJQf6JvimySSslWU4/2+4JAoU
	 +i9hIexlHCcy9L+xA49vpnHkPyylriLU+xp+alJBqcxzMUP3fWlplIcBFEXjxmbtzn
	 z5Fi87r4oRD6ieBGW4qHQqKgigHB4s/RNQS081DTD6OrWrfJfVtccDZcAeg8x7ybWH
	 YiZiGy5wSPO6WpnSyH8hFln5vK3UC9LzLmCMj6wj1Dymrb9yDll8TqtoguQTr8BvBA
	 S0ljjvuyaEdcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F68D18140
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896095359.10147.16509663081811367874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4ea3c47989af25ff52d34dc5846195fc015af16e86ab8c6cb2d535d6356cff
Date: Tue, 15 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728960953
