Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9B93DD523
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773850494; cv=none; b=C1rVCvlVoXql4xiUotE2UqgZfP+OaGfV8DHRlmIY+jh9vMJA4LAUIP01HDduw9wAUhdxJ/g8Tpo7wJYADptwrwnLTeN3Nm0N8CjZTflIkxj8GDgjfuaHR/KOXEr9rBDoIDKKtdKkfWZjNWAawvijoaelY3pZdaEyQqOWl1dpIXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773850494; c=relaxed/simple;
	bh=/HwogB0aVHTAj4jhzINumntJlpygT9tvt9bHcy9Tb/w=;
	h=To:Subject:From:Message-Id:Date; b=cUHz6pyjiChoN4f2uAenydhO0LeVWOGwUPn/yyf/js7TftLlMeofiW8a1LWBu0kepGlZCEuRfVFwmyR2alNmi7dAC4jeAxXWay6ucJ0k7GyXb4jwGyS6Q7IEkhWO03E5ezW4JL4ihu0GJIccA31dPFUxju/Nq4JZysG5kfD0Gnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1T1wnjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1T1wnjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F78BC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773850493;
	bh=/HwogB0aVHTAj4jhzINumntJlpygT9tvt9bHcy9Tb/w=;
	h=To:Subject:From:Date:From;
	b=l1T1wnjsz4Hs406HeK/SW/O5Q7Aw3ZHqnACb0OKAjo0vdSfla7IUC1zEACbu0tMMJ
	 V6/KQbfylpiwo/+KEArYP+XvlONUNET42p7Bg4u6ZHsGjOZsSBnawzd/eTOjD2QoAf
	 cWpKKiK+YtgJ+L+wmb4JX1/cl4QTDzC0IwlIHK2yJsQiMyy+QXcMqJQQUtZej3hh5Y
	 YB+v+JHVGNy313LaayVOVrkCWlF3M4V+e9LrrdD8fnrykrCXCZB18yhtzFJ8Jp6L8Q
	 YgoGMSRP3ZYG957VwAyAxdfwrNPtz8AZlSKw6B0TrVRi1mDNVhb9u/wxUljfItt20b
	 mecXd1gh55Eeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003B10775E4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385049358.4555.18030890063244867367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9258c9f7f3e7552c521de37e0aea9d674ea8461e068598e0bd91f117c23b776a
Date: Wed, 18 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773850493
