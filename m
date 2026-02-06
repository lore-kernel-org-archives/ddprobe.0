Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFE032826F
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770363834; cv=none; b=lvhsVJAh9BGHjQHEO5EBwyXvVMCSmGRZnQHdO5kfUP34k/QAYWjcTKHj2E0USq8fWAeskCVMwv2mfBVB/hWWSLLO6Mxb/6rMuhdh2CGjHwRzMz27c1+CohL6kG84FWjvUjDRn+7lFgsoGDBzndN9NwSsksnvatTuCScVeUZwPfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770363834; c=relaxed/simple;
	bh=6UZLaPgCazz7j/1ukWwQK7YR5s1rXnqiS0AHH8LGIjo=;
	h=To:Subject:From:Message-Id:Date; b=hKioqtiL34o33NZLFZFh2TLSJJ232xXeEBwOATbbQxRNeLZMPPy2FKNju8kr0wN5V/jW8m468Vk5UF1VODxQiwl0A1KcKNjcdDU+vquzTOl76NUsCrfPvnF4qiV/0WrDIWzf2unIueQGgPHzvoeBMI8t0S+KwKCpx06eB3+O2M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSUTqDDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSUTqDDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F39C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770363833;
	bh=6UZLaPgCazz7j/1ukWwQK7YR5s1rXnqiS0AHH8LGIjo=;
	h=To:Subject:From:Date:From;
	b=RSUTqDDbJmVTvr+m4zXo/8W90gYaW/KkelCQlhZ3Px4SEXc+0LWr4fdGkmVDsUMyx
	 aQ6xhb+f2Bheg+Q4xlUKgzNgFzQyxQTMWULV83wzAWwFN4jT2wJ54ugENqQ5mLiExf
	 gq98/0OHsjkaem/GxoupfSf/JOGFT0aUISIIY+F/QeTA8LhSpm/RNYNbr9fr3J0cjK
	 Pg8qVx2jvkfOBB3KMlvvz5fZF/5bPsuPPACfnS2OFBuAJEBVtNRq8P6CjvsUQ0h+N3
	 zQMY4OL5k2rUQpXoA95RdcsWXI9Y1qOcwfFudZuwJInAHD+iDoP+o35uVJUyXJ1KDd
	 /crnK2mK55Qgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA2EB28DE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036383358.17579.4495761837070931418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e761b014c573d0e770236f3ea0375815799995f6ea845afeee5f7a97c9d325b9
Date: Fri, 06 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770363833
