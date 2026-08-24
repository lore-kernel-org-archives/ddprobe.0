Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D3643CEF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787585434; cv=none; b=KBRKvO8pT+WB5AzOq88wZwpvIpBKqynfaI2kw7xTjhnNxfHIxq8nTqK79f2O3kthPPi0p3gIcobh57ftX86u/7sWqi+l6iiFCkZLlxwELrTRXe7KsR6UHs9tEZg4s44nVa4Cpy+Uvo/uznFFb43EuwaxGC2+F/O8rHRWZSO2Yao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787585434; c=relaxed/simple;
	bh=TSkJRQGyiU6l06TgCwvHx4ScdW9Q7JgRux7SHGVb/M4=;
	h=To:Subject:From:Message-Id:Date; b=MEARYbczIKWZn+YmfqjOHk6CC3Va5uEVL3ysGOpeUTFwE7hhDAvvIYQjzrRMZ6jCjXd77knFgNDmNH7HAm1/kjx13JlvDER1VLGmUzjY/8Og7AMjCJOkjnW70VzhHkMmBOpugW+vGVjgiyINp4n837JMAjEm8NtTopDyD1hxeqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b18mK+G1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b18mK+G1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D312BC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787585433;
	bh=TSkJRQGyiU6l06TgCwvHx4ScdW9Q7JgRux7SHGVb/M4=;
	h=To:Subject:From:Date:From;
	b=b18mK+G1Uqo7ilS1u+UIRT0iVR5OAqtwDxlCQFZTEyIKdl8PUxl1ntIwpx1Omrd0p
	 DDxAQhhc2jgMBMLyckVC532SehpHxnmrgU0YNtplG+3ykp3YqiJqCsW39buMzb3tGC
	 wTMWsISnPpfO8vW/UDIpr2/v8GPa3h0seQTIRoriamCvQpv5OyVyx/WqGQV4s9A4jV
	 SyUoy1fKUtk8xZS5G/XQVp0lBIpz2OdMmz5ZfdY/t2x1OQLug7ohsZvA054rusHrlv
	 UTcDaqHzQgkGiM1K5+mQgM5Xifwm3qXjc+oFopj7togb6G7CYqG2eepMOE98cyb0Ov
	 +tjcmax8FAkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8E5C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758543369.5248.13911071614649316437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977ddd592b56877184b0b596b708f3e8bdcc24ca3d8483479bd1778e27f5fa8b
Date: Mon, 24 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787585433
