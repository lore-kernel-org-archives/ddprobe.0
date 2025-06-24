Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E90C229B2A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750742994; cv=none; b=qamHRcESfQulHQbQfiFvPt4gF1leUfDAQCAP1pdNNCxByTB9RZOSuWEcqwvaUBMcGCPlZPRaKeJLh9O5X6Wh+gS3KunudwHgiSsLM2+tsCmCI6RUShSByPIXbeC0C3/kzYPgsZ8ex5AAhgMIkXKTYlIrH70fHu8vhaPJkp6797I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750742994; c=relaxed/simple;
	bh=Hs/8qUjCSPOuzI+AeCATZBPrh/JJnM1VDIxWfG7Waos=;
	h=To:Subject:From:Message-Id:Date; b=oIRFqMR5HFEeB+zidBKcVNP8abC2tXMYflApZcCiqI6HQnsViT+APpOHuMLhWCvfD4YAVmuSlZbBr6DO+O9b70x52ysaj/d+ll9hhnHXA/jNQGXvr5WYxpr67+wHJ+p85oc8VFdXZuaXHOg2JOfcuIX+RNFmOqN/8fRGppIgSEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMHPh3m2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMHPh3m2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750742993;
	bh=Hs/8qUjCSPOuzI+AeCATZBPrh/JJnM1VDIxWfG7Waos=;
	h=To:Subject:From:Date:From;
	b=BMHPh3m2yB7abFYDaBR9akJ8V/FGUP5xmZXrWhY/bmxOB0D8JLnNXqq+XugmKMMno
	 WuPxQ9cMCshpsK8diGRABdcxCB3BtlWlKea+jX165VysoGIIZ0BZfhkGWsIOAOYxuf
	 wG2FQmLm6GaVJnOU2+P8gXRA4k4wr91PR60ybphXG2cnpl/qdl+RKQtqHmxnS9KgBr
	 sDch/P3tYVFJ66ne+N5/ysVl9aEeNtsZCw0PP4TrA9LotnZIKr3IULXW0n8OCVQ3x3
	 56z47U7Q23TXO1qM/04pbHCTCj8FhezFVbJVhzDwOpptAHF31Wr0eVYRBcC/UxmbHS
	 nVco9dOHsNEJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2A5C7EE2A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074299357.6580.1127707867740903675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdba94f71a3bb3706cde5d4a0a3b1a329ea6be05eb48e4a950b1e169326651a4
Date: Tue, 24 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750742993
