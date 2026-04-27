Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2A23659F7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777315054; cv=none; b=HsI0hbaObQH9xwU3lwApKoz4uhe+zqi/mhS/57nNi6GTSkDFgY618Js+BWf5jdZLKS8W+p4+xD72RM4CgsqUm/s8QFP3qtoPHbxzDh72tTYyBDiGGSi0i1Z9X8XQaLFg70+CE3BAq9Jy6YKzqk3VgbjX0BBF6bzazYt30STmSuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777315054; c=relaxed/simple;
	bh=PPKn2BiT/7O8mX4O3HDVqamE15VcdLyn/p+tALQzRdM=;
	h=To:Subject:From:Message-Id:Date; b=TQB24LaBushhQsRnl781l9wq013RR1Da01kIEkhRymO/OqCS1qtzhSqASaWodwJ9UeMchT/4Oi23qTXfdUJz3xbP0ApYe6p7oL4xSEPFSIPXZJqHHiqpyqcjarsUJgZ+M8dIUNOj47xSUk8nLTSOmJ5aBbcXXCV+o02+4AqRPVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hwj4nvT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hwj4nvT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16EAC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777315053;
	bh=PPKn2BiT/7O8mX4O3HDVqamE15VcdLyn/p+tALQzRdM=;
	h=To:Subject:From:Date:From;
	b=Hwj4nvT0/Zy6amDh8Ct4KysRs14GmORR6npdkkPHaXAzEFOLdUKKgHW8x2kF2NDPF
	 dOXFAM0aLFb1UQFVy7miIrhW2KECqn1Uc6oLOkquYItB6IH7xC0oa6l7juLV+cLsnT
	 8Fet4IZcXouwAMz1+WzKitQrISk8cPQHF/RavnJXI2zaCKHLVwnWLHAmnxNNXqHjJH
	 98qFPEkBMMUtGRtS1lugVCMqnyOw9syed5o+AodZc8PWV1E40INysNNVgg9OmBv14p
	 7UNuysmPrhztY8a2qXnvRBi6Svuwz9h0yZgUrb99o28k0oAeufZg3GmImNhEAHzeBR
	 n6QOao/XqYK3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFCBFF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731505368.11094.1686045683571745208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df262967c868c284ba84c9f0bf1e695cfafcf15436ca84df71be3f08129fb14d
Date: Mon, 27 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777315053
