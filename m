Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2606C17A300
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771739094; cv=none; b=iSGpHHsUXAgr+TLip6EY9SguaENf9f5jhGwr4+hWrA3xlMWs12Ycxca4u+AupZMdnqz3CuMxMG3sJheebMv48z7oaSpwbEKo45ppVzp/JuQMhym2URptdrOZLFWi40858VDWvQaO7YPvzdlKYbUn2dv+MVIwGO6QGeMUv2GG0PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771739094; c=relaxed/simple;
	bh=rLVYZuwtu+wIhCZsSPBWKY1Rpqz7ezmMJOvq7WHqCeQ=;
	h=To:Subject:From:Message-Id:Date; b=oJEkB0dM0f+t1iDcoXmsgGejtshxnvsUyuswYVMkFDJdj/wQlp5BkSgNZi6cFHtyPiMav/vxnFaScKbtCzjEN9Deed7XWmPJuJGiAt3usWJwGVQRVE1A2RUxsU1iQNav6UwRfjc5pj+9SN2onRvfPiutCs8J0SR21yOstTRP4Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtKUECPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtKUECPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E11C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771739093;
	bh=rLVYZuwtu+wIhCZsSPBWKY1Rpqz7ezmMJOvq7WHqCeQ=;
	h=To:Subject:From:Date:From;
	b=ZtKUECPCpiiZf40+3PuAr92I6EdhACF9yF49g/ql7DR9UdHVSiO0PBDVrCdULQqqJ
	 CLdT6y6goo1e24xgp/VCdKWyiYYtS9G2RUPjWwh+tNptlm9QzXQO6mqs5ILzUKN28z
	 fmE3tV7GVJgT2X7I4E4p8bhQ3dp2LNMzHw2yDsifFOZMoy6RhveToKcl95XI1SUXXK
	 xu56HnsNtC9twYKI4JLShTa9ByC3iKxpzmHPwzmlIjKmoByXYp378gQSFe1qvHK0nc
	 7vBPkyMNDIG6OomWc2esE3Xsb7wzIsRT8mTDcGVZ04p8o7R5wwcthfWdt6aRuS7dw/
	 DeGgChLkw7aeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97831C61DFF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173909358.4341.4656870948799355592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df5c675f1481c3462eaed683d1065c6576206a3d0aba02c7acd20834bb27fbf
Date: Sun, 22 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771739093
