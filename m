Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51135139F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720502783; cv=none; b=jf2N/Q/rVIxT1jD91LOVCjprR1bxu6WZULXfVA9DqlLQ2szN3Z3ki8qqJiW5AFhOwAfwzg025dhHuJVut8wQctpBpnOz9btD3ZShtXMXtT4467E5jlnHeGSRbz0dmZeGUKZ4ccMjx+/iJwJdgm/U2NnrXepDZtYpqFmFYojhdBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720502783; c=relaxed/simple;
	bh=+iYk62VwP1hwGXJxSGIVGMOnaV3LuG4ILmHnxI3OGS4=;
	h=To:Subject:From:Message-Id:Date; b=H4H9ZlnMqW892kHTtAB17iHYAdnAp7jw/Rs8ExTJelzk7z/Exelx7kSTAlIVttRcGArnR5ghi5QxyJzOvinq9bnRGANRu5ucM6z1IpNa+qKoOhnAYFEWNntekrqHxpTy57JK+P86Egl+thkY7LmAS/51gODFHIb0g3hY3cNU2+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOyMhJwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOyMhJwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FD7C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720502782;
	bh=+iYk62VwP1hwGXJxSGIVGMOnaV3LuG4ILmHnxI3OGS4=;
	h=To:Subject:From:Date:From;
	b=aOyMhJwJgYSu4XhCJtDpSI98L6J0GSJPEiZk184CSHzegwwP704lmdFTwb0HVZAaR
	 PGVDZN16O/ev4hPbDo5U3HJXpo4PBJBNLTEBVhQEz8UT4AoI+Q2SK6fST6iX+5TDw6
	 JoM2BmsVhyP9JiYrNmI46XcvicG9FiXinqZdb3z9ecF7kKIRft7da6Sm45Y0A9TPvQ
	 cMP3WBqEmUCG2ePy5VmyRF3YeyN9V7xDq3cv0hZ9Rx6wBvi5VETGbheinpq5Wsvqck
	 XZQxinbf+o6U1IcLdb2YqvytZx9jY9ZKfU5/R5YOfGfTp26WCTrgOMW2++aUnY9ofy
	 yer0jqcDalrnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDF4C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050278276.21137.4422838515590938860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa2ab14956a0e20b2158dd2e2086e23d67da40539e54a65e4931327cfbc3df6
Date: Tue, 09 Jul 2024 05:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720502782
