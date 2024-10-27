Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494C23F8F7
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730024754; cv=none; b=t6Fz4WcMJiv3dfcypFhTXR0LDtDBM7fL4CuzlasZxFdpOjcObT7KtZyvGtVbb9RPYRTiy1e1IE9DP2mtdD2kQwHPCSRKlvz8r3aMpdTbzIhpPn525MXWHp8VCxJkv/Ard77UCGUs/LmdZ61jHOvvVUJXeSco7FIDamIBDZWp/X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730024754; c=relaxed/simple;
	bh=iWAVmcrZY9W+0zJucZuc98E7dqvgiuReJkr6pSSx01o=;
	h=To:Subject:From:Message-Id:Date; b=XvlkZHWuMI6Wlbk58SiFuKbF2r+01ygzaQ6WsAQn3z6cPqL20g/APTWPP+tGatM3r+Y1X0/MixlLKj2OKqrh3ouKhM0uupQHPTAPdcLWZYO5hKTkTFFi3d+bv8TwuszpyTBWNG8Ujk5QKiQVvhFQkOa6BlfZzJFkEVUJZWe/lm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIDHHmRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIDHHmRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC033C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730024753;
	bh=iWAVmcrZY9W+0zJucZuc98E7dqvgiuReJkr6pSSx01o=;
	h=To:Subject:From:Date:From;
	b=VIDHHmRWmFgj0EkEwuBu6nsI7fxvSJMlz6CQby6ypTV0x1zqsXPf9XR80/+QAwyME
	 YWw4Az10nYD0m1AurIklHzQQ11B8bpJ74JRwFCnmNRKsADx7K+GM43gfxvxLxbgz00
	 UIARU9ov0RE0Us03a458JAcM73Giq227HQ/5K2ZAIREjdsf/JmUnfpeoZpu7yNrfPm
	 2fINfh3iX+n4HYKvdfO3EQM7kir8nX+8mAo5T9hr5al21SArcd1rkQNz3b+ze7GodO
	 eNMGc90ginuFeyxCrTMJs8m4Z7Ckn6HBURo7GtL0Fz3qhkgqWF3jWyi6aSpvxH3bxW
	 fR+PrjyPptwYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91979D10C16
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002475358.5394.4660040470458605329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573c77e6344c60930417fdb604cd84d799c7c6963a19914fffe0c3ea0c74fdf8
Date: Sun, 27 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730024753
