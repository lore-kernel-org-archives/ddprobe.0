Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519E2207E1D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739429934; cv=none; b=I46efdbEVDk8WnO0p/mYangBbc2QGL8BoLDN7Sl9dEDY9bjrbVll9G/3DEeWaprxJdc341+JeP0bq5rPfTZDz2nsCB3aOpSNx/9sG7rw4+2JJzsH7RUZL1Isiwgnh/uGr8q7bSQdezO48tMulR1l35Vs5OeC8R5rwIcGYDIwnCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739429934; c=relaxed/simple;
	bh=f/9ZFYWc+P9RMjZGxvH77f0tbSoOyO8zoqucNuPykmE=;
	h=To:Subject:From:Message-Id:Date; b=o6mzLI7FmQ5e+5Or7D2CJj/VoxtF5EAr5I5FSXVfttd7hHxcwFQ2DphuwUFfEECnh3W+cvkzIRocmXUaR26PXfZj9tftd3EDP/U0VMHfZhmED4ssBacYulA/i7NWLfzLVSPl0ZrKBI+/bMuHvegxbDycTSPVaLCOvkVZpkgoBWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfztyfYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfztyfYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE24EC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739429933;
	bh=f/9ZFYWc+P9RMjZGxvH77f0tbSoOyO8zoqucNuPykmE=;
	h=To:Subject:From:Date:From;
	b=pfztyfYLrhY+zBdo/JUHlobuRl3BO8lmu2kYwdSBN4Bu5sUIRd0xFVlOoaoFb5U3+
	 +lSOSpRxj0XRWrg7/8rx3q5eRr+9vyDqpcr91OKyHyaa4Qoluq6CeJawhIxS3X+wlR
	 S5bi1ULVWPNLVlP+AnvN2zv1617ybJ8We5jyuO6DHZx4NLiQD3zDV3mT6ksuxt0jOZ
	 punm7wQJhy2+amkPKrMkk3UV7xgcxnzxtBH+udYoYHaJTBVOG4+twLEXCQ/taL8I2a
	 Hz/KnoHtZCN27jvFNuqZ6g5pnXSorpvR5s64H3sadottdwdVfuLJOqy0l2ft4QxgDB
	 RbLLZLJ+g0vFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC0C021A9
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173942993360.622.12152655160295282567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f63e5d27cdac892bebb529e5c18209a812edfd1fa4abff9923fef45065e37f
Date: Thu, 13 Feb 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739429933
