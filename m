Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289D32E36E0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754615394; cv=none; b=P3n06dWSc/F1Pd34Y93QsBn9wCN91JSsUnX34o3J+7U8nA8WSmb434+rDf6thDzXvPiq+BSrTG8TQ4prsw2v/3NvcXDskqQErbvR/qByGr0GT6nxk7OTWI0qujlZijhF8E1BV/aY727NJCbbb2tsNLnFY5fEmIHC0ALbtjq3Ti4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754615394; c=relaxed/simple;
	bh=lCiBnQ5QyWSAdq/mV5vTE1YV7kAXTwnzEjPmBprhffA=;
	h=To:Subject:From:Message-Id:Date; b=eR2fNkZjSa6BkRuN7u2aiybkzerRY1pRkEcJ5I8TjxHmRtzciM9nqjO0Ulssv2qhzzlE7wO5PbDXT9NiManO3UqYbAAJrubSwaOjXcaJXZNQj6TYxtbPD8AOtTcYSEw1mcV2/qe6R5wiO52Y2cczvQMczfvEBnbBr5kLO+MyMho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bywPhd+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bywPhd+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A0CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754615393;
	bh=lCiBnQ5QyWSAdq/mV5vTE1YV7kAXTwnzEjPmBprhffA=;
	h=To:Subject:From:Date:From;
	b=bywPhd+quLbMpJwkRh76oAew3YNHDWqRHW9xxvixuWOq+ANYpe7ZYexJOUbA+xKiX
	 hdhoipZQ3HUKhblA/rODr4W8Pfy/3W15Jyl7a0m6xWjW8sKJ80LGSF9s6IwgR4ZrpP
	 ePo2pDEBVx5UfUswR/WcmMhajGd1ESm1IzRp6eRrzQYU2XDyluLafOjYDjmVAi+YC9
	 zQnj2YMoIB2VB1mhc90ugz4rvzWYi/iwccQCziAYOjv1fVBG+hluBic6BtP9XofKVA
	 Wyyx7eIrNsiITOAFjiVhr2YXRDLvwoHagM2Mn1Brsqc6o2PCvAPnfkoRT7exoIcs57
	 kj4fIEo1TxpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90385C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461539358.17082.5751665530380859599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33e55655eeb27466fb1b34856717cb101f88d8ad7e3bb0f825e1b5fbc2ee879
Date: Fri, 08 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754615393
