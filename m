Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3739431A06F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769159634; cv=none; b=lTn6WlshzxjKZtLE8A9jKT9ftrRucXh43fNMMXe7WH1ZTpfXOfC7Rc2p0+GuHG+D5lRfh74Lb+oox9ZK8PTI8rWVzOal6HZe5bOSIm5/sCgtUf2szlI79FCIKbgqqv3MfrsrYeOLGny+LsQS9yIBGUnYRnZTbZH6JVpTVkciE1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769159634; c=relaxed/simple;
	bh=jPq1hUc8XtamZ1A7+kcRaUUQhr0D1eyE70S09rYCdaU=;
	h=To:Subject:From:Message-Id:Date; b=Kz6pK1noTR9dEp8WvOdme3F9J70mAVte0kWXZNsHZ8GaqZA8lW32H4aEn3gfgznnrfWfFHOVpSdxclF+eLUZE6NZpNSQLEpJkee34xZu0NMboHbWEkJ4kmDZSPbHZlmnTaLdAociJoVi/SkRtp1yG0bqa2v6yjXCr6U1v/GdUW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ci19zkgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ci19zkgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94D2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769159633;
	bh=jPq1hUc8XtamZ1A7+kcRaUUQhr0D1eyE70S09rYCdaU=;
	h=To:Subject:From:Date:From;
	b=Ci19zkgsKxqzSuVDZEoka7Ly+1bp9jkhwuISDc8a6EkhItJYw4AzniruD8TVrf3Kj
	 IxSay1unHKxhHKREcxIH7vCmUJI1/EFJEkzQTAdvlXWrxpIGXlKLkWJl61mUc7YZY7
	 M99HYUFw7vmwKCAfUav+KF3PeVrmEB8QBoqWN40+azHA6x0+6TlrU+Imku475hzO1u
	 VAsjeXgaFXEW2DsmubmAXlp2K2DueKNQEoDjXfabyRn5SVPo5UUVH1/EvucS6siC1v
	 e5zLQOoJT7GVz5x9XQdtVZQI4cahhtLZZLkhMFw2a4ZOLpr0IfdMBLGuGxy6Bc7Tpl
	 lX+AIMC4xT0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99090D72361
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915963361.9877.2478876550072789818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9195d8c7ff55d0840d6dcee9846a15fef4e9eb3571883d9dd1f142a3f445c8
Date: Fri, 23 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769159633
