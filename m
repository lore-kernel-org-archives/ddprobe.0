Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE87238C0D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763098194; cv=none; b=lJsWfg3WMlduEhU+OTZ+hFQEdme0fqwCKyFb46oLbkX7lV/TntO1uJqXUX1hA2T4REMl9qHAxQXv04m+pg8rPVtQAfAR4RYtM9CNk9EWXuzhxPGl6raV09ubTmEAo9lnpa9mok9Fuwt52pnrU3cz5vFGQcE2kBG+U+9P1OcyIaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763098194; c=relaxed/simple;
	bh=TIx0nq8PBZmYlR0JCO0UyMmVRZlPbkcv3otjbdyAfO8=;
	h=To:Subject:From:Message-Id:Date; b=AnYyXAFjFhnInQRSpM/ELkLn6psczU36FPFT3ePGRJ3ePvYbu6KqLHey/MyUd9s8ieXGXDTf4wR97AUJO0QSgYBRI4NhadFXCbdIXzkFkWGOKR4mnTEmBu8401v/3rKTzmkGAMbdoBp8mlZxLCzwNHT1HB7qr3LjV/zWlkG/PB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOBhV6g7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOBhV6g7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E0BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763098193;
	bh=TIx0nq8PBZmYlR0JCO0UyMmVRZlPbkcv3otjbdyAfO8=;
	h=To:Subject:From:Date:From;
	b=VOBhV6g7F6WsWGveMp8/NXMcoBuigw32g94srZf4ZH+3T3Mv0I5X/AD59wEs5jSqO
	 +jLs5xvU1G+cxNL9kghSCV/1ZSahZth4BDuAf54TmQlJ7GxDBnf+x6mgiISSZqHU2V
	 D4RYzTitUscbwG61o8QDNNW2/JcFJaWFfDLLwwNj5TltIRM3thAsBWzE8J8xYBVc2D
	 8JKwEO2tWKQzmySRwDo1f9HbpIk7VGSpOdBt1ufF6YjAk7ws5MqrczyIjbY5yUXo8H
	 pQJBmDmIUveDLIcMwAx/D98Y6ArrzWL0Mdow2Ey4SIL+CdoWVp0EfkNz+3+hkPVOLV
	 LgsW3PfEwNAdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4CACD4F49
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309819362.5509.7300472194899567053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7256c9bdf0bb577193d6baeb48bcd7a99e3f63a633c2202620ea70458f821328
Date: Fri, 14 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763098193
