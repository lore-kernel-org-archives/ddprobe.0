Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8566E377AA1
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786500634; cv=none; b=me1LS5V/lT/IJRfrx7Z/3Hc/+TezW1CWC2e78lVx7BQiRQzxsqAyOP+azQ9Fi+oP+gD40E/OAWFMt6Xj7kxHUYnRoKLzi74VoBoLiCapQnM/UTe32EtCyXNIvVrEJK/abF+mKxHXb/y0RMv829IKQFS6Y+S7YwP/yjfNPmDTSus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786500634; c=relaxed/simple;
	bh=m8rO59QGuyQbZivoxU3X44B9L4CwfzNqWoVJDER43/A=;
	h=To:Subject:From:Message-Id:Date; b=H8zP51V7mSuSEancNMDcxeZhNDBjph1xFFNx19Rye3VvZ2mr77t8OBjo0vrCfXSSE76dCGlxQfMQMtNSSK7sSAMHv8dIYdaBNfEk9aMS7BJKefsm4dbmxC54q7qWETIYnMwDaefBj8qyFv98QOquPIrzml3LUKvkzXJBtt4eTlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtGbYEMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtGbYEMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAECC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786500633;
	bh=m8rO59QGuyQbZivoxU3X44B9L4CwfzNqWoVJDER43/A=;
	h=To:Subject:From:Date:From;
	b=jtGbYEMXmA4rAhvlQ+E+eqrsa67ZePyCp8B2Cy0KAF86sAWKvfRoG1vNqOWRCfKYF
	 pJJJAF2gpG52+XPUMvKxle5kZxpmvMNwCF+4wKs2hMDVq/On/DMDrLCxfFRzNiYf0v
	 kSi/kds6Ciq44nuJOJZAIlZyJJRuWAERxvxHCUzdWeoPQa+SVBl7EmLWwwz95Cik5O
	 OY6lS+JlNgiG1JUU6JFtycUg3LuqnzoPCrkl02NpzXpEqJRyDLCwNCF2Z4C6kR12M5
	 iwKTemjjnzaoP33Xk4JQwMnYl5v4DjNf7q6HIvTq2SWp9l7GV5aIRu1ucWGaCeU2io
	 hCscW0tiJsW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A827CC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650063368.2357.4690279066958401262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f97d7b7017dbbdbc0f0c6de24f8ee5f160cdfe74f3bbddea61e2ade936c026c
Date: Wed, 12 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786500633
