Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3211E2500C5
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733260554; cv=none; b=nn4muksKasNZNgamUKIAhZEj4bl6/uS/MYeGdu2IAxY4Jp1myDaeZGSqXqSgttmz6W3xoM5+AlZdM0+yI+mLaz3HEkxa2PNOCOwW3IimoyZdG/MrkPmyGu6wV2LdSLgYZRM5pXeyzeIWcTo/j6eQ+EGBfe7ztOFWdpbOtxzY5dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733260554; c=relaxed/simple;
	bh=twQ/yho9/JiwZSo48F+7vSWT8z7mZh7wOBmf61ccsVg=;
	h=To:Subject:From:Message-Id:Date; b=a0dDAGke9S9pOgoSggr0VPJxxxkzI3/v4hAkmpkG/cpCBzSVdCKf7iytRK1d9hpTN1O4u5vcHs9BNTDFTI6GKH1TEcMJsPbOwsqLYDJYGapuLZWu3M8fh01EwNikuPxkCIazLcGMdVvDozgHdWzefdcZItLNInumNvL9Etmqh+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4Vjhu+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4Vjhu+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA83C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733260553;
	bh=twQ/yho9/JiwZSo48F+7vSWT8z7mZh7wOBmf61ccsVg=;
	h=To:Subject:From:Date:From;
	b=D4Vjhu+Y+WOqjHq4u2eWCHFHChjs/Ze1XhS4ML541BhvBFuJ2iXbsyUARd6nXm3eN
	 AfVjGXKSieM5Qs8SiXGTfndcNnrjiS73x8OZiwdNXY+hLleayHrPcalqTnW+aYVRSl
	 LQ3At1yBg+jN0Fbsns0HIqgq2bcQroF3JZB3799/kcuUIeVUpvp7W/cdu5A6DbWKmn
	 JKoB25Fu6L/HzOpOh+DyJlX9LZrhbqlCxGIa7cAI8+C0Z+Qw44yVROkXvtBhu0BmA6
	 LdswgfnnuVq8FuSuQh6fWWS7MCBNHkERYDzlrS5ZGSOeJIsvCXCaYyviLdyGAKT75s
	 VzEcMdGvOH/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DB5E74AD8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326055361.27568.16831978990998491385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61722134bc1992402f177de408205a2a4f1b1e6123a4a27f9ba39d0cae7631f
Date: Tue, 03 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733260553
