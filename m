Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208371ABED9
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753088394; cv=none; b=Z7g3rEK87DV7oGeakBIo38h6o9feXMqRrICGnvG0jKvodev7xIK/nIuXEg+LTW63rJ7n3ivQVcmmf+bJ2tMQdDEeeIVzrlxUPZ9Tb+/+iXzOR/jcjY2S2MyDp6APNMYgnNij2lKKvslA/jh9QWOclB5t+C/i/1CgZL/QbIlastM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753088394; c=relaxed/simple;
	bh=sWd9BdbjImPn2Hb2vP34UbYBtVuxc3Dg8ar8ARRcs/M=;
	h=To:Subject:From:Message-Id:Date; b=sytGTLRGqv3hZTVSvJLB432aCoecl6S/1BTVe6iZ1IKJO8x5T5oyJQ5wjS8LlHZdoKGaUufByH9WdUOaOMRpSoucf1uvo3BtgPqwShuCx+jgtjEmfdkDS8jSZYUwrbvcAWIguBkr4UgtDooMygdaEB71m1m0QjMAVS1hrrj6cXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmddQQLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmddQQLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C32EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753088393;
	bh=sWd9BdbjImPn2Hb2vP34UbYBtVuxc3Dg8ar8ARRcs/M=;
	h=To:Subject:From:Date:From;
	b=OmddQQLG88OLpHwt2GPnXa1/XAQ/HPHVVbUxiVBqV1XMPNWvJOtKRI+YwVN5O2gdI
	 oXU+dnzSmkLO0ug1TTze6f7GMEcbfGgL/2qMgMgeGAMHQmVCK84iTv03WemovuuPQN
	 L7oMGDgJ0aaQ6Mz7zfOy06IzW7S8xynveLBuFnfrZwFTv3OGoiZe78/QZZAgOh7uPo
	 UZyK3lWVgqedQglzwOZjeUDIu+q8k1Z1yYV/68eLlOY75NccpfwfUTUSAHhwJHKv3u
	 XBekVxHGedW+YT9avcGGJmhK1rfFb70KCgeBId4og5XLPxfj5CnFLB1VQ99QNIR5ql
	 NOXF9ycG+YUSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD8C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308839357.24658.668490877043680937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3fcd6359d2556288d18004ba1a4e388324bf449239e7cedb085ec619a5ebb2
Date: Mon, 21 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753088393
