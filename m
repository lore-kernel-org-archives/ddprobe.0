Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B74C28C031
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751313594; cv=none; b=A3t0XCSQWZ5xCXMbhj9opah/yOL5rWpKQn+P2BCeehU7rGmFvA+YRSm8Gs9/oNXPbjYUNAKLZqA//ulP9tZOIsZBECHzvZQbdR5hhV4rDgpwDYyAJSj7ykDafZRQ22lCpXXI64PPPVDLOhI41lrR2XkZTGWyUaD8cWN7+E0b1zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751313594; c=relaxed/simple;
	bh=3vKxs5Xjn98LJwAEo/6skD9fLvDaSokOkftKQv3WZQ0=;
	h=To:Subject:From:Message-Id:Date; b=IRs6j5m9nIpdWuY5Du2ikTyHFEh/3+Dli4kSvAmCHLGKIO9o5qF8tXL/0N9KpuJ/1AadeKSGz+5nw1DKCMP6Y381kvsXhoSIm93YTyyA9/XrNvLMuLzZ53yhi1PmZ6n1bu4Rwzdo0cquTFJUGT9ONfoJF2yVv1Q6yAQDALCy3v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkBOpEDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkBOpEDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751313593;
	bh=3vKxs5Xjn98LJwAEo/6skD9fLvDaSokOkftKQv3WZQ0=;
	h=To:Subject:From:Date:From;
	b=jkBOpEDCD2qfkU62bo7LDg4NnyZc+anbZaH44uYnYv7CrzIQfDtvRnDPF6CoRDl/F
	 016zWZ1+qBvJGBuW+FpuDcFK6vXwxYGHOPepIB8DLXNpAYZbJ8EsCNvraLLqAM5jtg
	 D60gZ14+fj71wb5GCuzie3JnzcQG2nMDjDyIB+rWU2TJG8RyG7l3x28UAgMOp70UfB
	 pwsn92PexjGbaiyzQN5e6GtIsWFHgvqJ6W02y3tPjsc8//JNbuQ9rFGxO9f5JtfLrl
	 unrXb2i79N4/tgcZvoIE9DHwWi1aLj5+i7O+d/GgzlwKigepiC0M9Yt2WwsjLezPvc
	 pVkeOy/ui2aIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CEC83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131359357.1333.14778604135482086682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7dc430fb4b900ebe43e4ec9d01c6d5ca0f0c7d5f486ccf4301642274958a7fb
Date: Mon, 30 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751313593
