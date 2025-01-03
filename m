Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211321D554
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735923954; cv=none; b=m9w0OJss5pQ9x2wAiXUplxYbzGvaJfazzWOEAXwuqd+jlBVejmjPg3EQHw/Ydn6zFIQ68iqZHoPbpRntqg9aKcAte2jQyrzQ6z00jKCW3n8WYMfe8WsPL+JtC4RuvwoUyDue7OxYnv6Vf7ZjBlH4LwJhdS4iMlFubtK0l7o+TIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735923954; c=relaxed/simple;
	bh=rEJuCMrVmkVnsTN2OJq7QvDtS65WAsI3Ab9HY2jpq9c=;
	h=To:Subject:From:Message-Id:Date; b=NhsF5iDAd6EyUut/NPQxbEWXPEnJoQB880idf57wHAqqwnRLuqZui9K5rL3GhYN5VST+tK8KO/w0IOtMccPuFC3044elK3cBq8p70KBlo2Orb7R2lEZDz4SkczlMUyk8aqgP7/jkC9Tebl0Ez5rifBwlqrA51bUAEP4X6oHTGOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFlq2fFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFlq2fFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A906CC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735923953;
	bh=rEJuCMrVmkVnsTN2OJq7QvDtS65WAsI3Ab9HY2jpq9c=;
	h=To:Subject:From:Date:From;
	b=YFlq2fFMLtv0OxZ/USdlGQsXbb9r9QCJrkeY58IyP8pYXRVNi0sufsTQ/MU3fBX69
	 e8YD3Yuv56SS/Ddjg8KGlqPKfkQSmCtmu2CHYClE6Tp9zn1FoySdn+aiAyWj5CyFb+
	 Eo/XRIN3VwtotyYKx0/W0icuLKuDxmfXlV2R0sj/qzznyC7BWwxWQ83v0raE1OCdB8
	 RXxqhE5BR3P1p9lwYQfsNp4sGRsIqZSDistql18pAddpy8XnVZ3wT2uJTAXuHYnsqa
	 BpyXXv07+1UuBUtNX3SUITdZovTNCLP/wVJL3ILISQhf12NOdab8RlYxS4dcFv0cOE
	 z7E9oLuayf50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952DEE7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592395360.13070.3025031775474644291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682bf5c14541f30b5a577a141f8b2b0fb90853b907f2f3cd41986c4b1f3ca0d8
Date: Fri, 03 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735923953
