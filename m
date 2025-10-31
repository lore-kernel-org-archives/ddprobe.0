Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E8F183088
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761943794; cv=none; b=lojhXKha4hNv06U8BForWO5Ay5rSj7zqY80MsbKMvDgiIceo+3dkpPJWYA8RqHj6tc/rIWZRxZK0GFZdGvQzwFbKeKEnWAfbTGsFDBFDLKDxF+M/xn7HwoMtCuf3Fm7FcVVbKeDOMFDf8sfqHSgOLDZhoSEP7fz9bzVJO/jY4Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761943794; c=relaxed/simple;
	bh=PT1qbppBlTI9NWL/4r7rUAZ5Smi6IeK5MUZQwyUHXr4=;
	h=To:Subject:From:Message-Id:Date; b=Of9RMb1MEMEEy/+Tqi+ubV692/Xys1ymbCSs55ZEG1CNgTm8gF9Cmpj3A1tY4rbezqjRvy012RGab1rVN0cg2oYfel+aBalJQl2JsqiTfJBwZO9qCtAUyFNoW2qYXwja5RiPDZjHI8MPK4//Ecdw36ePDO2vzlQta/nGheaOhKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1j11jxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1j11jxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F0BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761943793;
	bh=PT1qbppBlTI9NWL/4r7rUAZ5Smi6IeK5MUZQwyUHXr4=;
	h=To:Subject:From:Date:From;
	b=f1j11jxcek++2QL1T1edExBSujKZw3beDpL0raEsPfn6YHRI5fWcxBxEjsZ5s19+y
	 uMs3qAi/EQpSbeffMobYAIYlwQQd/BOPIh5kpv3rV/wA9ywqyQoJEIiJHlDnJhhuzO
	 krCq524ZKbUdaRZeUSofAlggwp11vyyyArpT+wr+ZQrIKE6lRLm9GJxBEf83rMQWx7
	 HCRI86NuvtNY/LVrsAW4gr6TPIlTKANiKt+HdiqBDEZwlD8RbzQWWfKWT9VhV/k9JN
	 yJ982Vu8CkMu41ewBy6Si8Fq5FuzRESuTfeLvX8b9j4AVxNGWPSYnJkwsn8E3bHok0
	 auqQve5jTnubw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96882CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194379360.7046.12818549427427250173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7639de0ae04cbd7105fbce3839ad6292a4f13e3ac524d814f4013e62e1e19293
Date: Fri, 31 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761943793
