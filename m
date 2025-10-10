Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC1726560B
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760132994; cv=none; b=Ls4jDFLlxt0eT5SqDGTZP96UT7NEhE/8WZTCHPe1ODxkVRrEe3zQ7KSK6HeZ0/xFY5mnwvzEiBEWQF0R4v7yrRuEeTp1d/rFwvI4GizN0wrnxNl72bN1LinNtfJyJY90b8UwyVQK7keKw8Ey1O5C2wrv+e6JiUZBSk+H1NB6Cxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760132994; c=relaxed/simple;
	bh=Qe7/2oQtXd+kTG0O94n7QODnUq4K1B/RuIRKocWKf0k=;
	h=To:Subject:From:Message-Id:Date; b=IwKa6FI1lPg4IU2LBfSw1sZMU6Rv9IdVfkBNWb4hrDDpNuwI6Ws8GRxHGm5qGYn+76TBYRSFe5s3qqHQcEMF+QKNVkeb0zCeisoH5EO0Pvi30TZlp6+ymXthlpyG2hunjPaSqzq2twJGB6IA8gV6+0Pz1FpPiTRPpGp4e/ZFyp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/bVwrkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/bVwrkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A776DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760132993;
	bh=Qe7/2oQtXd+kTG0O94n7QODnUq4K1B/RuIRKocWKf0k=;
	h=To:Subject:From:Date:From;
	b=Q/bVwrkrIBadQIiGIXeQAmCKqj86FP+56vcGGJoupGXVpxBF4+36tBoXaYYyC7k5Z
	 CBh1wLAmv2oQhzVRd8XEPfEJ46DAi5GWvUHq7xV72lxOM4hfuvNfO6L9R13Dlvh534
	 +x10dmI3Lkdi9AToJSq09p99mp/GYPtNG+uwXrSZUmpI1kopk3+xCoS2XeCXGlbeTK
	 kkmuBZZLE4D0JUHZp9/notXz+umAR+s6GOwcNr9lC2Q69kR8QZIx75xRuskMhn+GPh
	 FcfUMTyT/wk+Iu0iGga2XcuXHrornjbvzYxaZvkmxYJduUmtgoGaNj3upzsgP2WH0I
	 s9zjg1G7UpRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978CCCCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013299358.1224.17526527626981921320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3329dcb9ef026b2dbb45c543aebee8f5e800c2a143d61dd574ea85db521ec69a
Date: Fri, 10 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760132993
