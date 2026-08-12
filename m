Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF683DAAC9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786523434; cv=none; b=AXg2HyPDE8pP4JFxFmwvTmxmoxTrFTnLbTon8zQlfI5c/3k9Zp6InMK4ftGwLdsJRxca1pkcTLD0JClmeQK+1Uyv+Lnkop3mWs6R6gV2oehx8BhWEh/ePxcmzjux8pnHkzIin71czy2vebl7mOqrBkkCRWkWRl1ZtK/A2mYrhf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786523434; c=relaxed/simple;
	bh=VDqteurZyZs1N1axF8U05USsmfwgk47/wjE0ZCjykQU=;
	h=To:Subject:From:Message-Id:Date; b=cYXFFSeqKH+OshgfSsnAMJ4B6x9gJfsNeNmnet3nbQAFi+T+ikjzrndWI16bp1ZZXa0rr8uNxpzzCRfK6Cw1zCYHuUhpMlfY0l84mRZgP7hlntjnkabKeh2cTlyaPnuP1wUyPReB6C04yq0mClHZFMruEWUxVvqzS7b4O1xxTrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU65MuHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU65MuHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED54C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786523433;
	bh=VDqteurZyZs1N1axF8U05USsmfwgk47/wjE0ZCjykQU=;
	h=To:Subject:From:Date:From;
	b=NU65MuHLMuuxXeQmVVDrPm9TxHh9y3dpcSYhQgOU1F02aGpBn1gvkKuNTBcVJdx6o
	 fSubn4XDuvC9cToQAUqTdmOtOa8ORG81QIfRHon7nW3SijPV047Aj1Iv0Fb6HKMovE
	 mc2RwElOF/Uf8Di3A6S9gFFCzLCJfhykMZ2rlsAE8VPBEX0UHgtjJ0yw4gc9ghPE0W
	 J+ELuljtGgilfRKX67pHTguH6epaGbLjSUkmpoVjpxTyqkSpZVBxsbWqIXpEjPZ8gd
	 Lbln5G//OE8/mxFBqW9dUO6/MkAz0U4Yicwai2OHRQSaXnXH7q8wmF5OhKMpqXnHIx
	 aFjMM1Jp+4xGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C3C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652343369.24041.9494881804708749564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265dcbc9288e5cb1326cef2f1fdab06b8b884123092c316e4997a122cf71fa3e
Date: Wed, 12 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786523433
