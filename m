Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39345B672
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755994794; cv=none; b=EIGEMiKnExGdaINbrJDSJaHZY2ieH8jgvZkFyySvoUpYN62Ei4dUtiGXn0foVcgHTFF0RUN59r+Lhss+v/pa6Q1iT9G7oTPrIfzWGoDjKmjh4MXl4HQSz7W3MHv3HfRe4SeLHhwziQ5RJqZx6rOXsuW9d1+GXaVPN1pfxE60ztI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755994794; c=relaxed/simple;
	bh=KfN/bNFUzLTYWdwz/UMD6PbwDEd3bG73iuzbJy7dKGg=;
	h=To:Subject:From:Message-Id:Date; b=WH4qWMIvXtNc3f15MDbVya1iKOSjDxBETztj0C1P/B+R3QGGnP6RI8XhTWdbNXxsiagkQvdOzHH1j3HwOHgm5MKo88dUde2TWA+JhXiIeYSGt+GOT3pjb51BHnF29uYn29PwnTps1vGI+mPuvzwXGPJdj2N+ol202MOLALGH/Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMdZ/qoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMdZ/qoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755994793;
	bh=KfN/bNFUzLTYWdwz/UMD6PbwDEd3bG73iuzbJy7dKGg=;
	h=To:Subject:From:Date:From;
	b=RMdZ/qozPbRRZq68UkN1wqolvKAO/yzfH/3j0nDpFKHX+3AVUBE70T1QsNJ86LA6I
	 m3Q82gIN6UJf0p3U12LWgP1Vdi/BJH/WUh7Y+Yzno548t8l0xA/bcYmYjNOkFr8TXQ
	 XRcw6UFLe0RLWCPFrrlb0Jpl8ocyf43BSvFm/YH/8EKRxxf8YE4+Dd4SxNYJ2bT96D
	 vuXgLkhKwhjWwBnVsQpddaMLpMQTpPKoemU4oMcJOd2yDTDnCGfybgl8E9UpSnK4JZ
	 7KoTUEnMgtqtGNmzt3JyKvj3xjemYp0LrRjXfd1XyF+uil+7f/a6VqV6kUI69AwuJZ
	 NhA5KvauduCHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9ACA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599479358.6019.12593226464952391135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8903789b29d5884158ba93e5e57bae0a1bde16f2f0e99639c990b5d4b0c6e9
Date: Sun, 24 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755994793
