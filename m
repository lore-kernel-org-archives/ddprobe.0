Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385AE289E3D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751290194; cv=none; b=FhedO9zwuyMLpPtp8oHR2jUd7xhXD0JJVFitQX1VmHIkFxFrNvhnftNWbhf4tlpRtI/lzebtra6yMZFgrrmT0YeuYkZ0V0CifvQUgGL3A5CBszEZCC6WuF8W++/exVElrj/wItL3f+YvyLdHzVGik9PCQV49mxYzi0hGzaRMl7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751290194; c=relaxed/simple;
	bh=Ktluxy9A8+YScVuz5z2n10sJL3CklMVCADkLImdG6pk=;
	h=To:Subject:From:Message-Id:Date; b=mRYZSgAborQFlzQxgGY5yFT04mTYQM7QITHJBvtM9pheg6gpHPtPWiRPaNE5XYPY70BnJPiYH0Mz+jjngX7jNU848dheDrkDAgPUkKpUpxWY7OAzPfvWqQExPCh7ytLophbDZP5U7O0rV49LXy3NHQEJUqpt2VpFvkaIFu93HUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4TOmzow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4TOmzow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE615C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751290193;
	bh=Ktluxy9A8+YScVuz5z2n10sJL3CklMVCADkLImdG6pk=;
	h=To:Subject:From:Date:From;
	b=O4TOmzowyxqZWc/ht/2QISX3zwBjTt5POGfyg0PGbvqaAz0oqQsjijQF+OgzqYu/w
	 Diz5wf7+lzYd8OR9moXjpoTW1F6eOiS/IWuJliZkc0bRxY90OxII3IO4yka0aGi7Do
	 GAfu13mfyaiWPmI2VZ7thiZ37M4A6/aAqScauuA3Lm20QuqPWW89pwTmlX02fzkLO3
	 6nXZfUTPnk22ANGrpDs1pWlZ1/yCRO4gs1Rh0MO4eyPHuor3fsobNO44r7V5o4pKlf
	 ZJnmAiw9brAKnTLW+xof0VNgW1DZODqNCvoBv7AQwGrLBEm3VoE4Gm96/jM9NWZJY0
	 KHtA3F8uxELNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0199C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129019364.6360.3162782277818999161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c30a2e5220856e9add314086acdfb3df2b257eeed4feb83575735277f163b5
Date: Mon, 30 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751290193
