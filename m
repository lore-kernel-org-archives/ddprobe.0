Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB094414
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738554954; cv=none; b=bNMEwlX+Q/uI0VySXKfHiEYUwefGHxcMxhx3GYc2H09WuumP+b/hsD1XNAXGpqVG7/jNBtiD/rZbMcAylG9zWZDOiB0WrBFv7wfnuc2qyrD9kJ8qj+LRItqn7WAX65Al/Gci6dKOty0v9BFmwRJnpcCKNHprC5X+E8cLVWby//Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738554954; c=relaxed/simple;
	bh=k6HEs/K4R89DyqFJV3nsutP7uao4pkAVh4JqxQxlDvA=;
	h=To:Subject:From:Message-Id:Date; b=UMf5jrqX7ysnwdmDlMHo4xcm1HIsCUtb6CV6SS8vt+QD/v5G9IF1uiquTlAXn9KlBzlS8seLEYNLC8IAk/FahuJqIQTR1JUsR/QazuJ7tIpsL+OpYIWmc0sDV4AJ84hCM0s91tCXJeG91MDXrCP2ehDXEkQqcZqQlEUMhZo8cYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYTgp8B7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYTgp8B7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2054C4CEE1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738554953;
	bh=k6HEs/K4R89DyqFJV3nsutP7uao4pkAVh4JqxQxlDvA=;
	h=To:Subject:From:Date:From;
	b=oYTgp8B7XBlWiSMX//2StLcmZRBlix3sF+G6eDg1hCXgAh2th+HWxPHSnKs0oBb3c
	 LZ8r4X1cx/8K7aerXN5xVsHsvkjF/QJUTGJF9TZtfWXI5sNu/8mlfMBJvUdA1aRXQ5
	 xXVZCCLyEXT77hnqk8Savh875k4Ok8vpoFah1F8JBHUtZsSnlwz9oQDvswhzbHpeCA
	 zvRsml+WLQro6La4usc9UgrB6X304u6kl37+uswaZhmZmEo6tgS3XWg1azBJGf8EKd
	 n8TDLBxaf3tLsnRsog/3ZnLUYXgK4qOTr7RBEeAgYGfu9fzsM1XFsimuDfIAL37ZG/
	 ka33DbIlBjALw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0221C0218A
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173855495363.10297.10992040370886469351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c91749247c04a8bc36a43b18c816d5b2db2ff8f87411c80263f49afd8ae3e8
Date: Mon, 03 Feb 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738554953
