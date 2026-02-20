Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C221F1D555
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771569293; cv=none; b=BVXhPnpKuNoitpbAHdS5476PAaBzNJp9I3NSlKGdwPGOyHx15twmKgJaDIex5EOJ/KSaw8ZAzksJ3c9AOqtFgRurCL45Mfdenf3bWiIcAb6t2JAnyazfaOvx/MTU15Edo5d8zWvFM7Eu/UNAlb2FPKeEyZl3s9XK+rHETM3tvgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771569293; c=relaxed/simple;
	bh=OJoGX8v6EQw/Lt/JIHw8ajhP2JzFVpbiZKbjo5DAyEY=;
	h=To:Subject:From:Message-Id:Date; b=tplDLRvM+l1jDSk5xx9kOsmudChMjxpvw+3UsqZFO11X7dZB06AV7t1Pu7h+8uucikqSfF7ltpfnd+pqQoAQz9IZ/7BlSmnTP5QSYU0bplRQOHrhcmnbGKQsHp1b4+BUp4agJaD07kuGrT0vx1L9dr5rBrwcIhRhuwe+9aLQFaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPv2spmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPv2spmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B4C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771569293;
	bh=OJoGX8v6EQw/Lt/JIHw8ajhP2JzFVpbiZKbjo5DAyEY=;
	h=To:Subject:From:Date:From;
	b=aPv2spmTmBHyCgmqGwWx0er9yTpgqb/ftLz9OULkA1pt07pgi+GVAKXrBD1BBrOOR
	 ZTYZu8lQSTBbmdyLuk+EZppMK6JGmYytl+bNCoDmXShE2CVSPupb97gBcoE1/CFJ+D
	 OFCiNn7NdNFbaNeSkiwYw7G0ei/kMOAZvzPs3OieyT/jaR7v51L/OIs8yFBxHZGrOz
	 kFtmLyGgu4B+IYpt5W1rrXnuW7rplVkyUOL5xiwkKzZPaaIUmrb+VhKuETNhuLH0Hr
	 m6pI2q1b3IpyRkIrkx4wJ8yJ8wPB7339c1s4mwh+ba3WD15qFK7Fx16BjukWtsiPKt
	 9sGfxnPNSI3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FFDC54F5C
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156929359.25274.4468265606848327559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28929a28a0f2406af48c981436f6ac29c385f2ae8f86a6571946f115a9755384
Date: Fri, 20 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771569293
