Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF10137750
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782626914; cv=none; b=qucHMArNb54BGOdERH1fQuD/JbjTTGmvb3/I9GM24lhPqSVWjQak018R//hOYaZaNyh32cLl1o65wR273rVLV7Rg1tTtGsHs/pOKx1fTUGjRgbhnpYiHaXrPpydmegMMIR9r4oVFBkk9FteFuyGv+75EfBPiz9LF8/JM9fjmkNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782626914; c=relaxed/simple;
	bh=EKLdhUPR5pAX4DZ9gjyMrUjYx4VVX1LthhseYhGv0ko=;
	h=To:Subject:From:Message-Id:Date; b=p1zF2LhbUvCOU9GfgySvQQxSGh6x+qVZ5xvcA1b3K8BI2bcXgFPmdH22b2clmNJDjkdka3q/NstSuYfo4YOpAEf2Mtb9A5A2A5rMrxTQQHPyq5gM3H2CutRDus9LGuTIshNYQvTW1Ax85TFA19k2gZ/mDouF6jzyl+1s3gNxPXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1GntJfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1GntJfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD0AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782626913;
	bh=EKLdhUPR5pAX4DZ9gjyMrUjYx4VVX1LthhseYhGv0ko=;
	h=To:Subject:From:Date:From;
	b=N1GntJfXvxW+5qrvi5VaRjIXGPNwmjdIncpjKzAbP1eSTPBdNgIvz3yi3x7b9Gz7u
	 PQ94tqj5kvFDDhWUON843WEAEFoiH/D673ivN4nK9Ce92h/wDzSPved3AL/EiuhPY5
	 HtzuNLrHog/oZpMNnExPE/Y/frDf5WuJH2EKmuhDqewb4OJnGITg4BFp6/ncpXIZnD
	 DzHeB7PKk6MDrKA+IkJsEFTD8or9LRYdlpaNagIMvB4W11W4vb/h+I3mdAruHd7o8x
	 o6H9uCrjYKvzxmDLNHbypT1jsTYJgQlBW1GwFhEsrSWF1Brs238VC9OeSWd6kkqB6Y
	 UUQI3y8A5h2lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DE7C43602
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262691372.26088.4955449785825920357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356141dde8905dbe6014a3f6e14ef24958634385358faf4e509626245e13a8c3
Date: Sun, 28 Jun 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782626913
