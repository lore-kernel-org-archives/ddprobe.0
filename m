Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1022226B75F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750865996; cv=none; b=sIvAWfQdb2q53Bth7N8L1Iqc5Z8Je5mstB3chw/aNYv7zS1vT5d+N2xzb4/+l/uawIIBdio0K/pXc//pxVxmk/d/nZz2X9D4OJhvGH60fjirdDM0FWjtW1fe8H8wFj2SQCCK5bB2cRseRdQGqylPQmnl0MEjXGjgkok+I86G6NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750865996; c=relaxed/simple;
	bh=EqB1VAP51RLlTgYoilSGFJG7sTZpd49ipuaSIR7viS0=;
	h=To:Subject:From:Message-Id:Date; b=GU+Z0eNVefffw9Z1DrcTeGEpRruL4q7VvZONJlNJMRDjVJwRnSnMkJkRxax1RFVtHzLiNRIPTtVFQEbVePJBa1o6gIHm/bTgxyfhgqYtEg3kS2b9dq6mfn4qm58E01zvF66vhLqmYWofQ/9CUQu4kWlO2g3prIXOE7gSp0c5ZyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp5Qshjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp5Qshjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D69C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750865993;
	bh=EqB1VAP51RLlTgYoilSGFJG7sTZpd49ipuaSIR7viS0=;
	h=To:Subject:From:Date:From;
	b=Cp5QshjnMr2vzpPTbBtF8ed8DO4Ejl4/COirwEkLQcLCV+UNQXjs8Ozd/pX3TZEq2
	 lS9z3Qh42Dy+l1hds54Skv0zfcvLifcoG4a3zJi2VD+JVnwKQbUNlpzmEXdlH4JNjL
	 7vWxFgUk6RSDV3RrlPZzkjdo5OV7cipkd7r1KCZGCguJbd/CWQd2OGeFENYHTs97pk
	 GSlKK8zZA9yFtZTVKVn1iCnKHz8gW2hW+rHKKNgt0Svy9V4oNeLh36hvAt3ZJs6cvS
	 5K/7IRN7lAATqLNSvABjm5E3PKMWoWYWm3sTUvFBAJS0GDOWLFoQobvPCw7p6/FPk3
	 hD4yisozfBv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9460CC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086599359.32171.14138780839635349078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0df7690bc3da2e811a5c166884d954d0436c38023b215eb438f29f6100d095
Date: Wed, 25 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750865993
