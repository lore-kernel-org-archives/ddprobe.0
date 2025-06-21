Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD919AD8B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750547394; cv=none; b=uJGhv//WihGLefqfeajsDDzdQGGRBL7X5a+cuPI38NTPhtWp47LHDdJxzDna5H2UE2hLW5FTJj9ftPvpBCEExS/lJO+zZWNTmwHG0aNedU6UvP+JaMAsjpbPNl7ANSEo8Bq972F7PjG+/qk1QtdHCSm/IqkZB4hRIaMyn5kxU/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750547394; c=relaxed/simple;
	bh=I59ExyTgRMZ5AeuANKlBnSthKPDyTTsWZdK/OQcYDy8=;
	h=To:Subject:From:Message-Id:Date; b=SddjgpGx6pE0JqUgjuxCurfWHCJ2AQtdMd/fErPSpWJdSJSagGhh6qQ8zt6pivofdXnhtMVO9SlqwlOuKyQ0dwpLkzpB2fpJkEX36N8PiCpBbrvCuftNpW02zd+rDsacRHVvKEU733R/ecNEeagiKGIDaOuEH4SwiF+4Y2xQ/K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKdfd17d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKdfd17d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5722C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750547393;
	bh=I59ExyTgRMZ5AeuANKlBnSthKPDyTTsWZdK/OQcYDy8=;
	h=To:Subject:From:Date:From;
	b=JKdfd17dAxV56nJfqd8c3fnE/vwI5J9bsLLIHNHchw2ytlg5VjeJdlJzFvr2jM4Dq
	 rX2R9cMtKxHQipJwL5JAW+VjDWfZrFDl8F7IR1ABSXmdIiEnUSqy29Y7Wt0ceNr6dy
	 77qLWAfz6o1mGJsskW46ClqQAP820c3bw0M7YA8dqLkVlynYOGNt8RKrTmblJ138t2
	 yNSC8h7RmgFrihN+qmU6i3WEl/b6N6YLZOtB4zn4no8BWm4pLEAvTvH+PuUAa735Wj
	 4F52nHUkyVxnF8mO9hgx2UwwHrPi2vEC+NOQHuG2Hai//smXE64TXrbhacSpPF8h1/
	 ZGT3ujuITdoyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318BC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054739358.10644.9281757447458030703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831b2646ca8b481d0fdee068251feb834f3f2fdf71ed9fb8afc2836a3a2f7253
Date: Sat, 21 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750547393
