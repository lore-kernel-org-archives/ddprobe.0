Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2777B77111
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750660194; cv=none; b=EFXx41dZYFs0aQazqPAaC9MKn/uUq7hUt9KZp4uJM4NL0jyyr7F1YXF0e1Ys0FotBndNeivBOst3tZ0mNALAD1cBF4heUFyunpzMXpdUw02rDEIW2RNoVNGlI0YZsFxF7CTLhj6Jt9fbREJUqcL5GlUcQE+GqYwG+zpjXVqvr3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750660194; c=relaxed/simple;
	bh=2HdLsaEQSKj7AMpqmgazLAqX9oUFJz+lx/h+tJEzJEs=;
	h=To:Subject:From:Message-Id:Date; b=Wzio/0lrT2C37gVHAdpRn0fsD27yIeNhThA0L9wtdg/O/4BiYK6FTNo9o3p/SgP25YfmEy9uXQPOpN+1sTXsff01PiA1/KfNfAOfomi8NKFehDBBta9nC/XtBLmq0NPpGmD749zOoBl1HHmsxIcc1aDtSkoUWPGT9LZLHQXGGUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK7q0F6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK7q0F6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA70C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750660193;
	bh=2HdLsaEQSKj7AMpqmgazLAqX9oUFJz+lx/h+tJEzJEs=;
	h=To:Subject:From:Date:From;
	b=fK7q0F6eEWQIdevcUCtFfbMAHl8ZiJZUKbn4wAakrhAvOBQWGUe4GIOi8BEu3wRDr
	 /JScnP/sEUejboX3FWjNtKj0WBoGogYT91mULxbiXE7tyvSlOXw19YuV9I+G5zDGvl
	 TKNCsLRrNGmtg+OMcTq22iVPItYnFidox3WIt2+Bym3RHYWS8xJlyj+dMWDnDIatvA
	 1N/rH3l9TdrFFoN1MJ6qir1hUg0dF+oQAtptjp2bB8JPmwFdepaiZacJ2t62lOYL/b
	 fl+XAdGxarvwVS8OkGiLPKVcplU7KOQQEVVqBo2lgp+vFOw7iijE3rYpOuuiGm2McY
	 dawT7UTdO6+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDBC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066019357.9862.3735106420112817394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96760ab859c10e2cc23ac102655516fa56276bc7c1d33a72c44749d24c1ecab
Date: Mon, 23 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750660193
