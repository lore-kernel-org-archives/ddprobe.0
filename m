Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342FE30B535
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783692514; cv=none; b=P2m4qktFLsx5SX1UomMf5XbJvYlqlow+LhmD+S0GViHfaWCZGVMMlqRkYofYDU9o9mp/dQdTkeuJlRc/3P13DiVRIumzIgY9cJzhlUOLKr0yNBScCFd/GdgK+5GEO4Ua8Gc6WrIZm56JSmkvwhmNjk2G0rIZYYS3061z68YDtoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783692514; c=relaxed/simple;
	bh=kVJhp4Z+fATnn8k3vLw0xIoqwIlvE/h7SjEp2B0lGMI=;
	h=To:Subject:From:Message-Id:Date; b=sAk2+8QEfBgUU8a4DpTcc2R0ixjMtsRITcjmDaPdDmMyx3OpZgeCJfMvAxHLeXnVEoLiCxW7GSfbA2kuHHRG5GG7fSMh1ti7e/dpMcfbyDuDSfpp8KwrKFQuhk/auzPZpT6gzwA9coId6dRq0B8ul1VRYUBULQJj136TNTtIMfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7HX/LkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7HX/LkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAF4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783692513;
	bh=kVJhp4Z+fATnn8k3vLw0xIoqwIlvE/h7SjEp2B0lGMI=;
	h=To:Subject:From:Date:From;
	b=A7HX/LkQMkPXzsi+5RTyInBqVQMQyo/USQZhPl/YF1aFgjUDv2Ah2xtkUCSBeL9zs
	 dU/y53eJA1vrWB0HkgvFmYkz43EBQPR75Fj/l2K4rRdE00qk5QKkPfFZJDiiK0VACq
	 wg/WDIkYFw1rKv76IjPxGX1wLBDp2jU1CnD+LDoUmrrMOqpQED7eaS3c6YfwH3Zy7p
	 DHGDQtwavX6fGOunYQ06I9h3G1Qk70eSo889psM1hDrM2Zoln8LwGT8ewDdhO1mmZR
	 BeepS1L/3bqseQt+S5O2qUQfvCxt7nyj0xsaV8zdLM/hzDDqLfQo41qzZZYMrE/I+4
	 3P7uLZlwEp29A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA622C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369251368.4064.10152588771111909513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb5c04aa1ab45c26007ae236c6e97d5e99308df7109c6bd144b13e52d8405cf
Date: Fri, 10 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783692513
