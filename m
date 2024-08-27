Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2727A76056
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724794554; cv=none; b=JaxnopPSdG+8yT0jPnzGqmpSeCxxHYRfeDDb18Ay18/0rerScQUM/19beT/ClRMFQAFHJwqEdoCuLw9T/y8nb3hTT3JmLCLIxz1IU6oioPs9As9eVuMmTU50fSVbL7r2PdwHaevCrl3HzJo0At6WfZ66ncxkuMy4OvWenMMnBw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724794554; c=relaxed/simple;
	bh=U4zW5adoBYw2kbu97KXGcMzTaYgMG5a3vltk4aEUerE=;
	h=To:Subject:From:Message-Id:Date; b=n4d4+ZfQjZZGcFXLJHF/ZBBWuliNKuCWVBsGtSwkKsC7SoyjMo3Mcglo83ngWV84vryD9Kuq+58A+I81/A4+O6U978+I+Bs883u5y5Pi9t15H33lnVedGxCf8gytQmhUi0twuLJttqcD6w22cCWd9sYSGq03EPJkc38lr5IRDq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkyzhNQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkyzhNQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08ACC4AF10
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724794553;
	bh=U4zW5adoBYw2kbu97KXGcMzTaYgMG5a3vltk4aEUerE=;
	h=To:Subject:From:Date:From;
	b=LkyzhNQeoX79qC5hkn66sRO/47QNFe2LZZ8tBU+A7Tid8ur4AYlv23R9vljnJYgPP
	 wyWk38xG8NTaemuW5F1VfhKDuiXJ7mO0TN+tdqXzXK7tWYWRbk0yo8JQEf0+n1Gi3a
	 qS8Smf0RR/YZ6NdVv0GWJyVzNMtST32S5S52AS71TRZB3A/vEt+gNNI/NBG7gL8IYL
	 SPtcRWxOxfAew0hrYJyVy+Rf0i6+zJbB2qXret5zbvoATxTXtsqnKVDiHnRhz8U/I4
	 46SWnDr4mzs3uJwOgK8Pq1n0mZlbB3wZVaw/QYkR5AB4oeVQ/LpFVewiXbdfzZo9GQ
	 rNLi8zZopmj8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968C7C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479455358.29149.6305620451016069862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c552971a7e2d1932c37871e58b60c59072a98861d823a1569eaea58ad8dea8
Date: Tue, 27 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724794553
