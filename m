Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC3E33E373
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769107434; cv=none; b=IbrgaTIuO3rT1aPY8VZQ0cMITsKiP/JVnlkI0BL6TndAYHsVEtST6GbEig29TBQJg4hlJaDiMOVMPUQXAjrMPEUvKn4eTLgunikx5/Qloc26XRdQGhugc+zDu4vUKBXquvVXooCWWxtEeMdnVliBuZd1nyFaaeyNal4QVhuNEok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769107434; c=relaxed/simple;
	bh=WILvUZlOrbkh4EmaMxgl7BBFv1rNw6NxRePSCqxWzBY=;
	h=To:Subject:From:Message-Id:Date; b=KNNxMLsyGQfg6/k0HqJyCrN/SBrp+gySIOkCkerDY0rFmPh4CLHx+RrE6YYsl/6scE7Z79aagl1oYDs/bSItWuMDIhL5fnTN0C2/0haxvSUOsiL70kNvznY+c09BwqHZtRczpfbBYkGwGV7dPnBOlj2L2hGzdJjPC590bDS4u68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ9BIQMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ9BIQMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE19C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769107433;
	bh=WILvUZlOrbkh4EmaMxgl7BBFv1rNw6NxRePSCqxWzBY=;
	h=To:Subject:From:Date:From;
	b=tZ9BIQMoiUyNS381WEaN9L5dEizgzVxDlEU81E3MkJjwl/gdJGIGIRZJcW9yWPDuI
	 B0i/JCjyZEP5XN7erKmsUjMI921InrkYMpHhCuZlxv0QhTs5EswrZvyKrCV3IwVP8J
	 doWjXEb6ovxLhj0BITT++hvsKmZLG8eamHWximpyMfXp9KWrDFYGaslqn2f2aAw5gk
	 1jzmIAIgiL8RfrSyJRpXp6BmfnNKfLDCZzxQ+5KCRoa/ErF1k11M/IifZYSI+Ptwbx
	 /7JT6YE2S5132mY6fgZRfwhH3CkRFDXPQbzXFsp8HrZulPzK7S9PzpxpiZGqwau6aK
	 POtQrQawSF7Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91065D6CFA3
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910743358.2605.13476436000692966437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d8b2efeb1daa25671820acc7a110c0917da86f17b186a1b3a0cd9e053ac064
Date: Thu, 22 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769107433
