Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5DF134CF
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746365995; cv=none; b=E97htLd6/SWEJYSjrSMT5dZXWVjVmyNyG9Nc8hRR3vLcXDXFyKuea93n6JYh676PdyHWIScDAM/BpSbbALVyreST9VDaAri92YFruI3XdHx0aI0TRYdhnKH5QPNIFxSKg2xyXRCvWUfm0pVGpdzNZHjvsIMtvccmGHJbJVjMhek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746365995; c=relaxed/simple;
	bh=H6WWAs91/xAsMT7Ty3qs8g7rU0OUwo+50ClFiNoeVd0=;
	h=To:Subject:From:Message-Id:Date; b=DHMfDvbR6KeidGQycbj5myARyw9KsC6zAImVoU3RcyqbNWjy8WpqOUGhVYglH63+v8EPc/l7Fwg+aF5WmMWdTJnIrpf3TVGbXJ2NTZPTlxPvGbfVqQYPtZ6o4dMlB8b66Udyr1s3YiN7uwvXB/zhxGIwPRpyQ3xbtZCr23OGM7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhiyKYq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhiyKYq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69FBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746365993;
	bh=H6WWAs91/xAsMT7Ty3qs8g7rU0OUwo+50ClFiNoeVd0=;
	h=To:Subject:From:Date:From;
	b=NhiyKYq+tnicrBGmUMHc8iXuGk7x+7t+MWcl9V0jL+MN5SGMVsbH5jnE9qxbpB0Ev
	 Bj5IpRog7DnibVfLzrM09Plh1KM/EU30e0skBbNhXtk8vwewWqjwADOCUm4x5HKIYk
	 avjCuPcJelgkHiN+nvuq65Hj6zr6iRyj7+Y9dN2YsRzopfa4ZA2Ld1/tPJ28YkrkyK
	 zfxoH7yYqg0HM3z/ScZTc1XKJixd1PSC16tENb14n74MklVM0ExM5sJzzYuKOaK4Bl
	 IsF0HQSx0SOvKad7ATyxEy58u0V/z0dpMHq8g21bCgkS/wgzfbg5UAesZ/BRzahRI9
	 n9C0304XLHz+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9339AC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636599357.7535.354605900323843293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a8f21fb0a171fce8727c2f2fa99cbb1c35a6c8e3d54a0c504210749c9fa58f
Date: Sun, 04 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746365993
