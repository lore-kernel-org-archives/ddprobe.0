Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37467192D83
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749058194; cv=none; b=pRi4FBYNF2axgxg8ARq0thu4s4u1zGwbBsW6V7nLtP0v0K5Bpp/G0o5ZN69AUEuPLwvDIRwzggkOidt8/pUk1J6NAnbhRMs2GQWJWlgxdNs+grqPz08dvcRVmbGklr98DbstQLs5q/g1Fpp/MJ6EnmvVWjRafZ0gnILTQfXDRB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749058194; c=relaxed/simple;
	bh=BNuiO8flm6L//xYEYtS4OTaNXXnwKf2zXAi4UuZORgE=;
	h=To:Subject:From:Message-Id:Date; b=SY7UjagKLH7j8q1jQp4+bssDmaqBXtEJQ6Xt2THWQdhe3ajWLsG7DaqdqekxpKFf3IgseudmD8Oo4tZzieG/HjmXThxwhjo1YoVZ/zzhl9lrwMrTa0gSY99n41i6BZq98DkTYy+LKOaxJW2ibLTSYZ2AgNQgGPxAFsQ9qGdykmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAc85nlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAc85nlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A3C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749058193;
	bh=BNuiO8flm6L//xYEYtS4OTaNXXnwKf2zXAi4UuZORgE=;
	h=To:Subject:From:Date:From;
	b=LAc85nlTBf4a665JuIwv+WIB3bv/dYyJcnA+gw6zonetpfUZupQRfibseMdQ9xDhV
	 zNyrv1wm+8ScXrmJywnOEpWjrN6xPQYkxYx4Y3nY0gQkVPqg9v8wJzem5V/VArRrBO
	 O/EycTHrKaLNGmHI7oo4LH79o1Wi/9cuiDKSTaZihg63avjs50KGuFYvRioxSJNO4w
	 qNAbN61px1LyLWAvZvhlCBZBgjT52P1Fz0jgPlarfbVQaiebJz/2wv4IwFOHkPDfZI
	 JdCrcPfYULcf9e5pE/gESNmiOnyJzGL3ELA4ok96T0Nb1QHg+1eFUc7nJdXtDR7giP
	 c2IkmBJMHGVCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BEC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905819358.24872.14098687151621358749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75c165dc1d689cd314a353977b574144f0007c0805ca6056ede0e8d7da4e88c
Date: Wed, 04 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749058193
