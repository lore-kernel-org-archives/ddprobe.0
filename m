Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F057191
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728173154; cv=none; b=UrT3nPrOdsHjf8mZc5heT7riwe45zwOunFr+znkrX+KQaIAHsPK0qhySVgDvq2kXo2f8t0G6RmyDf4YbhOSOpMrqilef4jTKY/yffaL8GuqxsgXYD7K56mb2+j3HHr6hgoCru2hGVFHT6xA0bkEC91F8sswxWPc12iMFE5Jal8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728173154; c=relaxed/simple;
	bh=IIUSlYGzlZtAveoldj54G4oXE8NboQjWKNAGfCNjMPM=;
	h=To:Subject:From:Message-Id:Date; b=ton4rb04xY/yDayh0BUCjG8aENJeyWSNn8CjgWuGQ0Z2DLneHjQzBuxAD2bguXQsCgAmug6PShbG56hlIpa1xJaW73f2HS7ag3jDlbHq0fzaRf9xfCfFbyijjkIP+MUwdPnB4yDxe14lQoYDoJyct1XdpBOffxv/wp9sWqsEWFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amIc+/bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amIc+/bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3584C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728173153;
	bh=IIUSlYGzlZtAveoldj54G4oXE8NboQjWKNAGfCNjMPM=;
	h=To:Subject:From:Date:From;
	b=amIc+/bmlYBVkFdyo4Q6NpvYH8CLtGZTMXgyHG8D1U2PHNf8ByxU9D239UQo0Qfgu
	 gPx4krLWtFDQsO6EutoGLm7l1nPb8taou9Jh8TrHSXGdGNPuRE1XLpzMS9RN7LaFM1
	 p9CUpik9pu1Q1XKR1FKhB5kRfxRXfFop9XFtI5Ov/GAKtJaHiuRZbvV5pGu4k6+b6O
	 8oAnU7gZL7Nr+MhgspphhjoVtaKLdUC4DWxxa3u6Oc9WQz5Ubf3s4uPWqZO9E5s/O6
	 m0QDjD75Q8rwlOjm43fVG2NqeS8eAzhDGFyTDcMxu74SdBhxtdWVj/ID6ZXYmuZeZ2
	 Jmsrk3QPfvb0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DD7CFB421
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817315375.4016.3804784998964976728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c31ac8076b06e173e86dffd2dfe67a12ee070e8d756ecb60d18778f2620983e
Date: Sun, 06 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728173153
