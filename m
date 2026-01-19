Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC0BC2EA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768845234; cv=none; b=lITsdDsL93NY/A56J9jhskE3RQ4nfJfHdBYqVRit0PK3IY62HfIaOemDeVZSMVIP8zgx+0lkFa8i5do64jY3XPOTdg50nl1bIDXUTmF7YqoDp6NcdWAbeWIh1iPA/rqVNPdeF5VN8JakE56WxYFz/GdFB7L7wYnVFPFRweD+MLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768845234; c=relaxed/simple;
	bh=1NUM4thb4U4H0hRWED85ovnizn4axqVkZyh4UxuV/4Q=;
	h=To:Subject:From:Message-Id:Date; b=AYF5+l8d4tIRYiPOVScVxsmMhvu6h/gzu2Lvugtpv4y81y18Uid7bj5G19PMg1Hn27nh0xdmV2dRgJ0NPm4OhnhYDo8gO7azQe2/mjoAuPBjoTBxATdwAenE31K/Y9W1uFipef9KpUqsVdjfC/u/0tyPw//HttWbwZjghnI8CbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IID74TfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IID74TfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2777C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768845233;
	bh=1NUM4thb4U4H0hRWED85ovnizn4axqVkZyh4UxuV/4Q=;
	h=To:Subject:From:Date:From;
	b=IID74TfJH0lTTA6GmN5mJFdmI3LOk7hUN3xKutr6e6ZQejmoM5kf2tCrNgh2XTkZH
	 oA8dy0/gB4bb3r5OTIKiKzuwhl5lklp3LyIS8eAA2QJgaUD7UTaLno/xB2P4mbjoay
	 PypdOWe0+vP03UHH+iWe05+fVo8z9wQ7lr8EaFTjsMSbGQJn/06+32Wyb7Razl+gO3
	 tUUGUOqqsKM4KoAgNyrl66tNhx9RFM41dKY7nMrIvPJWnFGx0B/8eJ2q8gXELcbBTa
	 MMIFir+73uM9d3kJdhU0t9k8pZrdwexDkfPqRLjW80vAERgCZ/N3Y2fyc4BQsa9XUi
	 ij2lLxp9+7fLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915EED29C52
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884523358.28247.7455305446918653153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d308c8316fbafe417c5407ff9aaef8fcaaba19721d9ea4051743bb4fd1509a
Date: Mon, 19 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768845233
