Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196A025CC74
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774118094; cv=none; b=pAP08s2nwIUUv3qdAsBOMF+rwuWEH4aC7xM5yh8vcpa5D03sCqtZiFF0aEPOS3ScgoCtlHPUPmb8CQNouZteGa3uvNtYQJvAlCRc66xPFTPICoIlY71pK6ybCkXIXrp4cp4xswqLxXBdizkJJprRSQjyBF1A0fzvojMA+SEciTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774118094; c=relaxed/simple;
	bh=Q4JiPGJs0CNDidpPNoBiJgkFhoj7qBLvKjVcPV55Gjc=;
	h=To:Subject:From:Message-Id:Date; b=KiycLlgVyqtcWmrpQwvAtxyYpGMHpFCQv7eLoWtlvtCx5iOGDkjTlmQYNb22GGdut2ME0h/WKrj5RWvFm6KJMHzaw/+BsP428dkS1zqSLepde18EY6uAR5Wby7C+jBwiy1E74D2mXW/G1qrJ3bPPalGwjcyJxtPdpK9VSzlesdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twJhlZ5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twJhlZ5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482DC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774118093;
	bh=Q4JiPGJs0CNDidpPNoBiJgkFhoj7qBLvKjVcPV55Gjc=;
	h=To:Subject:From:Date:From;
	b=twJhlZ5KYFILVRY1QdXDAcxz/GI+TijpUsC2N4G8QqlTsv9EJCTN0upA0GZIWGhSj
	 IVNxOsIhzd1oiO+ZceOcQfIAxyC0c++83hHuHr4P5aGQBetfdOI8RwjtEyhfptsgsI
	 EPHOXQSavXaxH5VR70O/c7vK5jRI5UK/MT3qXEG0lKMia84nrCUKJX1/GtK217DgG2
	 W2CRFaM+loqq8V162ssLza+UZ8CLrZNiPpjeqdDDw2/72dEpvUJCRPOnQcRqZFvrRs
	 bKKHuN46udbLTSzjbejgWbh0y3fUSFkswpQJg4IeeHZRPg6bf7viX3nZQsaMkHhmyP
	 Cl03FtEXHgE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393F1094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411809357.19340.8407645036975732885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa19fa313caf6dc020a35e2e35ff1a023c9f1c0b40478cf6e4b77af9e17a4f6
Date: Sat, 21 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774118093
