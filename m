Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544541DA23
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716933263; cv=none; b=JV8KGfrRvMdCrdYBgMPK26slBz0/Ub/7+0fnJkWERn1l8ipgfHYl622n7qbIF/OfoLV8Bs0jqf968AW4hfHJzMMNWLzBxFZKaQHctmBnkDSQQMd4JDv7ZbM3ABxLo0TN2VtbC3fq3wa88S9jOJH5APfM0GwA+DilvzH3H/5YSY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716933263; c=relaxed/simple;
	bh=h96hxNJSCxjM89wtvF+GiY6ya7SZYQLzZlCb+zWpT+g=;
	h=To:Subject:From:Message-Id:Date; b=fFTMBafsWdF1UYSOM1Oq6JlzMDVvcwJQa+AKApV2NLqn9z95XurhfIy8lp55q5tD/O775LUdUGayTQMGtxhRLrOoaAltaMI9kmqePnHw/1+YGaDwXpLP/8lT8H2agdJfCvgZLt74zOSBeeHV2fUE1xxX8/d32BN+qo4S1VJw3d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Slo+o9Xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Slo+o9Xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFD85C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716933263;
	bh=h96hxNJSCxjM89wtvF+GiY6ya7SZYQLzZlCb+zWpT+g=;
	h=To:Subject:From:Date:From;
	b=Slo+o9XajrjT3/LyTdRkOKRkLw31jxWqGAmMNsD5OJ+IorRPKWc5wpAz1S1d+Ad9r
	 k7bWAvfmWAfEM+B4jR59qHZ7jAvUrz+8toSaRiv4ZaPbJS+oYA7a2UNTJywUXzU5yV
	 RpQYyFiMOVluyjzO8EGOFPzzat6nzlyVC/s1tnSm+4aHocedEq0y/hPExn09x+qery
	 9+vk5NVJ4EvbCJzD7//h8nQqfLRV4OVFZea/hufEPmfC9lr7wTInqixkMkas5vFzGB
	 vvqrxr2qlx0eUnPXth3h1MwR3Kgvw8VQeL+vRfLiEMIUi5yCwqT1c2MvBbPj/q724z
	 tARaCVH6BrS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF772C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693326281.29890.16578247280310268807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a907933bb7942eab4da433649bcc9e579a3fc7fcac5d5fbcdb50da05309d8a
Date: Tue, 28 May 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716933262
