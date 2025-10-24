Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177388635C
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761266994; cv=none; b=XetH7F0pHyYbY+P929ufx5ZJQUecWPNw4Lw+fZ0ZTrQLYUIuoCh8wuFMxmyRs7WmMoP6Q4lFylBRVV6mgf3USrCPXlVQVBK9vVcAJGw+k8oG1QTmkaDjKvhszWVt5H/wvt1NMkmwmDC0BQ3bybodXMIeXXcVLQSb1HPKP23ftLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761266994; c=relaxed/simple;
	bh=TPBxv3e+ate+SKPoQzlsMbmEh26a/seLWGcIFDy8Jvs=;
	h=To:Subject:From:Message-Id:Date; b=WvyQinzwwVJuzVM3gAwViy+x1R3hXhk4beqpK0SmmRI3/6nNYsY1EvCS5RTNFBb+Ls549OQaCw+gHcFe+2MnT/iBdK6Sl0vPaajYWjUBvjkhEnJU5n6q40FqQWjDf1HbXcNS0yXEEaMb2M4WxrvgUa7/BeWOXUOkcDQM9cXO9wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/WDXE8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/WDXE8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A665AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761266993;
	bh=TPBxv3e+ate+SKPoQzlsMbmEh26a/seLWGcIFDy8Jvs=;
	h=To:Subject:From:Date:From;
	b=G/WDXE8IRkldCG2NihFW0GlLGAb9lh6uE9Qyr8JhWrF/+rlDOyUZnzIzbmVZ1AN7x
	 BP4fQW8layY3NXBJLb20MfZbk5lpwvxehl4wIy154wEG8aWaOocsISUKlisCL9+bNX
	 8hPVC8g/aLJBBffdSwE4grfvtCaxfboucIgwyDyKKjalJItUe4jiz6+GtfqgOPAqIE
	 ettzeL0lqu19Bc0pYxeyh1aa937a9NYNipIvVyeUV5dTrop4gCx2RPh26trIDNMVYO
	 MA6ziDkNcIjTDJ59OXado4yZOlE5g9B4xoyKzmFUC0xxWidEokYN06OwoyKQNQj38X
	 Jb+PyvKRfx/Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93786CCD193
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126699358.9374.8531078993628070302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55b391dc98cdbe7dfe8125c697805c327bb0a944fc0f5162818d44703b98944
Date: Fri, 24 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761266993
