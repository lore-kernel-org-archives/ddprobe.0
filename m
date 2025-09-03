Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586722FCBE5
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900795; cv=none; b=glpIcm/2+yW/e2BhWIIbZ8VMkoHXk6eRlNLebkmeABITQ16jCWHSpatemAjjYLi4ENUZmw8TUGvdYZIhKBZXLoPqaEyDZ6Zc4ch+EbqjLvy999LUIZ0Jq6dtHc8VuGOEp7HZuZUbtdIxQIVdK+047qPVqH1iYW7/RM+Bw7wGSTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900795; c=relaxed/simple;
	bh=PGHbZWyusrDruIEr+ZiXmEuJkthPKZj/vqY8YS7RBwk=;
	h=To:Subject:From:Message-Id:Date; b=kNDVCnAkA5rwkU14utlc805APVd9+4Zan7P4bTngjQ6nZsry8aF6Yst7hO8rb70uxL7PfNhoSpRbpvE4Ua7eqfI20C22Fey0fffMIX9SpVnisRGybAd/UWup/fmo7JFkHm9klLx3krBn2vzU3nSSKbePRZwXwJhRM1XUGi6QGvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWTlCrwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWTlCrwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5786C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756900793;
	bh=PGHbZWyusrDruIEr+ZiXmEuJkthPKZj/vqY8YS7RBwk=;
	h=To:Subject:From:Date:From;
	b=fWTlCrwueHfOyTkSna6kMKdTeu9obo3QUKh+GyhqCmUk1sUKlgWyh0QAhOSIPPqPZ
	 civ7lfSjL0VgiBQcv8+DTFP5NcBJWcxxi1ypsZzy8cPCZaT+x/RrAUPQagp0miiU2X
	 P3MmM/Q7sO/k6o5GS7BfKk2ryXvrcX4pZALIUmcEjnMGRb/mn0u6m2RRrL8Kjt58GN
	 oL7YdVnA/dicCawt1KGQHA/joh2M9IdypdGoDqlWf203oob6/BD1acpX/iVF3q9BRr
	 0pRLK4e5IxS710g5XKp2v7u7wkssKpRaL1sKry+mvpkKeLBrOanQNh2Z5D1mlZyCZE
	 0Gn+Z4f2T0b9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA3CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690079358.8240.16524866456633107277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e46373ec0eec99dceb22e8ff768d306e2e28e913a3fbc19ae65eb3f86987968
Date: Wed, 03 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756900793
