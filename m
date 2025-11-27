Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180FA286A7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764225774; cv=none; b=N8H0TxKJUi/wVCgEnrdL+zHS5cf9HKZEki7wsf03vTa+mLFNpeSNwnH9Jg7IxkNqTVn2SfZTATlIgty4R56+0q/xmf88SLF3aFPz75BunJF5//wzLZttGulQhDcVVZ7DuWJx9lEXYQirwAfY6SB+R3tcP40FjZRUTTP9vZpqnZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764225774; c=relaxed/simple;
	bh=5o0hSnJIwO6jcZ9viVkO5ArAN5Bjn4APM7uU/k8G1gQ=;
	h=To:Subject:From:Message-Id:Date; b=tBXOHuE7EHi5j3NatA3jXCazhHNHk+yEmxtYy5YXWA9ztBA/ZqdV2fqQNl3oIja+GKxQwCh6erTBK7dDTsQGxqHUAkpYTCir0TQkZcwsJO7OFEJLEYsAfNmSMdSRwHfoVVk/z8cf9hIUjlIttK5FE4267CS0Xoh6jhrVf3Kl2ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+YHxsRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+YHxsRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C17C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764225773;
	bh=5o0hSnJIwO6jcZ9viVkO5ArAN5Bjn4APM7uU/k8G1gQ=;
	h=To:Subject:From:Date:From;
	b=l+YHxsRwKZ+3xIfBjdIOfGELDyjY8s+FKjLPn60qCZCuDU97klQqnWXAhwce+bb1f
	 vlPrTajc6LTh4GBQNi713DjSNmjEKtGCPkKoFI8pgLkSc2g1Te5iT7x6kX7HopAXC4
	 0YgNWyZNwUb/DPpVIbHEwbeJLMJQeKU3gIJII7Sl0QghabK1tsV+j5SwR826jn0OS1
	 35IHQn7AnXdUxHVd7QS5CS+ilAuW69VTpmLebXBJ492Io15TsR0ZKxq8cvdnKFNiR8
	 1RusS7LX+Let0Ffj3akJ38YkYHRGnivAxICfP/PnkC16VTaxu0BXM15oasQORwRs7t
	 7GE59C0M2PC3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96382CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422577358.9208.16105832378725264612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfe003aee49225f2ac9afee050e90b74452a83de054cc864fbcbcfba9901c53
Date: Thu, 27 Nov 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764225773
