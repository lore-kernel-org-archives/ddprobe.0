Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EE7A29
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736123154; cv=none; b=VlYNHJ9YH6k3DgovMKA79wt3OfElWUkzuKUf+E8RRe/L1tqIvHEg1/kCT7o8DuBGd+ji7KHZZD7YEJ0GNZd37Ow93uzeQpJJE413Kr+kt8pKw/6g/YMJA/Jl+MqXX28aRNsZYtzpdOmIxmFiR/hfJ8kZzYyLDX4U36PTv0xUgc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736123154; c=relaxed/simple;
	bh=0frp4+pZLV3bTVWcTeAg3LxQc9f0s7oCWbH+gPinUoc=;
	h=To:Subject:From:Message-Id:Date; b=BKOU8TBHFNWKCr+UQaG2h0cnJjFk92nnv1xDvY7bEB6pKIs+LlQqucJ36y/6r7J8ADykJ8uSQMUcIMKLjItKb5KhTQHaMkSxx1O1Yok26+0SsCBwxsITSp3rexzmPKdWLjc3IKH/uFkCw/EcanTeu7eNVkwvURT+ALUa2r80EPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAAngIjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAAngIjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0947C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736123153;
	bh=0frp4+pZLV3bTVWcTeAg3LxQc9f0s7oCWbH+gPinUoc=;
	h=To:Subject:From:Date:From;
	b=tAAngIjjJVoFVkiE7h2lNiPAjfvfRpgk8nEQz+hQOJ7OU/f+Ijms5ISY9FX1/NSPQ
	 NrYw2zBi8HdEA+GSvGp4l/97DF0DGpHLC/YFrtJgeh62HM3YWDM2Etiyt0i5J5x76y
	 suekLCUP2g/9RAV3kAuJjALhFIWY72bR+Ey5FP01dE6KjRfMMslH2/hctcW41VP+Bc
	 8RjKgL4OjxAuhca3wVjbxS2vaQ/VTWug5qz3aqZ1jn0HloEU8TLEeCWkmhcw35YeN2
	 FeC7swhEmBUDUpPIBAi8s99rpQH3DmLQTA0zzQqQmdwuVADkEvzDIr1uau0aoetnjR
	 pQQ+mOkL4aBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995D5E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612315359.17876.4233579932203330268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d49e9fc5f023bbe92495c163d05b5b299f08c768a7ebbf7e1ec6b60c408b92
Date: Mon, 06 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736123153
