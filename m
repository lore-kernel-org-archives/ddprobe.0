Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210C0352F88
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768160634; cv=none; b=nRY8NxE9G8nyYBDPMz5YlmEFJ2kFLUmh9y8ZIzeo2BlDk/YfWq4egCSh89KI6RoyBSMUy8vJ4h26Tv5Nv4kwjDUIKTdP0oqO5pQduhOp2uQwntUE5coSB9EcYqQMwR58xzA199MpL3Y2zJpQDqL6+YvRfoujgTidhcwktr/lJDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768160634; c=relaxed/simple;
	bh=Ta/6YiBhztDW4pK2/K6E8MereL/H9bUQMMgyx7d4OUg=;
	h=To:Subject:From:Message-Id:Date; b=jx0awpgvdPHA5pvbBKwvVbpdsHtpYKxliIwOcyE3fTW6G2tCLkJkolZHsJWwLm0Hk4y8vZYYKRG1LYRXdIMPl3NYxyH7b5ZkILmGld+nwOjgtIXTau47y0ANvSOV9mb4NL/8QrMd4AmD7MI8GVLFL7fpAuekzrzYJ2UrUSO4IjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMSocLr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMSocLr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A1EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768160633;
	bh=Ta/6YiBhztDW4pK2/K6E8MereL/H9bUQMMgyx7d4OUg=;
	h=To:Subject:From:Date:From;
	b=AMSocLr+0XAWfemOeIjBsf39cDqDJGKXA8/qwj5uOl5/UKqZhJKMzyfQfo3OLBH3p
	 A3ANQyFrXfMJbF82nIzCOGbEBaEW/8H117YoJmctSFMCaLO5SoQIEw9WbH1PKStSau
	 +aVf3mkqwuwZGmD6H9R5bfib/OSMBZM9js2h1Xv0Vto4iaZongNXlIuhWQJAyMasOC
	 LiJ6fIpJ1w6O94I2DyD3h3JCd9fGx1MukIq6VGdyZqKk6RD1vxEZp5pUi2Ya/eCpsd
	 mjll8RstgnYQGJN9T1m4dLhs4ivNKYYxzVUKrPV7+5EZsjk1NmWYcRjuKl2G6J3/GH
	 Hc8Qs0a2/CQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9BD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816063358.13869.9693259528126915944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa3e7263e78b608e5820c2192dabf410f82eca13dece7bd7c73e77daee2c667
Date: Sun, 11 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768160633
