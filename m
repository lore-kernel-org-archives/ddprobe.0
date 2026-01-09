Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088041CD2C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767929634; cv=none; b=T2bCXB4GwMmg23zCRk4+JnOYR3h5nAdAOTI6KywJ3lRa0rv7Kx2gYGOqn9dggFPQZdIYDONgHbTrCapcV8VtPaGqFZXp3EZuEcSSVqsycXcrQ/SvJdfHMbhtW8y8LrtT6WoXq2dWI1kl9Kx14v2g2Ka102LayvJC5sFu1GRZrQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767929634; c=relaxed/simple;
	bh=YVcKJ17OenrKBdhTNk2zuLMkf9RRVH7X/oJJO5nKkqM=;
	h=To:Subject:From:Message-Id:Date; b=cohMy1JSzP5Anc36Xd44O2j7Zz9aSbf61OlY1/WeiQTs2mF5j0XCC0t+/q17Do/qIwbb+h/1kXYFrNkpgYHJDPIemOLCM7KHJatZIkVN8yI0Uu6sF4lcvf7pgReAOnBzmMcbYexTJGBD9FuuYvUOFfIyqtzBEx9d5M+vSqOonkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlqvSd/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlqvSd/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767929633;
	bh=YVcKJ17OenrKBdhTNk2zuLMkf9RRVH7X/oJJO5nKkqM=;
	h=To:Subject:From:Date:From;
	b=WlqvSd/KRMkrIZ76PFBqVeqKqe885IrD9UaEVuaonGrraJdh707Aw5MDMbLNq6P88
	 g/HCux9XC2JzwuWGXGgP3CrJ01l7AgEvKudCJNBsvkSzINoUPEsuxP+TMbLCXJDaHR
	 O3x7BKir9ODEtBr7zFBo3pCIIE1dTIqcztc17sWvjuwuTcm+x2Wf53AmCc5RwYCjut
	 8TBPZid7faHBEnQekaKLucOywhM6QtmfMOdBzuI3XC7h7KYaI+DEOJFew+r9QX+7Zx
	 PY4+p5YZEWa1zvO7N/Hgxw0ZJ9BjIsu4OqLk3MiOOUoeT/cX3M6ZmcyDo3b/lD2OfU
	 P2/kI0/vhPKXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB5D232C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792963357.23059.17655018683280723458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f28e87b6d807b35a69b2e8583e0a494f231d2780d03d856750c236771a28031
Date: Fri, 09 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767929633
