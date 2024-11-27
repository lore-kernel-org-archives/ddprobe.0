Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21487F9DD
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732689354; cv=none; b=ivqeej/euOXadiY5PyK9QAYpWSVD1wsrnDpxN91VzYkW2KgtbsB+ljzXu5U3OUaSOiYLFqfgKHhds681Cu/BuXy1rlyMQM9/iwM0sBQVKOuwxi5cM1Zd53AcQbItHiAQFVLhWC3N9m8o2k77IzRLzy1UZbWq8smH0zrEsN93vPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732689354; c=relaxed/simple;
	bh=GMi2tmKOegv0Jjf4wYo2MJFn+HipsnN3e++Uov1shRY=;
	h=To:Subject:From:Message-Id:Date; b=cdmaXgR4LBgwOcHb5Kgj6BhjuTuSO2kQPXT9LjeKQlw12+AYfnUsF9Z9Z1VFEGBZ6/MaU4wghLrZRrELNdIk8hh+SxdzAH95yNlVv7DR5mMo4Tb9h7Ku0pycTqL+kazTjnacc0n+P1l3DVIECCgPyV2WALMERgQ1LwRXOZOjxJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iv+gJZ7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iv+gJZ7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE93FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732689353;
	bh=GMi2tmKOegv0Jjf4wYo2MJFn+HipsnN3e++Uov1shRY=;
	h=To:Subject:From:Date:From;
	b=iv+gJZ7e2X6UNepWNMXQYwvMHk+06WPrnhULPzljZ4KyzXJfxHSPKocq5sMuth/En
	 qCRtrJWZbkZUJth7XsqAMdg9RY5KYq+dmjfHNnktADE6GgJGmb8ZBkTDQdeCWjhe+c
	 s82Vshy7Z42pUrrQGzGk35gJxMzBS9s8GEAc3JuRSSAQFVhit/RpGqg601dj1/SBsA
	 cG7yoXdUMquGpk/Ez7chasRGHnpabk5DJWOXoF/7aAgq4Ei72dvoNRW8V/e8BvPF6k
	 BxBUv129lsnURIoMiKvXVIH7Qvxj+IybrXyyCiELEN9LbZnAEUuinj9GShNZSSp1Ay
	 e4qtWqpXgonrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A2CD609A3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268935361.23285.11581796676842461987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7becaf263852d713ef44c1dd95f76444e33eb63cfe6cc60c5276380f46df22
Date: Wed, 27 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732689353
