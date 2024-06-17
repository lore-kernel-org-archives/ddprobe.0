Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDCA18F2D1
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718666303; cv=none; b=sxR/+V9c7aF49RvEO7GTnl5Hq9ibG1yHPP7GALPuteNZemfysD7Db4uKXZ0E1h/fjbCe4yvREmpamb3c3Srw5WtahIFHEBel5htoPVyp3U+dYIkGZhnXl4OzaohfHEEZAQuk6NQxeZd8AnKfXDrKdfn9IhFpGdy8r0XzNwrDfcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718666303; c=relaxed/simple;
	bh=fmsxySykxIiXJnBDEmp/FHNeZw+al+ozFF/YVXLwZmE=;
	h=To:Subject:From:Message-Id:Date; b=CKPF1YZGTBkdxjgsWhULDUn6jhijrBj2t6NspGecm4YU8SGWreO0lOyWTCi5yhdDlEeuinK23feCtSi0NZ9kZXJ+E3QSaafSf05iFP4+WdhbS7qQDtV1JyyFLiI8JlwyQaRt8bo3Tvb8TaOOWCHIAWTNF1P3OMqHD0sdBvo3JGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7FOspCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7FOspCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45B8C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718666302;
	bh=fmsxySykxIiXJnBDEmp/FHNeZw+al+ozFF/YVXLwZmE=;
	h=To:Subject:From:Date:From;
	b=U7FOspCSCMzXc2ioH6Rm5qcVmlwKL1OwVvhuh5dCQWsB/I4XRiWFKLRukgpU+TFoy
	 BBBhlH7tMYAiLb4QIrihK1/AJh4+duVuCHdn917e/PAKLcXZ3NGoac9vwpVRHYYRv7
	 175iSdRd8PcbxQGC/1NfHuQg+fVzL6ElDDkG5vnJayJAapT5rjB5dsjVQ0omLbAcw9
	 3Adi11mf/zeu1HvxcBHkR5UJpUY/jb8h99YZdRCBNkIY7qoZa6IfnTuJoI/IaNFwxa
	 0OFiY5dcPNtRYJsZxqnEXWTl2wYNLVVErCRgwDZiZhByeAzumOIP8CgnXbVFkNGlMN
	 XvQueIFlre2YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4BFC2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866630276.29542.17744627261413575997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0350925444ff4e421d4c77e4b34132b513f5a2bfe72f1c724df52282a72761f3
Date: Mon, 17 Jun 2024 23:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718666302
