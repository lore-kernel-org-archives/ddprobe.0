Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2676910785
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785629434; cv=none; b=QQrlm3X/Ladnadf1crNDPLMSpX/w+Qv7JfFdG9rrAx9CgrNXzqk+wMUgSummfm7xLPj83Hi1odcR5FmlvgKOveTxYTQ37X5T1X7keRcyyYQGXflCezYQ1CqAEUwjcSdfTkJmtaNF3bbQWjMTQlRZmg4JHOQt+e9JXL46KuUNtl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785629434; c=relaxed/simple;
	bh=2VPUBMYrJTGhqEYr/AbOA+ruNZ3zl9jo9PKVtPXmkiA=;
	h=To:Subject:From:Message-Id:Date; b=RwrJ9o62DuFdEIjuUP3q4n53CATr1EK6wvo0TZDHIp4/6AfwJXSrJNyVFC50GDsAT/wp6ldCIPu/U+BbO/bW7vkD8vN5SV5LNMRSXbtxknFcUloiYBvZm0oNF3qv9PielBlRIFptq2RJWyHTF8Aipixr8QJpJwNdstqefZFmmg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBQTHEPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBQTHEPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13B2C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785629433;
	bh=2VPUBMYrJTGhqEYr/AbOA+ruNZ3zl9jo9PKVtPXmkiA=;
	h=To:Subject:From:Date:From;
	b=sBQTHEPfmdwQHNCAflhEZtfb6RRNE7bQJxVgoB6xJYI+u0MpJJv3l3wCWpwDCTOWA
	 ZbWCEl9ZYSOMhdBWzwpF4ZGDBRfkjw70kt2rb0MywrbPF1zg0IwKs2o4xPQP4vZQst
	 yXOcRtHhRie+1kL6POb9IDyb5uB6Q6qPe/BoSw7HzpdL4nrROYhafzsBccySVyPVHe
	 8VrTV3vwxPcEL/kXhRN0IMhVBJgdzMYI1t+A5K/GHOlAVhSIuZT3Jp7IjfWKT0dFr2
	 b3b1b+7nA7WbQn1076+tNIC5W/to++RzvNpoP7NhlyXt2rgndFhpiVSZBWk4vigG+P
	 vA7iDtTpP06Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECF6C55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562943368.14604.5453204441519927853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f880821c2166f419f654ac5c9b7bd63c77810c5b7aacc23ff2bfdd801c333e97
Date: Sun, 02 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785629433
