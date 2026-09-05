Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20043BB130
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788646834; cv=none; b=BlqAdUoIDvDtbTaq/aThpRRZRmw1aivlDKFK23su2h/iCoNvySwUHge+0g4EJjg7ocLDtGjWoeAsfpKmoHXzBmmGWEA42wZ8k80aXMTagIVxdmU8om7VONr4rICgisUM46b6i7pHHUFrR9CbD4Xdf/Gm9i/B5IyrX+ZGNbGbwF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788646834; c=relaxed/simple;
	bh=aEZ6l/BEcSJht6fxLKPPm7OO840s8NE1YjcZE/8hWYk=;
	h=To:Subject:From:Message-Id:Date; b=XNLa2Q6irXmchIP/O6wrDN2nH9EZ/5CiyBXd+Xj8A7srOFEtFfljTsokkq9O3DdrrkWy6sK6OZb6z3DpQLj+DX3iTYTxAbKPcPRG74l991IbSRy5xijYyrYKBdNA65YdrchxfYcI7bBjhKyM84HxzSw5P3B/5bpsLJStes2Cag8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX2u65ZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX2u65ZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AC4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788646833;
	bh=aEZ6l/BEcSJht6fxLKPPm7OO840s8NE1YjcZE/8hWYk=;
	h=To:Subject:From:Date:From;
	b=bX2u65ZN3wQPXQoqCgF5CPMCYl1ldkH3XZdsE7U8XBrKPTZwnjQ7LDp0Y0v6X/d99
	 GfBV1MeMhN+KaYeTdjWwb8aG8VrgFSRZHcLuCHkT6HUwQ/D4JqMWRnogxEZoigNP+9
	 UmsebkiPltRgv+SJGcZFbaUGBQcCq4z553nLCBsWuP3HW1q+5AtA8B0GKsnLIr7nmg
	 9U1TSnAr8uHVP57Xn5rbmBq26r/zwE/ae/eSVd4plrpRKhk+q76epflOdepi1JOdc1
	 6MyCR4bN+/0vTorsxlxCW6Z5sN+89GcnwaO+qlj90yH4jMFuklVNvo2Q+2mR4dl4E/
	 WWi3kLRjWx8wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1613C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864683369.27507.17997031460037616756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6302eaf336faabf6610074c769d82a2c5a25d2a1acfe8bf824314632419875
Date: Sat, 05 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788646833
