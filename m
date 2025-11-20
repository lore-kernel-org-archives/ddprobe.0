Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2824630146B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763630514; cv=none; b=m846tfM0AN0ld/qV0FRdpe4vlewe1G4NaS/4Q4EaRv/LfHmgbhBNWidiGy8zmY3nQ03IZnx1h/d5KnaoFqUM1aaCHbRLrwiug1y69zHN9+l2UkpepCEJaB3Mg/2oevPaj1audH6BsGCfdXoLZphYEkYu/ae6nnIdJw7Eivz6Ieg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763630514; c=relaxed/simple;
	bh=eHb9SltKTHznI4fdQJw5mQH+RsdZwz1k0hcXAF2qVus=;
	h=To:Subject:From:Message-Id:Date; b=N5EXy5YonptYitkAkhRPhgIuokZP/3eOYScDjs0Yic9dwa/PxPfuFEBG/dv47Fo2w/vJNKuoK3Kgvvkb7BeNRsBMv4Xfq/jbOpm2UZI9uTN3i2N07IlOfl80801R0lljdxUd0+fJy5Yh6kLzTrm524THNME1rGpTUJGHcA/dayI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3Kl+6I4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3Kl+6I4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A010DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763630513;
	bh=eHb9SltKTHznI4fdQJw5mQH+RsdZwz1k0hcXAF2qVus=;
	h=To:Subject:From:Date:From;
	b=N3Kl+6I4HKFRqZi3sg/Ln9UVnMOAZmP3mSwCJbTUQikrGX0fiDj0/uuBJeTN/iDe2
	 FZ1o/7JbOvTl+feodTJ2buBOmB+I/7IjVc7+aUtjub2h/yq9SpxL3tW2pCt155txLX
	 Hbj4vpDSlTm93wguKHZCaCKixU/4xCq/7hwWjI8kQkxAXcCdPacC2yVfknvC97oAE7
	 JQS5BXt54I0lY4huivwBdi9ckzo9F7fYAb+XOC0knVR6RyYKpqFkUrYokPTWhRhrwb
	 uj52KwEWtKoYIvvppOkaS6PYSPdHvVGog84Aaouvn10yqzKhmapPlJ/kGhKtII3PZO
	 /p4PepT8CMzBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A81CF8570
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363051358.25107.1234409720942391304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce84fb71bbc42f8fb9ed42e5dd98b23f35f4632d3cc4eaf3ab1b14875b36a374
Date: Thu, 20 Nov 2025 09:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763630513
