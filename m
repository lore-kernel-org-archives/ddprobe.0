Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3829F33987
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736496354; cv=none; b=q9bKGtzMKMoGF4qRcgSpDJuhW5FVzJedlE4/uXTRwqSfj2nJ1GAXGg8M7iOd46rPURMfI13l4sO+3sZd+2BK/ll+HNbIaEyl6WS8sqVShE4xs/+gmE9hu7hOGm3zCuE/xaTYAFxpdgK4ff23fFs42K9gs9cI5+oVZVvpv6bMfW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736496354; c=relaxed/simple;
	bh=2yCNDSU+E0Nehr4CMYbT825nc54tDRaVcOTxqUPztQw=;
	h=To:Subject:From:Message-Id:Date; b=Mf8abajgkIV1LlhDKaaANr9O0g3l0+sRmKZLPN8Jt/3zdxhji8CU0W04QfcrofEqODduxT1oBNokfG8qJzo39oj1RKTdbEcMXnEa7TvEXa2jcefGtNRZn6w20uGsFSI+f2K+uaTy/GSws8LMjMEAaC8kM81r4QDDfPOA8LlL7l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR3GjK7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR3GjK7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25CAC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736496353;
	bh=2yCNDSU+E0Nehr4CMYbT825nc54tDRaVcOTxqUPztQw=;
	h=To:Subject:From:Date:From;
	b=QR3GjK7dwYe5oY0m6HNEgpy6udwUOferbQjB56gJDdNpm3WdKYsGXJs9ViL+tfsAk
	 mK1UcgoXofZvmd184ujnmoIYv1U/gHEAB5yOXWvUXERAXR/C5OF0WenLE3CjppVqqR
	 TMeurDWekynSBtvq6leru2qwgSxbDgwhXNNbrJAhjP+cpNzdrcZTmSO99TnW2br59l
	 rRQXbah1pLgn0txbkLhn7ddwbyn1LMO6deRwvIe9V6Fo2YHEh0czUFGpUMnuJLDWFv
	 jglMgrezuP/ekm0jvwYSBGYVa68inRZnFN1hqlQsEKs5klpTfMjiQS85pasJTsLoOi
	 WcGtnI6LN/mrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4B9E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649635361.20748.17457673209615761536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12bfda9b0f2cb666d862beaf0fc7e90db12c88bdded884f5d8c3ccd7f89c568
Date: Fri, 10 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736496353
