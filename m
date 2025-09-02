Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43EF350844
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756848593; cv=none; b=VsvO6bR66NyveUzmoDnHHzyCyF+K54YdxZmbWOzn1P6UDd0Tw+zI/vDlWBPj//oG331etOMtjDpohn2UbzkvSYBknRm7k5VuVg3TV3gH/8WR/KxyQWscAYVnu8nSK9nk157P/0kYeh6OU/vzA2mYExHZsOEhefeK96QbwAfUSMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756848593; c=relaxed/simple;
	bh=phc5A/lFYTbN97dL1U8+TN/IhSRONCbXP3ucbuVBEJM=;
	h=To:Subject:From:Message-Id:Date; b=VrxggiFeu86ibah+QSeCBLkGhwDpWNZTr3gF2lGGOjqD6DqP5UPTOH+ZBwW3As9UALasde01l7IRSwpdAUtW5roPl3I50e9pWtansOhFufmorC/hb7XcrVcc5D3VG5UIHiPfTQEiY+TZb3oAo0K1zQuZjK10nzhPQq2bCwQFcrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfN8ML88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfN8ML88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D05C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756848593;
	bh=phc5A/lFYTbN97dL1U8+TN/IhSRONCbXP3ucbuVBEJM=;
	h=To:Subject:From:Date:From;
	b=XfN8ML88TleG/PflVDLDs+xoOmU3nvlQcK0UsUacfUfKeaIdU6IN1eAHZfpwDwHZi
	 8IKHEhuI4bu4LOinsofY7RHit13NJiUfn5P82LxgUOmdpJPYCNZAUE0zoaOLq7tB4A
	 FZfTTq+vst36Y6Za6yHtXL2m7mT5peWt1yAX8JtnIB287JCcmOz/vJqN0hE4ozz223
	 04943G4SaoEJPzotg8YRsPgqgY5WqTCg/+sqkwviYtAiRubbpUKHH2Gxidwerc2yRm
	 g2O6mdJlLJzwTfIJjOfFoyty/+ajw+b9MBXEQBywexVdyUEQh4YTRqFDP4cg3oOQ+m
	 3+qxUjoadWZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F912CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684859357.7728.3683410577131399064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372dbaa9d67f6d88cf596274100c2d43dee3c8867739e06b7882de2d7414648d
Date: Tue, 02 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756848593
