Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3732438E8A9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782649714; cv=none; b=P7pa6sFHVhLMotPQVTK97SH6fDcv4ccprD2oXdMAO+r7KM+jKZTJXUT/zzvc3Bnre1dk5nvPp7wDyO37BDgmqqkE1/E6wNaylS2ByNxhusazrtmazL7YOwyVf3qTF3hY19iqZJcFqEOxtZ/37sMElXOzAMmbASOiofs8G4HgxkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782649714; c=relaxed/simple;
	bh=KlvX7lghc/yXE372f4l78Jcn7yXQc0xVueUzkPbFphM=;
	h=To:Subject:From:Message-Id:Date; b=IKRtMFA4juhcKX68OUvK/zVW5lyQhaMhTuW4LOfCpSGtEZwYCVpsiNSN/qdRmRj3T+C3V47YY2T/xnNOidtZHVdO/mGhh0ydfwAAjprFxrIBDD0W1jtceJsMQGwovCvsehFVmtqer6iKgJsh3nUjWo4/gIym/Z6YqUO8Zc0HoCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMk2wcdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMk2wcdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65D3C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782649713;
	bh=KlvX7lghc/yXE372f4l78Jcn7yXQc0xVueUzkPbFphM=;
	h=To:Subject:From:Date:From;
	b=GMk2wcdZcBjpqLu12og5lX7a31oouSDlpPRfepuK2us15OS768hC54x2DUgIFGwtO
	 TfgpZzwmtkfc3uPt6ZvvpETrNoGf0U7M8EoPXxAvvgXMyNolu1M0fRAD0wQZqHrl6X
	 FlqSrFSUMtDVqDrt3vwVxTk1dm/aYnhDiu0uYkO/9lwlQ8X+n6yyhIE/XlwjDP0izp
	 P2Ok5qemFsDHojlvNddnEwPxHwAYVQV6RNNSWy/bM39FqBJWK2c2R1PGgoZqOr6Lmd
	 yBP5abeIPTCKwMayJDWAidAQiMDPHNJ5PyRgEkA4ITOPISuj5zmgedQZ8DysDNwTZc
	 VtKr8dLv1HKaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82A5C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264971372.13623.1836013140932609894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d5a77374eb3023aa2ed7b44536f02d3627d3be3888b85b6dee0db4208839a2
Date: Sun, 28 Jun 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782649713
