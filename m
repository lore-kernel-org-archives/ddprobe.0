Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356E4217F22
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729936554; cv=none; b=aFkbaSKhfV79IHnwygb8GW6PBlbcOViOfctT29fbS3uzDpMkD6iz8FfrGg5epto/QCYb90dY/SGh2PmcdRUPgyeTwFMllOuQu3gA53DhLQQEfAQGsIUmIUXZRnG9TwHtzsjUClAhXlUyTuXahlXWLDKk4KL/wdj12k081B+8Rjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729936554; c=relaxed/simple;
	bh=EQwp4HeaE7ESIfD77DLjrU9lLgTAx5Cq0iK+usXYF7U=;
	h=To:Subject:From:Message-Id:Date; b=hmJgP+043LNI4/lAop7K//HMpoXfREamHmiqI56nCed5TbKa4BsYtvXKb7EvtL3+vrSgFOFeX3mNIc4ukygUZHJSnuf1s27F4TgSjLr/+sSEIPAQUy+/Sz80efwZoDrsdaABgY5syjvVyQbCBpnafCPkMoCBd6gmIgB/8cTdxXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVFO3irv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVFO3irv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3223C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729936553;
	bh=EQwp4HeaE7ESIfD77DLjrU9lLgTAx5Cq0iK+usXYF7U=;
	h=To:Subject:From:Date:From;
	b=GVFO3irvyFdDy3GP0SG5FgA3lYyq+al9oXB3FNJteoQHCehMVNed4dxQzLK4aBjF+
	 98Kp9AQQxdJULqxCcaNRub89QLNUw7oSBSNcyStlYo4262nEVvqcUAs/Uee0oDC5gc
	 4PoEAF1sAnOlyfsyzwSAbciO7kxqccrn7IDO2AdBoF2+xOnNHOzSkthk9YLZYJEm4y
	 tQOOOycCCNETbdlpBzDRqZouTwR41+Z6b6Fnxf4HFS+4T/ISeAaIiGTQNnB1V/Mi0i
	 6S2eluPmqr8H5F8KLLxW/u3sal0KRsf2eqATnlSuT1BzkRzQsEcJOFJiMg79UBVPtS
	 4o7I65Ky+Qv4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0D9D10BF0
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172993655359.402.18272846832806226769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b89ccefe33bd16ef3646dda20d79a2a512fff0e2519a316d45b7717e6fd2902
Date: Sat, 26 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729936553
