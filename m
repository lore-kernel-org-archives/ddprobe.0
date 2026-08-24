Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480D93DE455
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787559034; cv=none; b=bzKKRBujyLswdvBJtycjEXfYBLZ7ULNjXqX8MZwCX15JOnKx9DD0c5FazXNvVmbKSCKdNewPKV0k4Op0gNxvoC0AtYoCZDLtsQYfVCZTFWGJBkswTEjA+wH4ON8FdEdAd4oPOby7cHIBsoqTKoMRQeJQHjmZ7KH9xro9XMgt8b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787559034; c=relaxed/simple;
	bh=QJvK8PU81W8tFyOFyMz4/ialxyKu52nRidjjGIq0zx0=;
	h=To:Subject:From:Message-Id:Date; b=YSHyGl3zqQfeJOVI1P6bREmoz3+m72/ZGBETnjbu1AZ9xJAB7mGnNnYKz3n348iflFJVA5CkvmBg3U7YcBE+goGIfhubTeQk5RFI5pSvO1rDyQJgmsqN+qbT52PHL8HrdcxwyBfaqZsLwhEQIxeV3N64/WczTnz2BdDqipIoaJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/pU0rPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/pU0rPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BCFC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787559033;
	bh=QJvK8PU81W8tFyOFyMz4/ialxyKu52nRidjjGIq0zx0=;
	h=To:Subject:From:Date:From;
	b=b/pU0rPcsWRWkiyNF4HRuRuxpq08kPq75Z6NHe6Wstk4UlhLOqLXCWd97+S0pPErK
	 KVVqLYxnzKtBzJ5W4xEDHYYEeilukxPFaefxU03xN2NMsSbBX1COcIfP8TJoyPfLTe
	 LiB4Cetw47GvgUR9mVA8kJx7lfE0vhVDKaNsauaM6x8Ak/g/qB0NIU4D4CKmlGeIgE
	 P19kmPs9cm01SEL2S95GZ1REYGFCmuvchpCg5MqMEgTl7ZGupeBh9AtLkdJrtn2uu7
	 XjBlwB/8vmgAdfASt+ODWv/wYcDvD7YrxtkKTodWfueeB0ppvair3O1AH53Kv6LJow
	 JsiE1yUtor2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C9C61CE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755903370.6587.13228260077886580899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e7587c5049335a6634b0ebe845c9f9f0a9d01093d2bba4dc9c6fee6bc70cbd
Date: Mon, 24 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787559033
