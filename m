Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691FB208A0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720971023; cv=none; b=RmeMLoKykFIM7SZcZyxi2pDziCDl09W6QPHNBHsK0FUuzK4hmD2N4omNQYjLvVnWu9nTsX/Wt9zCtHZJqrahmbZpNWpVxjd2YKsalassYjivQXw3oxuYwbwD0ENecdwYa3GBNO6qT45mwv8991AZMf2R7+2nDQUby+ZOZ2tlCFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720971023; c=relaxed/simple;
	bh=HwY4QQTGpQgvggz37Zh7pwohK5w8SkHI+q5Da30eUss=;
	h=To:Subject:From:Message-Id:Date; b=Zk1VbcU3gLRjeouma3WHTYlw28Wa+81EK4lKwLBSmltworH8bEn0fTD7GCPnB1n/CCF5LRq2ZS23VG2LT4ffUm9n420W17YHAEkLNSvLDh95UWEIqAfrSSlz5JUUBv5lHng8FZ1hAHQmrrHAw6OCPQ8r709hE0Hhx6dgC9u/spM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBLS/gcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBLS/gcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC4BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720971022;
	bh=HwY4QQTGpQgvggz37Zh7pwohK5w8SkHI+q5Da30eUss=;
	h=To:Subject:From:Date:From;
	b=FBLS/gcRfyZDR+saQ/2sjugdDlrUju5RjGbYOmqHC/4VxDJa/GPPFCAawUjIvHe6X
	 drUO8U6/T81YwDd95q0Bp7KhCSrw/TxDwgozs1pFUCa77m00lojxpKwJdUQntyd6A8
	 k/5SfZ9eTav6QxEMxJAi9IzQNBfxJJkbt3wyVttBHhE4TV5ciNYx3WLr8yNDY9RROz
	 3wyvGTqF5016VzkbNLtQCYNBQ29W8Eee+vE/DDbF0b3xhFqSVmVlXDwdoOluH32e8l
	 QNMmLbjWEl+wYdh9I90vxXIrPOde3rKFvCQaCRA/PL8DmvZuwyHfzkBvVNiqPLcKq6
	 sLIh57jvAuhHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26A1C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097102277.15032.212499430130809614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e94d50ee26c6b8dc29eac9499c5ca66043d52eb8ef49efad289129698ac3f9d
Date: Sun, 14 Jul 2024 15:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720971022
