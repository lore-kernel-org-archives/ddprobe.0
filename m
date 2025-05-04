Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3295D33E7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746338994; cv=none; b=UtM8qxdndrYNTYGdXf0J68uMvcVrYJ5Y5u4tfw9l12qNC1pToYc+i5Qizmg7DCIBQU4QxzaM4FE5eM7GgXLjZUeCdW1TTjB7gLrtyJbjqcOMjrPcL5jWcHnUED5QPIlcjKqSwcO1pCLSMWcJC7tizFVv/5FMnQJLmSMcTcFtXKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746338994; c=relaxed/simple;
	bh=stP3YWkZUn3BPYXvB3h0P6kakeabV0xRRp8ni5q9YeM=;
	h=To:Subject:From:Message-Id:Date; b=jGyLS1lYKieLkmRJNYDfbVzVbbey/d2gILNg3DvXR+YlJ9P0JUhXIiBTX55Hpf1VpmORbT20QpgnLmrM3+lopraTLr61ZSwwdca9iBuTCzZwN3YJMorb1Kzqbjn27siAXmVYvWWYxlDLSmtLno3uR1PglcXvEPxyNt+hW65VOWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFiW9kbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFiW9kbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C03C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746338993;
	bh=stP3YWkZUn3BPYXvB3h0P6kakeabV0xRRp8ni5q9YeM=;
	h=To:Subject:From:Date:From;
	b=PFiW9kbYB8jPl7bHNZII4gsO8h+5hTL6ORwleKn0JjtHPMr7nGrv3hJyb9iODMA14
	 NIFPEaa3xDyEA9vaTNeu5JqFyeZgSr0GycFMrj3dr1bBD504qBw9BfnMwsqHObZak5
	 rFx/lF0A932mVr1TqMFr4GhXnWDMf3rr+oixNbRoyLqtspiMq0ypP9dTsA+TEVDmMf
	 N0UAbyzH1K4gMSHK7GZ8upB8MVNXG77omuQjVSFpywVfM9Cn+BaJxw5aMqW3EyhiXd
	 N4n90LNgmnFT3fg9GEK0S/slUzi56VTduHw3ZD4spfU/AaWlbRDEStRBfnMz7zKt2B
	 u4EBCVXDHXTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92459C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633899357.20807.7233112431953092488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f44941a9928f003e3e7cdcdc229901b33bd1072769f267c799f7c2f4fdb7a9
Date: Sun, 04 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746338993
