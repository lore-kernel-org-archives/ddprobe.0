Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804774B8DD2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781712394; cv=none; b=Up2p6QEYEbcd6H4b7wRfPjAwEgDa15jPcg25Yunn60Y7dVqCf4AxA/VxbYpX9BLoKXtje5vHYSDuxPGWoBTkkkiVY6oLO63QPYXcyXEIrnor85fvvaEVHvmSRTT2tllJmR9xQP/REmJYZS6+846pcskFCv2kXvOCiSamcTMqdnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781712394; c=relaxed/simple;
	bh=MbXRVKY4sgi175t8z+uMUYEcz7dx4V8qqlnbSh8Wngk=;
	h=To:Subject:From:Message-Id:Date; b=p19jhO9kzjaPwHjpO359IwQZwNnjtQd3v3nyKk+kR+6bC1ZXzf/OTR/pVMpn0LDmMr/0YcRH/PpSQjakdAqEexqCOlrAgNX2/kb3xNMgFD2Sm9bqkb/R1oDv+nepAWSpj59tqbcBGneNcobYeqUhxyxZfa4FI94fnP6lRns+aPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kieDMP8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kieDMP8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EF3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781712393;
	bh=MbXRVKY4sgi175t8z+uMUYEcz7dx4V8qqlnbSh8Wngk=;
	h=To:Subject:From:Date:From;
	b=kieDMP8jBTC+10tURMDxYFRRwURD56H4qfL5lJxBkxxaTMcwriId6MjVE3AQ7HYCh
	 vMjYYwtPZ0k18JydCf2bGN2Nkq77PTWNz4THVwfcjwJAS6yNJsGcT5nP5+9CcDRd/2
	 q/myMA+5/+GJxcWPUmrj4rhx9DXpLzLqHFP7sqFE9DyaobUkLsBzHOdQSrGt7g7fp5
	 BY8CQNZoeUwJR/0Pmm9r5OsCRjmuvQ/l+TNs3SPOXXcSVRpyvzEd3PR3TE5r5EUbZ6
	 cjErLGzFTQUjLUCVyIgLlLpTD3GIGUqZcuW96mIBFjbXM61st26SWYULCdXtvgbASE
	 Ozdf4UNQtQc4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC53CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171239368.27917.13858634334267618544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc8bb9c073c9c2e8542e703890a8a58cea01eea2f498b1bc368ed742cae5869
Date: Wed, 17 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781712393
