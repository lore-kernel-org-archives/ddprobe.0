Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EC1316905
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776776854; cv=none; b=V4DhN45T3Stecalr4tzD4Atr71YgM2RozGpOWF1PEgesPGXh0APe0gRkXMLzagmDp8l3c/h0N24PiEjeUnYJNf8FrKanMppHXujclb/UghgC8QcZn41MYPG2LQB840pBLLhS2fWLeAHNQMmCP2Q5e+mQEQH5YDPZS0GTY9PV++o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776776854; c=relaxed/simple;
	bh=uV3qRxyZgTUjSeQjXo7QhwN16RKK5eInh3FSY5jbx+4=;
	h=To:Subject:From:Message-Id:Date; b=ruZXcmc35WkWNOMR6Pj0oJPdaveXvREnRYSsMO/SBYH8DLfE+0Ny0T4SVi2axVnCTvQd53iohEflqYm5SU+zVsxrDOoeZlgiROyqBW4/IWQIBOk5zuYePxcq/z+iHhWx+BHeICAOJD7Njv53xz7FGqgBLKH3BLmjOlGL/Ki8SXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+k5ATzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+k5ATzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B988DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776776853;
	bh=uV3qRxyZgTUjSeQjXo7QhwN16RKK5eInh3FSY5jbx+4=;
	h=To:Subject:From:Date:From;
	b=F+k5ATzEyTlJcbvG9hxJglvPHp7eOyRsvUQea6lDplCIWbLHcijI4wT+1olghGjYK
	 ffQCuvLcTilfnrgmXJGQLfuoZNfFOlv/ZU3OQgtpzEjCDc/2Stuop3XQ4hPGhak0W7
	 hmh89uVkldBNycZzE7Wk+mRKgnaiHQDe6lBIerIF3WEwhvRM8g/aohcF1hUIfn6JFF
	 b9G97N73mmL17FloLE2U0wjoW3z8uMRkEpGQCZMhbXv6iIExBJgWP4h9tJHPh/kra0
	 Qb1IHOz8GM3hiXR2LeRc9fKTAGkVcBwco6B48YHJtUBgf8guVtFoRNy9vroMAco7tP
	 jeZYC6hCbJbFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0E0F8FA72
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677685368.787.17560249259310809101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc705dbb5ab23a90fc8a18fc017fe85047deb384d4c6d3c9d087075e0eb16dd
Date: Tue, 21 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776776853
