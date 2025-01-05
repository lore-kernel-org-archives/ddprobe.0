Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D78F84A30
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736046954; cv=none; b=rHpV6ngiQScKTqtm30u3QqoKwEUzOEZqcd/VgUBqNGs7RM272+2w6LCSscS0zyux7XmeHghB+r59POAt95UNc05l6oBFhLSU621z1FNr6uNMnBDy9RzX+WvUBFxO7Z4mtLrJ7mdMwpbhQxfDqRgcxv3X+h70TUmgl3Mh6jxXwac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736046954; c=relaxed/simple;
	bh=AFTipS8bA8ngW+Tcn4GdZ84hhtQmYqIppr3L44pY9Hs=;
	h=To:Subject:From:Message-Id:Date; b=tEn4U/5xi6uSAQ2bev4iEyGvKrGfsvTIKEBdTCw1F15WdTK6tzHpNM/Nf85tPhULr8UPrC3275jTvzp0RVwoZaBGEfGMLvGkcstPFqyLlEbePAYeeQH0yIR4nCadX9bJTZtQEwLZbDlOt3rCcenA6ts2FcTQ/KF+T2jYc6RYARQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOVf9WgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOVf9WgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD13FC4CEDE
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736046953;
	bh=AFTipS8bA8ngW+Tcn4GdZ84hhtQmYqIppr3L44pY9Hs=;
	h=To:Subject:From:Date:From;
	b=nOVf9WgXgJkL5SctsnfepIPuNo5uS8J5PKcnXW+BsPtvAErp5b2G/V0TkRf3rpYHX
	 EWcZeOKtyiPeBuq9lbcYdotyCeTaAY3oA24U/XyXhC8+7QD+RflYskOOXJHwPvTq1Y
	 0yJoRWkaYy4RArDxLWgCIvjNCgUQk5ROO+YPh41lGuj6EwGKOnSlpTT/ohlKnebcrD
	 OUIBioYwmtxmnafiJeRzvww/u49WE4kIQcrbtuRrrqnXPTP+r08SWCacnzh9Px11pB
	 FbBkdkRqip3ZnP9YAU0C/9osA5lVFjM4lZTSoglMHtfV2Q0RiNcLB0UAmLNeVK6jqO
	 5GuVzwEEHofeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D6E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604695358.32724.12555506467962516789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30f57d316fe9206355d06d6fff73908b2cdae2789ed164c42046f5abd1cece2
Date: Sun, 05 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736046953
