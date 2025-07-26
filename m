Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28736259C
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753526394; cv=none; b=ZF9Q6yW2HOi9+syLHB5v/t26l5AnSU3xSDuKcBBJ+yCvh7rwmIqIgCxQ42vXvNK3iuKr/SZMexNdblsc1s7EJeEhBjoGmEHzyfq1ojwyLM/VYGMdgWBiB0KSP/K4kMIRocx8GcRIF9h90eio4pULhWtN9u+bZvV3Ym1d9ocF/ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753526394; c=relaxed/simple;
	bh=WLowQ19dFYBEfQw8SMfBPcPOyICakffDpp2SBWJsidk=;
	h=To:Subject:From:Message-Id:Date; b=NPl1enQweXCtQ9Ukohi+SEkmkNvPz1U9Bc16rTEVMCIHFToOm5WR7/FhJQRNiv1bfcKs2JJrNJBK9jm/V7XAl0l4SrOj9/mYeXiDz5/07x7lG/tpdfQGYWyTasJDP1JTCiqz2pZhpR4BdAEDV1jznVCy7q6vPIAYzTwF08lL9lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0hZsxwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0hZsxwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E31C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753526393;
	bh=WLowQ19dFYBEfQw8SMfBPcPOyICakffDpp2SBWJsidk=;
	h=To:Subject:From:Date:From;
	b=K0hZsxwT6nuXJ/vZrcqj/OKlDr1tXUfkvjjUorswDxFW8rYlj22kYa+NYyfEY9HGD
	 vjHkcNUjT3gKQTuCfNk6R04SjtA7oc+gYOhGsbXddu/80QpiYBbQDLWH7i123gvEdR
	 uEp3uo0OHNV6p/JC8pRach2o01Fhs9ixZCxYMhJ10IYqUaJBTUS3v8DNUwuqv0LzdP
	 ylxFR6xlsJ6yiTz7aFWJkPRQJCgLKexcYIQ69y6vk0jXOp3Xd+GocL2dk4C2lkSAK4
	 srd4yF11KmFI+iyolkaOqQbtRKvdN4wCV5MvlTg16iGxl4YjWPXJCnkWOhQOxGAF+/
	 Tg7YvxpV87m4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED10C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352639357.10725.17050223301209524692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e5069619d66aae182cfe0804f7ffe9b340d523d282d2e05b48ebedf7fa22d0
Date: Sat, 26 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753526393
