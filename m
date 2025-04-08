Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F232322B
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744088394; cv=none; b=aZzJAEVC0rNCVgCpbWz8JU6OII5wqBhivEsBOQ+jITDduXQXWgoqM9egxhUn89bGL2hAaOx5wJDF51TOJnW5G9jUwFCGqwSUgyxhMUXFUCprJC4j28b4EuJ+YbWtZCBo/e+KwTOh7vPhRIS8pKaNTzb1052ZUI524ZBKn6UdEZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744088394; c=relaxed/simple;
	bh=tFKKlCCyLWZVHewxZKKEsbLss7fMkXlgbcO4mINEtRM=;
	h=To:Subject:From:Message-Id:Date; b=VSuno/0w2S1MkBXseUDzjdpih7DliVPWGUpXgGHhIW6DCc7o3dScU+bZ/9mGk0AfbQObCl4sC1JyEKLBn6pizGmu4NCr4ZiwXa+GAWGROO6aq0Zxg8EagX0siQ5NWXk+aR/8Djkb5MD2lb8v1wbPhiYeWRx2lYQIMFG3kG9Tw6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YM21W4w9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YM21W4w9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B65C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744088393;
	bh=tFKKlCCyLWZVHewxZKKEsbLss7fMkXlgbcO4mINEtRM=;
	h=To:Subject:From:Date:From;
	b=YM21W4w9kp3Hsxvug1cm/2nDGUydsPCB+Zri+CrNJYpowWPlmy5klLGU+Inl8Rv8S
	 CkMKZ4pV+4avXZodktNzZlfdBt26E7f0vfNTup6qfZZ1KL57MA8L2nszPfmCaaVwJw
	 mfeOSNN5zURAFaq31ur6/0v3c7j/5Xp67yhTPzmuNqoqiSr2QW45IbEYqWqTfSAM7Q
	 lPBpRrxpDtfaJiPn08ewUnyKZ9uCqYCjiApoaK76s3wo14hqw920499Zrmf7rUqupf
	 LLva0+Iyw+TcnjAMglnkg/rSTo7bwsMgiv6ricGvqlyMoyGjv5x+xsNAs2kZJ8Jd3A
	 /ylX9wvEBgfkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9413FC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408839359.29046.15077770473461066806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1687c58efb94c4f131ea65f80a1047aa96857f8ef06b582ea1660d4916206b02
Date: Tue, 08 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744088393
