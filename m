Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334015228
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742866194; cv=none; b=Af27hkUhnmwnhwoGcZU+wsAoveWQ0hWCauaV1W7FLwRN3U9MMxFAjnzUtaxfTwCQe+JTMys8YEE8Ocjz135hur1PtDvPiXsLRjSr7clDCdGYPN3xJf0DyYkNiqo0jkbo4WWtrt6PHbPYbiu7DbODyApKY8dCoS1DZ5Avfydim6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742866194; c=relaxed/simple;
	bh=k3Bgyqozt5bBhmyGwG3qZJqf27mxY9xiaDzwlUutimc=;
	h=To:Subject:From:Message-Id:Date; b=oq707RF82ydOsWTEI3YpPW6HvlXbpahZ75LLTJVYE4soGyHVyY4dFJPLea4bf/sN5Nw9wHGUjsNSzVMWkQYFbj/h1lorj0t/IIhznaTXyQ0ZM8jLr3EANQ26yu2ouLhgIIi8AczXO+w7BXzxqx48why8fGr+0q8Q35jMslTVTeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRDXW3Kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRDXW3Kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA01C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742866193;
	bh=k3Bgyqozt5bBhmyGwG3qZJqf27mxY9xiaDzwlUutimc=;
	h=To:Subject:From:Date:From;
	b=GRDXW3KqOGqE5PorPDyBw27hMa3m71mZqv2CcHTVeQhMUcuTZcgmmK/1K7X3mSqtd
	 xlpdk5uNYUvspRNLCTOn48tHEMiy51o9FPQ6v2tLyiW7un/JDhyJKdI3nCSNtIgqye
	 mmDB+Glsln0noEvAlW6xkN6+uhFO+kDH6lQxiSumgBz+quXV3kPbEJgbU75mVBk7z7
	 MQF1oJe6xioYFQXpaFhNK571/Faicc5eNENMdiYLIcp66NJmmBq4E5QsE29CC7FcMn
	 0uLakgomFEb6jhwX4CrXHsbHdfoe+rmwzIHVZqbvK2zQvi/SCzX1x0hxNSsAl30JWj
	 Y3YCZGb1Muonw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99282C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286619361.22363.121378992006660513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6ae3f2ee64eaeb6fd74bf0993b36afb90a479ebd409fe2f5dd8b130ca19b36
Date: Tue, 25 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742866193
