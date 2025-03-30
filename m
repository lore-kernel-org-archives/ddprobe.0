Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424C21922F4
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743362994; cv=none; b=WIAS7jqzDeIGauzM+OFPxMxwUJ/StDzWW+VH9IQWxoXxgstHnQbUdYWJff0ZyYeGcggB+fK/0nnxfmN6ANNubzyMAEsLe3TI/H2nlXpY8ur58rgtixf6frNZD14/fGNs1zz5bus2erPuvBKXnPlpcmFSwpeppeUEpdByvqeIxzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743362994; c=relaxed/simple;
	bh=dBsDBwrAMozI1JRMrR640LdF2ycoblX4bRBUAIloX98=;
	h=To:Subject:From:Message-Id:Date; b=hbsRsCOPT2tv6vnVpo5zlYiVk7FIXkTeUpN0JsW+liQbfxY8fI2qBuXmrzLqbBmI6dUWFJMn88gC8dPy8QJX40XIDGG5L+dWdkwZTrSTlCvgqaTdr+Qp56w+MNhkIZOX8Ldkgi1HXsyBc7Ui2phEIljPFFG/Ia0j3dWSK0l0yGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcxY6fSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcxY6fSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB04EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743362993;
	bh=dBsDBwrAMozI1JRMrR640LdF2ycoblX4bRBUAIloX98=;
	h=To:Subject:From:Date:From;
	b=gcxY6fSqe2W4Gf1qutDlEDG/Yt4nciB8gBRk0ikcdqS9q/xdrvW9oWP4RnpMuk+j1
	 poNRo+oSbRQZ49rXvOmUoCslo440pXX1SvyfDM8avBG/pXUR24tejrWHCPrsuda93C
	 Qp90f2o0wSlAu0FYl8IQZoAXnJH7KRqSnKRPA2ve3WpA1v0aOdOxPBuhCv/k3VxBV4
	 0lprPRv9I2Nay3Y5v+i5DJMXMsseHQ6462typhYa0Wfb2DpGP/a8cF8A3Nk17z2XIh
	 OP0NsXprvlWvx68RUtEHVTMKlZV4vbgwujCeUjFbTGI4y4yNe45a6ASrYpaB6la1IX
	 UD89gD8IkMOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AB1C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336299359.30712.17577133460524605046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c669398d2b2a36798b7144a20af43b149ba1d1459c1d621fa85ba25bb6371d
Date: Sun, 30 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743362993
