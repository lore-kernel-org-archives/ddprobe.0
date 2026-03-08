Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B0735893
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772930694; cv=none; b=QZz4tdxORhg6faoIcT6b0W50J288pQIQPrc7r5GY4zK8a5NNEZ8BjFgaWgEG5r9isdzFivdftepMiashEgDhKnqiNkukO/zgIB5/wErcP7kjgtl7rriDwRfgUrCGqDFAmYG5nA2ZGyYmHtiFVzcN2E+qJnJnkuWIKiuGvfHn454=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772930694; c=relaxed/simple;
	bh=hU0p9jV9qgjhPitah2rFPKoGM4VqCQdIZh1mCUQmj+A=;
	h=To:Subject:From:Message-Id:Date; b=T8JYPRMGViK2Kk8qsCRl8obZ1v9UjMg+x4wz7rYymk/IC8CrP882JKo/Hm0Xp/Mzo7R3+RWbBT9fvJNMuOU9qlw11zzsSkctLydUTSgcc1ic9hyrjBwxh8DCmVS6iRS0sphZrLogHWCtvpfqjaCHtGtMGGz12jWnvcyjNlI9Leo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0SXMEqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0SXMEqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F791C2BC87
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772930693;
	bh=hU0p9jV9qgjhPitah2rFPKoGM4VqCQdIZh1mCUQmj+A=;
	h=To:Subject:From:Date:From;
	b=A0SXMEqMw7522ToU15I0RoKo9P4pqoVYV35zeb9upv26xqx9DVxeItgIIxTXgnHOQ
	 dCSC9zWuAUaMghINiDRc6h/d31bip3qhWUbMaAln+vlRmvy3XMxp0MLsI4guIFRRqp
	 uGQtJEQGWrg3rhO5grO7gpW91f01se/HrdOqwQfYCO06ANjDIrEFJeeXewmyYgB7k6
	 jCFWBKhytVCGluNxIpUL8436gfLlJgjlmnuC1AwKFxjdnISUe/KLksianGhoVIa5sl
	 sbtaTFMMTdcEgm4YEE7j7DqA1EasN7E5ZRPBaKv3W4L+0pcL6JyYQN/cSm3U8jqHP9
	 iFNBsn9s4TQ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F505F55124
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293069357.11082.3797044378299345942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549291d46954ddb395090129b5efd1db6a804613d35f0cd8beae93b10527c8db
Date: Sun, 08 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772930693
