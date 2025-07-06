Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2326C1A76D0
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751785794; cv=none; b=F5RV0PPsW3k5bm/sx9PAxFGUVhm/rHFS7AcPrYLObV1FCftrwErQRTDSj5PV3s5fL8437b1g5/Z18yfUg1ENxW5qGeRmq8WfUQKbNfeOaQzfhuL2n5jsVvsMKa8EaTDwM5jtiqN5+gCnrF2cfvPW+BeSSj2Hpfu/y3TwHJYy6f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751785794; c=relaxed/simple;
	bh=YNUfM9JQD2iI0dPaLASY9cr3uWfhNClgm7ZMvYNV9oM=;
	h=To:Subject:From:Message-Id:Date; b=hqRqvSWwfT8j630IPkPlqsGzTk/AfzEVt8eyy8LhX969HYX3vH3inqF5+JDsRQAU01jafCcPJPj6ysB8g8ccPhX2FrFCAgvFURTemeYkPQH99WZDoUnwuwSES1lxrmaf4o504UvpGaj9nxZUBMGw1+Fz0t7wlLyfWuadoeT8XZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAtpvVC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAtpvVC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C34C4CEF3
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751785793;
	bh=YNUfM9JQD2iI0dPaLASY9cr3uWfhNClgm7ZMvYNV9oM=;
	h=To:Subject:From:Date:From;
	b=ZAtpvVC6mn9Sa2Sf/UcNNlGbG3B6wKajsDUBDeqmgg9TcIJxOae2XKmbTt0RLpq3s
	 kKOTXLH2ecwS+LjZVZrI+JD3SWT8lir2wgSfyOtuWvl3oC9TNbyGykL9Oi+EU6MAD9
	 4xDvDZzifEx+nDKRRwzi+yZDRlvP4G/n2i3Qov8VQ/Wgk2lGGJGS1ab8Ouaeb4HnFi
	 Oz9ROwnEA61dwuwrCW/ZeEp1IMQ4i6feGReC91bmhkzIZQp/jbGGT8USSdN4M1qEaV
	 20pnMo5u4q+zKmGCmVzjg7/FRAHlN367XhUm5JX22WaGQEE9qFf2IrbnwgDz/YMPwT
	 8Yd+tDWPl5yUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E40C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178579357.10886.641539392270338803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc23746ae67dd6c41b08c55777f60a696dab18ee89b0efc15377e0de0e4cc4c
Date: Sun, 06 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751785793
