Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118FC388E7F
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773308094; cv=none; b=gtjL3sEoIEyfQg2PvgLoCCVRCLsMWY8Uo4l5WJ4GwZwYTqIaifQ4l/YNjP9JiVcvs54tFVZa9699mdVHFs4sCvIIAm0BO4kwXSS/f17kNxzsdDbICF7E/Z9is7TEqSz19F/ZfVqPborypMLM8LELUfN5BAr2f4oqDsZNbkhg9XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773308094; c=relaxed/simple;
	bh=QEIW9uyIkEfKfk835PtpWGizC7fnrVkv4BNRTcUcmwA=;
	h=To:Subject:From:Message-Id:Date; b=iby1BDUaJxKeWE6ubMwWjez8RHZe7wF4Ew9iqNkx68qPKz7EipO8hij4USLT1AOyZ2Bag94ACFc8/MYS40RoKfgDw9t5eBVLCsSUAtj23fipb/jPv+Y07VIj8aAUVML6vgTuqj61GT0BVMKjkAKmamTyi7N2TKFnY4DoPEqlhA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYoyuTSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYoyuTSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A769FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773308093;
	bh=QEIW9uyIkEfKfk835PtpWGizC7fnrVkv4BNRTcUcmwA=;
	h=To:Subject:From:Date:From;
	b=pYoyuTSCTuJ9ukA/99b98wHN/vW5sxj3oxths6H494vrJq7LtNbBYK4mMI4VQiUWQ
	 XnDtifLbxaUhL2BcN5g1X2aZkVUDNZFoN0YxF309DpHFnxmve64KCH9NIkm9hl1xwi
	 50Me3VoQK2lBRhxtMoMLyigFX8+I0mq62KaOVXHyc8FtH96k9nPsViFKYvKV5V26Cy
	 VH84om+oedw+4MYSNyaLb6Ge1JMGQmSLeZgBee13bEcPXKj/2sg5fUHH1gVI90brG3
	 VK3nTTupBv9HBtNkLYqcD+g9g0LLlq6JY8fH5qhgOLqp0AD06ccbb06ZAwVovHxHh5
	 r7muohJzcmgEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93754FED2F6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330809359.11526.599594485536743330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bdaaa4a7119ee68cf52c6dacfc13bf754f7fcf1d673539eb6729aa6d5c05a0
Date: Thu, 12 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773308093
