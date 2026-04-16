Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2215831B824
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776353854; cv=none; b=IcEKXCxzQCG8Ir2sLo+KVk1wK1DGarmKy1sYOw9z/RLfFEHTdFm5P0zAngVRPC50VkL2K8da8jVENFHoZBFmN8VzCYf+OjpMb9Zguk+z//919D/jPdGsvD7CDI9zV1VWJVwEFr35LCQYwplia0f8rdJ7xX1a0L7+hTzzz4+erMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776353854; c=relaxed/simple;
	bh=NFaF5nEHTpap6gaFKzFqXs4MP3VdOKthftJc2+79ivg=;
	h=To:Subject:From:Message-Id:Date; b=dIqNBlwfb5OdKvzSTjDg5pZOY8v/eoJZnKS/pmdoYrak85TNyhGtj5OqWfRoUQwmlAXqpCGl96hh66ZHvxILDt/92Qq7Bzwi8irpZtBWy2Mczvj4oW8WO/qEImhW5FJVAf82VNP3BgCewUtdJJVhSpIOpXqtJLXW6/3T61+bHUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaCF+mLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaCF+mLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE27DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776353853;
	bh=NFaF5nEHTpap6gaFKzFqXs4MP3VdOKthftJc2+79ivg=;
	h=To:Subject:From:Date:From;
	b=NaCF+mLW53OGtkICIOLqjthVaKwvNcaarIFNlZ2mWnzh8r3i5RuViXpzMCWgmVZXg
	 qqEZZiQRV+OAeyu9P9QwfXMv9QTCZs7d1eB+KG9ADkrHjxPHyc5X5IaUtxpWDVBTCi
	 L0JxW3z8AUdccJeS5jGGfOjyR40Qx6AEt3EpJFxQSRS6pKlNZwvejmm42A5hxjFlT7
	 PpiD3wj89qzxSTmCffOTY5+eXPYyrXYQs5KkFNimGjLd8vyVObG5GKAzhZTOk83/GU
	 WNdg+5yXJupQi2wNK95CrMcLIOSIkKXHdTdFP21FOGl+KPp7YjkzB7MBmHNXDBtcyX
	 eo5H7vOq1vUiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB490F8D759
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635385369.13824.3899233281077260891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6c4f54b9cd87bd90f1317004e62ad3f372c0484c98607f944505fb332facbc
Date: Thu, 16 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776353853
