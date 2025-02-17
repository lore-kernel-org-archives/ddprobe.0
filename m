Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E78EEBB
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739754534; cv=none; b=mQirM2Ca9R245x+1ZTl0mg90soYO81gqGvvTytiMHm0+EnlQx1dCWbsTRs2gBmM7P8Xt/Ynd5C3HVjlso69YQpRWO1OcL2FaXOJXsWcqkF4GFynBsHX+l0EXbuMFzsWy3V2G5/elv8zNnMgFhi0jkga5LiTzRqgMt61qS7z5ac8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739754534; c=relaxed/simple;
	bh=kPOwV88+c/TYVp7KG+kMv87Xt7o9vHpOyz85oRQVlhE=;
	h=To:Subject:From:Message-Id:Date; b=Tm5vHcTcXtpxnFnXIpKi2CTfqFCgWE6riYBcdM9O2paN4lSP6yd5AncanfvRpps/U6iDqV8xBVKn9boHpciV/xmQcuvYA6F9+OWOVoPCF9f8Z86RgXG2mAjlxwfwcF1K7Wl52Z4rU5J+XV2XTWeafiQb8aFFtcsLKgP2z/jhdpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJX+4YrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJX+4YrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1ACC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739754533;
	bh=kPOwV88+c/TYVp7KG+kMv87Xt7o9vHpOyz85oRQVlhE=;
	h=To:Subject:From:Date:From;
	b=uJX+4YrX+xOAaVXkbC7YA4Jlds4k6UR9zlhYR854N41DLZFAOCZB458iY9Ctfey0v
	 KNMg05MtlallCJozW0rqE6PtL0jpemDrw4Suq02N/F9+XnvaAtorRj9XvOJc/6gEGv
	 IhS/dJMD5W02CLgnr7BwRblFU0wbYh+RxwTaNvOFUAp14J4Y43FWHRsZZlNLrhaoUI
	 sVnwoyqEFVOUoxkk36xgTMta2ktFroR08YBFkBKrP7vYk3aEdty1z2kI6C05AF+gcD
	 IMBjbsvhZNxvRNKICkJqBzwqff3pm2d3gS9kZ7BYDiTgEtUBMysm8mpv5LTAVtlAjZ
	 qNBffbO178xTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA627C02198
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173975453368.13691.16620973823737756036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02a24c0c4f6f1d07fd946af472b766739d1c9a54221fd119d4b063987dbf2f8
Date: Mon, 17 Feb 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739754533
