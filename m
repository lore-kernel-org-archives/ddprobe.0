Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7EA2236EB
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787453434; cv=none; b=AckXisqBFaO4816Uh7aYltnNHAJmis2mzcLXGiwz+dcJfHTr6xXLNGizMoKW7jz5bVv44qyT7m87Pvk+OiPobkRfzPUAqbyblqTg1fepu5IJai6vuvrslNpwCTkqVQsVp45A5eJYGw4n1yAiB59beEfSiJ6VnFkt8j3bwL5s+4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787453434; c=relaxed/simple;
	bh=Za8SrKNTzQD1tH68ZJM8IjKujnZDPGsDmoEv7bRj8XU=;
	h=To:Subject:From:Message-Id:Date; b=PtvHQQ8pTehdCXQicpc63LdhMq0ku/7+CMqzzKiZuPjFdcBQWzbx4r0+6Kc911svBhVGdb88Qzg8/6R7POOkyZN8RqhTds2j/2w2WDTCQ19CWq9blJRJsdHl6j5j+ccY4ChbsWWP5lfWsoXik8nKcHqqdKxHV4SmFsDovN3AtoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zrnrj/YG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zrnrj/YG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D64C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787453433;
	bh=Za8SrKNTzQD1tH68ZJM8IjKujnZDPGsDmoEv7bRj8XU=;
	h=To:Subject:From:Date:From;
	b=Zrnrj/YGKiLI4zlcdnQv1rrDk93QeyPy6D+oFh5EtcCIbTzQ97dU4J+J6A47raAUv
	 hgqVk1RVYoQVFxT4n0C6Gu/unEQIxpcSSfVhTXZpCkJS18MMNsFc8bmgvAaBMhwvbP
	 MQscjaAtasipIbwtihjgmmPvyP5FAPW66vzTXJhtDp37CfvtfANIKHSv/HotVzjuBp
	 eSvumrVGcp5zc3WS6L9+tKkdpOHqmcbxASTQNKA0+rICIm8Pn11GvuSx6bJNxaOZWN
	 +gb2gQzXa+DVNcGUsnJ2y2S831yx8cfpLBBwQ2WubijQsEE/tRDwHawAaf3eNmC4A2
	 jVPVnJ+9eLO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC83AC5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745343369.17942.7584631238050092838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febb4add3b9ff794dda73f5773c6d029a0b0cb883e32b9f181288ec2120a62bb
Date: Sun, 23 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787453433
