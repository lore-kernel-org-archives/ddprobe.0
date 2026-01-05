Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D48920E31C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767639834; cv=none; b=OX9t6arZHGpGa65bWQ5l9U4rL5/oczKnmLp6LlpmaRMPW8sFo8ExRyQAXWpwG3jNSTBuHSaNCtosP0WpoSBHS3abz9jwnBkXNF7Konhz975fim7nu6NyOHgAg4KAlTMQLc8xsAqSfJy40mXP3/UaUh0pap6dS3LHVw+dRxVCo88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767639834; c=relaxed/simple;
	bh=b7NMXs1SlzNs+Bb4fMwmkkKrIGCrBX/Q6fcBd+/NWR0=;
	h=To:Subject:From:Message-Id:Date; b=C8YawYwMZdeZiGpYhjxiA0PSLcWS4XJDC2rMpy4thyBHJBCcClGtGFg5+mHE1L6WjYlU+fiaot3Z3BEHKIL7wLqOqB//OuCqeIDkh8uA/E9D3DVM8UZF6PNxPKK7WFIB2P8G1PDSHgm3iuY+LsKwpNNtaHsZqYeaiPjFaZ1m7EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPCYWePT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPCYWePT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A207BC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767639833;
	bh=b7NMXs1SlzNs+Bb4fMwmkkKrIGCrBX/Q6fcBd+/NWR0=;
	h=To:Subject:From:Date:From;
	b=uPCYWePTVu8Hr5EpUaZgyE8MWOpqisYAph4mmbcUErk2eu0ClP7Wg7tl+hK8BLTE5
	 25OkEvLX1pizNZMD0j8aybpmIaOO3/f40d6h6aZeqZH9hmUl2rH+haV9PBo6REWarQ
	 l7IK50aW6tZAHuuj1+sI1I3RkYZ4wadkYYSmOm1eLeFqcQAYlolfNInoBlqSDUWXLg
	 X/WjPDi58qWED6+4Uhwpg7FhO6t8OsCsv+nX0sMfXN2oez4ZnwMoCeg6eQEL+Jrop1
	 Fud7ljth0a6jk3mmGRS9A7pcbfLeP2XUaCJwdJiiFdtmMcshPEognqP3O+MnaA2Sse
	 hXU/GOYxaEHvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94577C79FB7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763983357.28934.15523904233200849928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cc2f8be609211d1ce33f048dc4acc14065c9eb7a3399a63b007b0205ae81b5
Date: Mon, 05 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767639833
