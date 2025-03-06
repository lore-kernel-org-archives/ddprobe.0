Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3C155757
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741271934; cv=none; b=XujwpQknGYp2cXwNyU460zrUP6d2tUaVhSUyv9UPwRNuaBZRMwPKYq52gAYpuKfabG8U2rcNn5JzsTyaSnEmuIwz3itqoBB4z+u5hCswGwD3+P5q/7FeAkHZJNDAWBWY6wP5UYsNMWFHhRFOvhaBR7aLJZq2rJKAo/T9iJiT4Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741271934; c=relaxed/simple;
	bh=Sj0pE4GHXiOSKBI3pgBkP+dnhNcy5J59QNfimRvbDQY=;
	h=To:Subject:From:Message-Id:Date; b=gjNVcEgRw1qfa4+RbXKc1ikk3pRLJly4/SmkBKG7rLcAY/A1zLqQ8Tb8gLWMOqB1ryIcz/kDBWDvA7R9n6DHa20JKS3+7QKdyIoPhaZBKSwbH5PrFshXNnHlVJ5Ywp17oHXVAHjLfccxLxIQsUykMsVcAOma74aJVj31TxR9hj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opLHJRsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opLHJRsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8504C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741271933;
	bh=Sj0pE4GHXiOSKBI3pgBkP+dnhNcy5J59QNfimRvbDQY=;
	h=To:Subject:From:Date:From;
	b=opLHJRsHWbyfv3Jhgc/BV9jmejFfPaG1GA7nzdIg/TInlIDjQU+gTFgkxb+WjJACj
	 gZwtWwC0ODxxjMLWVNaluqWmSRs6Jo1AHBD/SBK/AGetu7+YaYd2cLjjC2FUaZV2no
	 pLY9czd5E4CSd0yTRebWlkwlHrVLqIvg5TtonnO09pEAPAGbtf63uW/j5yG8S6aflK
	 mDqAE32j57T0LU9kT5284f6obCU/ppCqKBLhnyPNLBvRySW6Imf58z7F1UOby6l9r+
	 L84JQtt/bdwgYn7uoLKQMnsoKYl8fOkqkV5erFNzH3gXCruJ2VB7W3T1eiRB4kML4L
	 SP8nF94MzXtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CC4C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127193360.13583.8480157659051408766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f072be02e7a7e2fced1a4baa6f11a0ae3990bc1a212850c337b7874c6cde2c93
Date: Thu, 06 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741271933
