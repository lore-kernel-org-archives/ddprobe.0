Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464BC3C9886
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787684434; cv=none; b=NLfBm6tORYPGd+UMXaR+JalJPbcrVnEF9hfjqIiK6+k/BVGTh2zgp0Ybop/q8v/K7Km69Tl19zgmkghK4hBm5RDtP3ReNAuTy3bUnw7srmm08W6HCptWShNacnAFuhl/zLG0MlAm32aPahsfAs+g6/LQl5OqlFxZUtQ10zwz0gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787684434; c=relaxed/simple;
	bh=y92vBmuqh0M7cJiyevbszPbVgOCwVUuwgyi+ON2bIB8=;
	h=To:Subject:From:Message-Id:Date; b=hAI6CiT0e7TQ6wIdjfd3XMAJeolnsQn3CdmjmIBzhnlt3njirtfMTR27ULLsztDFobZ+GuS/ntGX22mQ/SSbO7SMMDMqhkZv66C0lPpYr8Lf8sLwV5YhCOlEVUJVXsNZSObjmPv4qMQOhW7b0Pa+jiPSFImsMb+f0QfXW53X01Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZonU+hxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZonU+hxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F6BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787684433;
	bh=y92vBmuqh0M7cJiyevbszPbVgOCwVUuwgyi+ON2bIB8=;
	h=To:Subject:From:Date:From;
	b=ZonU+hxB65Wr0WBCgLzO3V7w7wqL9Giz9DL2pW6zqgNChodmyhgTfE73oiv7zTURl
	 f3iBKkXWFviXJwjH+5Ehmy/WPdkY15dg4DjImg+R5s/WQlKv7rMi3fIuiE7Fn+uzeG
	 nGFKCnSeO9Z1YBvccaIA2aR/CG5/2PnzmiMLCyWT+xOk5dl2UXsyMO+M/2KxFubtWy
	 1pq1bC5b1vkHtZAiggn6jReXSIb4eFf5evRyzHTpCOCreojuQYFOqBexGVqXrnJ8RV
	 WeEkt9k6jGAgNnl6kDcJz9OrUEGk+XR0wXD45UoEYAxEnf5yeWPvbeM5Syq4tSFdgt
	 SDLIGLJr+Fhfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1C0C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768443369.8638.4861353322309686818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09a5161f547ff66e7971f24d080132e6ec62b55825cb3766c3dd5a5e7402cf5
Date: Tue, 25 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787684433
