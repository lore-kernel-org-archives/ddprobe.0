Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EACD248873
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778851234; cv=none; b=pS4PYuvW+qVJn5K4GcAQdODPtQ9zdLKVmIuDDi8Ahpp2ZPO1iLWb4CxKzl5iEnpA/nmS7jMerDWWkovhFYap8p1hhns7yc2YP+JkzKzS17qt086DbNjjWg4TLc/rrX7coD97lK6y/6dpX0LHgSuGhaqyA12+xvgj734bG6WjU2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778851234; c=relaxed/simple;
	bh=wEqdq5T1XexrWppsQRwCMYjIoXrZIwc6TqvxAxcy9yg=;
	h=To:Subject:From:Message-Id:Date; b=XRHry+KXXLKgISOutxYjtS17du7LufZxEMi4VSLOBByv9ya1C6KNUtCq8SsKhJH8kmPlYIMZ5gEyBiOoa6fM6KihitbHBm/sF/tvCHWB8S+14k5beMqc9ODJxk8yA0NYHJ1Pi4WFny/REIgHfqnElnsx6Hs6J0t/EEK9K9fFSZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scG/WnHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scG/WnHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9060C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778851233;
	bh=wEqdq5T1XexrWppsQRwCMYjIoXrZIwc6TqvxAxcy9yg=;
	h=To:Subject:From:Date:From;
	b=scG/WnHq8b1L4MIZpycBewxAKuOG4/jjYlLgDS/xf4O551/jf22CF9D6xvp8tpQZl
	 Cd+fHj254j9zayDrmeZrMWrR5n3lsYhe0qsm3EEOHLqGPMyYjuHClG0EJYHnzpXmK1
	 pD47z6BSySwl2URcymgLJLqSSGp+zwCeZjcKqw14sI3eun2tuYLhCZsGyjJD3fE56+
	 45doO+ukmOyZSX9HAmZYWUAGKOJcGUdsvdg3t8dHLosXfp/e1/R9ThkK+yjg5ntnwu
	 CHo+SovwS4APazt8+piv3mnJqybc7eBsNQGKBQpzUxKdEso05gZUMMOe/c0lx87ZO+
	 sgcD8hkpr+vQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5805CD4F4E
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885123373.31761.6000495452265369419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a182a6af2d51702b3d815c8701d8c90712c6eb5656e9d85c3ec35cdc25cb618a
Date: Fri, 15 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778851233
