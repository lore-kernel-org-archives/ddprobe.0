Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ADC1F428C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763698314; cv=none; b=qtF+h64X/PB24hbiS/Yuc+I+w87bEVRcC2T1R10+xiTmpbiqj9p6pM4UVS4DGAfX6f60EO7hndrOeZXFRN1htpXNOXWYhhaxmS8IHUqVWma4f8Q5ucalE44R78uSxBzaA7r+1OCu6vlLrYh13ngkBSVT08MkuNrY6e4nUighpyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763698314; c=relaxed/simple;
	bh=A03hqyN05XVqBrAErcM5qtLeqlZVGzLBoqzd6Epp8dg=;
	h=To:Subject:From:Message-Id:Date; b=VJCCztZChBVgBOsha2+XHLbFOiYoFDnOgGU8PbprCs4+NDrZzZ0jpCao34WivbNmuls3wLx+Lp5JjdkTjGl0s15SXn1e3Zj3Vt39CKBEyVz+gD3Jhsa62N/B2f6LBvZe4kZ1wao8hpWvzJwZSq4m5wQab8cfV+1JsEk8IuX78vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX5fWEoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX5fWEoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1399C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763698313;
	bh=A03hqyN05XVqBrAErcM5qtLeqlZVGzLBoqzd6Epp8dg=;
	h=To:Subject:From:Date:From;
	b=nX5fWEoKIM0aOZ2Ijxw1yDtqcO7fy23iVEGW91acuY1NlmKFCd523smK+moD65sgk
	 rvPSv0lrPyqQxembWt+0GnblZ9FBN+V4bSArn7EXGODG5ufjgD+0bM3Mh3/YHqv4c7
	 OP3iRD9P2icSW4jbeG1O8ibmWrY7HfcgQiCpW17XUU8EjrPwdM7zpnDeMOP3rK240s
	 lTIMD+K4y13QSBynlKHQSKCepWErYcidNH6A5tVYvwYm2uUh+ixOOJk1GOkIPuf9l1
	 MV+6NCuhLqQ4pzLfRRg0v3qdxrYmIImf0eThCWF3gJHb9HIs0APCNBlicX/lKFAfeM
	 jGEvLTJvNKJsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91958CFA46E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369831358.23986.16169962842814085835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a2e93f61d5b77a7b81ae593ce655c7871b5866d34c8ae0257970f3707ce60b
Date: Fri, 21 Nov 2025 04:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763698313
