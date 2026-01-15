Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0F3238D27
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520634; cv=none; b=R876eW4RT8BwpKUGhS7aJ1EnDErjM0GhMbt+MTXQzsKVsmks7EvstBJQaEYLfwFNPdCQ2CNiV8ODoAyMK1L7xeoX7HStzgMuVylQZar1f7LeThB+Ck390IUftddRN+yRtrmklsXUS2M8qjAGM3QbKsXYQhfQLW8FtcyBuEePbMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520634; c=relaxed/simple;
	bh=gBrZF50WbV77mKteemD72CSuj/fqgNf53UUIUWZaylg=;
	h=To:Subject:From:Message-Id:Date; b=KJPGdXJB+2xkclkcwTpOfrAoJNJRYhrbvKgQLWDNI+ZLFvH585ees1Nq52MdQDfyUAHNYkULUyqgur5B/bRqBI7Rc4j9IXgt4MUPpYBm6PgPKDQXHZr56huKjc2ju9jgFOrDNtdH0gVM6K7f+y7sf86xXVSV8EGx4WcqUkMW03E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKqTXNOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKqTXNOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E45BC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768520633;
	bh=gBrZF50WbV77mKteemD72CSuj/fqgNf53UUIUWZaylg=;
	h=To:Subject:From:Date:From;
	b=NKqTXNOU2LwKxcvIuiFEsTZ7/u9g8J6dI1B6UerJOR1thppbm01SdyPtyBr1FwEKx
	 DskDEjvBSItnQpLTZw2tzLb20NJVPjVvfLcAFcqY7bfmI14vaVXheVcT3ufdkshN4A
	 Xts2aYCdk+r0vI9I+cluB2deJ6xlYxtCLNUEDxM6Hf+KQw40uHSR9NgZjoqsHI4fg4
	 8/sX4fgeTgnfz8clan6I9PUrmdXD1TmBMnCZr5tVwFvIqBSRQ0dPwLl26nK03cqAiF
	 Eb8creZV+k/aI2ksQ3MmmSTUycBgJJuhWV7JNf4Kb3OfePTGRPcWu9/IfPBBu8XmuM
	 FNyQ43wropAbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F963D47CC0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852063357.16640.6973388412731901211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9dd7960c8f3e86043dc4cac36ecf3daabe0a2dcbf92029afebb7e8b8168886
Date: Thu, 15 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768520633
