Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C8D2570
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719641063; cv=none; b=MahIEJ7EMeFC5b7yl34uCMdNvtow6cYinJEfvlPuJDVt3jN9ETTxmCgHl6qtt3jj6yB+6a0DArm5LggPvlyQd5P8DbUN5V5vwVvfgFGp8CfVZR0EwMAv2gV2qGb59x1PFfS+fVigPnUf0FmfrNhHrMZozuBqsYVu5Imd9NR/3Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719641063; c=relaxed/simple;
	bh=tWvKJnMFSlMCS0lE8cAIH02Ck85DvPI/4XAvKPRf5ZI=;
	h=To:Subject:From:Message-Id:Date; b=lo/fpaKyTKeCqkDOjCJPXqNeu2IuB7ioXi6x7nOSj03plmZLMnHkbtmu5n+YR9ZQpzh+OoUznE25YMgrrMpcKsDbg/bbJdP9lgYTWscRBdmS3KQtLrXgayixfHWL2fkaQbe1AatbzQSNSjmvG849+epq1bYJ2u5nX/aRZbqs2nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDA3MrZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDA3MrZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E931CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719641062;
	bh=tWvKJnMFSlMCS0lE8cAIH02Ck85DvPI/4XAvKPRf5ZI=;
	h=To:Subject:From:Date:From;
	b=ZDA3MrZbn3dJHkmEmFwqeOcTEcLuE/5WAF1bv7OappBuV77WxZj5D6g85yxCbFDg3
	 kU+Z0Jbwn3r0/M9Q5M39H/zKcF84Lpf5gWQ8H5o2kHjhqIuTQwq5SDOqa4m3LUv5lw
	 1iPS6oZeNXqN42UVdfO8HlI1x+uio4cgySOHJZM+D5SdLYgH/VLOjZQzpGxzIexOCD
	 eudhdKaQL8LTWhVEjxXL2FMw1xm5CDPTsTHwIZXVafyHqpcnudnBbunvEyTW3GGjGC
	 SzMhAY6EFVr1BC0XJC1FjJWw4+7Of5j8H/kBhMqmMnvs94KeYdyTUE4lT9HPxDvTcN
	 IKcbA3QwzdwHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC71C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964106280.11539.448195041045431035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12a342bb69b5b48251a8c32569814459d15dfea40cc7216b6aa57204551e432
Date: Sat, 29 Jun 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719641062
