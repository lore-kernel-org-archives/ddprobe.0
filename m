Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F6D17BD3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728957354; cv=none; b=MzCgSoqM5k5SPUBnSAQjPJp2EEAZ4AQ86DGohU/9QcqvAUxm45A5x+0d28MOk5jD4uXZPjr5DPnZUbobowj5Y1VyomkI/OYQXnMR3DAsxWQexywW+IzGTgiK629jZaRuKermKOCCxUm0WHXqd83qbD1Aty/iB9NkLkp2tfbmomw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728957354; c=relaxed/simple;
	bh=6hGlKkDKOGUIzARWXE2L2DWkrMJMauxKSyGyldV7xHo=;
	h=To:Subject:From:Message-Id:Date; b=cyQ41vWKZWSIMUwJBQwE6F7blO535bksKEMSS0jJ+jTNMnrNIOKgNWPZ/KDa1G9O6mD4x+gTIPOdEUzvNmjsngMRqG4zgYF6gfNWlLCqgpWkKPOT8IGoVzjg9on8WQOHnpQ4mC59WnfagLsu5ungHCKzyWtlvxz8FSn7m040iBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzZSTqGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzZSTqGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4DEC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728957353;
	bh=6hGlKkDKOGUIzARWXE2L2DWkrMJMauxKSyGyldV7xHo=;
	h=To:Subject:From:Date:From;
	b=hzZSTqGFHU2XJ3cTbJO0AHF/07vWxkg7vbbLRQb439yo+PcBN3sTDmutaVmnrgyfm
	 uQlrTZUZNDktIqSVB8jAIauPArwh8GrWaQpXK+o1si4bWBIiOiq9/om8+3Knl2o1S0
	 TKkN9gX52ekJYc9h9j0mYHZS/TmXNoBvP6TaKYlwh0uZtRZcmW5VqBhSjaJyd3pxm1
	 BrpVTZRlEAdHQbUCWKQvYGjF//PQLNUTJ4jNxnX72yqhTQh0EBE/5YZBZHzcxbH0fH
	 oK2WnQdHToxhn5NAzY6Z7bkyH3LPOSpJW3aCriwabtpaZ8Kwnta2uijPJ+o95hb7eI
	 0ZxksZSkhFl/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B661CFC501
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895735360.7669.352201352394339591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1aaa7167afa666d100290307c6cc1a9d6459b5439b1a8a279c0bef4a15a4443
Date: Tue, 15 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728957353
