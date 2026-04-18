Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C342C11CB
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776486454; cv=none; b=VATy1LXZgEjxpA15lA8a6UiwqXH16ZoINVIDg65A/BI9fMVka5mLjgpXAveXnmLK9yiM/gputi4cI836zd/AlQgjQP9geaxbrwETtnQvAVS93+Lr1Qb4zIULC8rGbtSJ3FGzQaI6Z3V5q1h1xkRv3RdEwad27fraWzuybhNT24U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776486454; c=relaxed/simple;
	bh=VTI832duYsaTN4LHqkchNX1KfSzVlkEELBPzk6r5f0I=;
	h=To:Subject:From:Message-Id:Date; b=WO8r4Fwj1uDz8rY6aeFfAEayDejWdsYZ16zZyGmddhsdHJymMBUxUP127m+2nfqdQ5LSKpVz3sY04cVEIpedvF1d28ivvk6UyusF+5aIEhXrpUSPg3Ulxie+Wlc6O20G33LHEYtFFvDcV70/sRgXP8l3ZIqqH3hmbAyaBUqQnsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVpJzI67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVpJzI67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE170C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776486453;
	bh=VTI832duYsaTN4LHqkchNX1KfSzVlkEELBPzk6r5f0I=;
	h=To:Subject:From:Date:From;
	b=gVpJzI6716Mh7A/6iRsFvT7dHSPd5TIEpSgaAA6EfRF+EkHFe/8YSGGLXq6F8w33g
	 GkZhTZG4nMpRX1X0d+j8Cd0UZ4beNideSRxzJA51/d2dVHZWQ5vIhkqaamIXtbl61O
	 d0EkiPccghbNTAQ4voOQQQhrSexPzGPDqFrBoOmQHM7VSaKN5cN8QbtvBcnqUicw6U
	 HfGtvsomgovInkdns4PSrhFN02st5PMXPeG0t82Ya2LedZxuXW7JbuRjI2kMbash+S
	 m6078/dggClaQtWAU4nqVqE35hNSj/dsgVgT+SP/2dsFN5wSnDCO2puC4s0ZeVjLpH
	 aYAepHIbt8RBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BE3F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648645374.26307.1960785293587659698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d584cc3ad78b834b75f705eb3015351c00f40f93775b7478882eda197ec5d1c4
Date: Sat, 18 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776486453
