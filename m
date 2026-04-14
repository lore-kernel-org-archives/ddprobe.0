Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41B837E2F3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776201454; cv=none; b=Y5KMPo+Zz90upyylZ0XmMucwxYHAzYwa1xI0a7Yx8QluLxfSlZEiPLRciSywS5zyfUNOgAaWXmbIACknJNnsOJ03mrnamaxmlzhF4ZCW3SMSODUR7hJ1hZpfZ9v0SEeiAYuA9KziLyVAqC2HOWA5n7L3EaeUTA3nH0OOjrIXu/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776201454; c=relaxed/simple;
	bh=yfHlZM0zumM7rjN1sEGhzgwnIVaipcsIbcYgxK1rfuY=;
	h=To:Subject:From:Message-Id:Date; b=ibTulLR1OOeNCL7hSkXUnQ/qw4KopWHkLN/USpQVYQ76ojP4CF/dtg32ys6v5tsHOL+Loy5TuLkpGf/Fq4MKz0VkO0oOBBxYH5lLQ4HreWdFgnnKImv75CQd6Qs5bZcgTwA7zHxCoH9Ch899rMsaJ77T1elk7u/eOM2dxwi84as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PryNI6TA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PryNI6TA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CC9C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776201453;
	bh=yfHlZM0zumM7rjN1sEGhzgwnIVaipcsIbcYgxK1rfuY=;
	h=To:Subject:From:Date:From;
	b=PryNI6TAbLiB9+DbyIn7sRBmuKoLWiXsfaTdJaK56cZ0SMYG18fXYKFdNIdsgMpAg
	 rK7yLmXGHz3h56b15vmlEAmxyTL/SN0kfTF3nc5pekwJMk7iOFhiXmjBx9ixoHsHnz
	 TNnKnaf8WhmPpYrEFe+ak731G0faTO0I3olB8JCs+z0w0vTHMRDbNsqrQHS/az5NM7
	 sEich6/PxsTSwbJgmnjelSu93iyEFrsiz02VrzTMFRxuqPZiYhaT8IZ/Z45UZldkMA
	 bmUp85LgIOaNkbUeZ052mHEfssJO6d0ywV5CUxbgpS9PZMLLa12bVW1x7fhpTinv8c
	 yc2AivUlpHY5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B055CF9D0F8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620145368.334.8080632263786647795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07ab33509283522f02a3293132ea9b66b9909c47ac7b8dc05b2859be416706b
Date: Tue, 14 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776201453
