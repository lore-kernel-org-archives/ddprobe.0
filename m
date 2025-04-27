Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FCA17BCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745797193; cv=none; b=rHWHkIVxFpaKmI47XLdGEhpeJ7H3uFnnp7V7sR5TbPHUTPm3dl3edCvNmKN5vCL5Y9VbDFdYMQa3+q5vv90JVOn4SEW0jZwatIhUUrle9jOy06rWwCTVFKmNWGF2vibpP30Z1DYQaXvDlsowi/DT9nmRZteIeynx19mX2+CIRv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745797193; c=relaxed/simple;
	bh=vnl5Ckk/H3g2tmOC0ZwmyVdLNRhD+m7+OqLgCss+1gM=;
	h=To:Subject:From:Message-Id:Date; b=hmlm21subHMufowMTeOHfmFfQ/0r730yKMF5LX74+J4p4RXbvzwK3nwAcQN1cYUtmEr8e/p6jjcwHmgtXUJhZWazkL5/z/fimy7CuQsOiea4DT6T0JqVcRFvPztWotk5AFON0ZFC/sK6R7Hm0egsnkR22LucJ2szTnk8HWnRI9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9kzM7Br; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9kzM7Br"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7978C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745797193;
	bh=vnl5Ckk/H3g2tmOC0ZwmyVdLNRhD+m7+OqLgCss+1gM=;
	h=To:Subject:From:Date:From;
	b=q9kzM7BrYX8ozJ+oUOpIP7t1MCJRrqizky8qZ3Dw7wfZ8jDKCAnveYaGfV0hCqqEI
	 QUmI8/4LwmZ3rfoKn9F2nEUPQO4I8k/v3qJpkXj7ikolgDlO+YEPe1e5YTfLpWrH8A
	 2K7aJX3IkNL4IIxr8e7f+TDIH2t2Tc/zOWjVBogq1sxMgkxtPldjibrULWCJrfibcE
	 3P192RIMh+nw+udMFqN/+MS4ryYrAbTVY7voPlxkuEgStaWyMP9ufNKfJFUxxAEUf8
	 QoOilacwbocOX5peVZZO9GMn/dQflz29IwQIhib8pGJ0WwLliJtlzzVPN4QPsoUO3p
	 NmfwlMP1Jwf+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957FAC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579719358.6955.17683934793674151012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9d064cf3c7e2b2d4317cc23de203a68f3c1a97ed97df711f2eba18da5b25a6
Date: Sun, 27 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745797193
