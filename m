Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3912C2B9A5
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755742794; cv=none; b=cXzOjGGy+FgSb65ze7QEtouNSVytJlXpP9IP8W0Rd0zlcaJqxb0htjwLJz1jyqcRUlr41enZZNooS5VLvRfUpvQxZX3XVsrUNJAoiltYoQ14Pxaxwe474iQTCmeyumMsunSspLKlBY3+Sb7sTJTplwKa0upW5JzYQbAsMho+slk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755742794; c=relaxed/simple;
	bh=MhBg/99CPoSp3ud8e+dbWAZbnXPnmEYr8AkrTxYyG4Y=;
	h=To:Subject:From:Message-Id:Date; b=tgNmmTJk29RjnDkBRUB7uF2oc6vE+CXlBSs1Ue3az8VzeyFkwpPXTIon2vzLdBfbu5WmeUCCOyYjQBILCITIo2Mj3cFy7Ju7Ow81T64JvmxFerWhjTWruMUu6z1BflRdJW+9yFXN1tpIQoaLF/0EVmZ1sbqcYpD3UuUJdtQtHRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ph1XZqpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ph1XZqpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FB0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755742793;
	bh=MhBg/99CPoSp3ud8e+dbWAZbnXPnmEYr8AkrTxYyG4Y=;
	h=To:Subject:From:Date:From;
	b=ph1XZqpX+prfXJOz9m7umZqrct9Hg6CWDyv2vMh/2hLuZogUzBQ3gluyMP9AQhj0W
	 AMtF07xhzMsFOiJms6XZZ9q5+f16LyLQ1PRZFog32usu5RbFDGh0fuj/s8lJBcpLMF
	 YKEME5V8nfgO3JzvAKgj7vCbJlzbvZSwm/rZEBIMdXZkW6AKjJhVrBJ0HVAkaivJvT
	 mmfQmozpDEyIvStLFagYXIt1uu4gEGdqGgaaeLFDi6B+NMIrbu7/jhO0ebajsHyv6j
	 5oQOjhn/ZUXjDblumS7otJdGxyIWwGzGaSL+7W5zurs0LQAki7INKdcyReEUDi67Rt
	 BBFtc6C+qQBsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647ECA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574279359.13692.3124244685253432706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7633d4f8c5a56257eaa4e25b7a87c2417f7e6d62478fd1ed889a65ca0a0438a5
Date: Thu, 21 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755742793
