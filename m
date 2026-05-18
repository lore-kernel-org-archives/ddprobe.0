Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C97424113D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779068434; cv=none; b=eyqToxQnOmY1tUHRv+aNOsZgDqv5LJVN3egdbczMCaQvNP+5Tj0rDKxdrRmVh13KCObd/nPvhREdfN4p8suMdJobfA2Leu0x+STeUneuvbKrwu8XPUbmQkk3PYVk7+wazNI4SlTEB3PpMhDKOIccpOD9CIuknwKYSvZT/BLtvrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779068434; c=relaxed/simple;
	bh=T/XjSDfGD4MVhce1CoWkluJfzwL5jhqH7Cx0xw31De8=;
	h=To:Subject:From:Message-Id:Date; b=h1NNzuJHlnWQ5iYWGqLLQWTV+HxNee+hZ9kvT7sdrhWYlFAioYkajMtqJkjH6KfCp8G4YqhFXSn9+KqlK7Sfe4JR4pO0nMwDIIPNrJJkOEhogeXTB1MKPA7OOO5YgEiLUhuAbUrRDVXXcDTa5W6BD/FnFdzw2uaw8z2zBrMXdDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcERtZ2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcERtZ2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD64C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779068433;
	bh=T/XjSDfGD4MVhce1CoWkluJfzwL5jhqH7Cx0xw31De8=;
	h=To:Subject:From:Date:From;
	b=XcERtZ2ApQefo3dMhdsvVCCvAv155SmcDXmCRlU/ANiVA8rere9X0snCS0Liq/a8N
	 +h8Sy1aeGsXBKsIXZxXNyd3YfuotblBVpE29R19AVC7+U3ZH7CpbBtixrkut8EsBdH
	 ficN16USZ6VGI+9SCzwd2UvHuykGJh+g6KA6dg8ymxusJKzpbcyYpIpiCrOPTLSRwa
	 McGomoFbdUUcNX66MckBNBV8rmJ74qoRcJxU7QDHus2rWMjCALQ5uShloFdmFiGEw2
	 Mu1oUoQHTRqfX0nQiUBMeUi5AoD/sOMXVxkzzb8b/JMQaM65k218EpNLBCEdRHjRzg
	 Vcws2kvUzSoZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2A5CD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906843369.9635.7122245334250191788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242d347d8e8221be1bc6aeb5ce7bbae16f707c318c3f082ca57dc99cfe4dd2d8
Date: Mon, 18 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779068433
