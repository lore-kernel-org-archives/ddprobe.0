Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E456187554
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717128263; cv=none; b=ZtkNtUGl/TQLc5N3l8NJ7HGWkNYBJk5E4FettI+Aib9mD/SE521NDSbKCdMsKph+q2/q7nKCb4FcH5tuCQ2Mrd5SS/rcBIRrOLvShMez+n908KRzJUwa8gV+prUMCQ0KJ+NJRVr8rMEE3kdpV1m4LNtGFy6nUkB7ArFuHsh9Nrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717128263; c=relaxed/simple;
	bh=q1bLmpsi/F2XJnFobh4R9Z+jgC1eKYJarCRKD7X3E+Q=;
	h=To:Subject:From:Message-Id:Date; b=Nxz6zMbCQ0M4XuFvbgvSL/ABM+G0a6Zo7tBIVfWeSi7UjV/MtBLSlJmk1njhtUBbrz3OcfgZEOFapE2KCpBAJ2t+54a6qLHr7H4B426hVDTG33T/9ffxyA6q9Qko1m7JxVISS0rGozZOhABtLEfh4XYzRlSkFRqeVR+dj9LxMGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3LhpYAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3LhpYAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 027ECC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717128263;
	bh=q1bLmpsi/F2XJnFobh4R9Z+jgC1eKYJarCRKD7X3E+Q=;
	h=To:Subject:From:Date:From;
	b=h3LhpYAkRmUQuhLTYcjD1NEnPrcVPSecIEilcXTJohZZ7Z6UuclPfRKnHAP2O/ppn
	 25wxEvpqPl+aSzQIIWQr5i1JV2RDQnQt5Th2Op+wRkysctRvi88HedaSDaeovqvY1y
	 PYCwvQDWZmcH5s1zxSMg/lNN4lEK7C47b+d6OIV9Vl5T4ACMskEz9wSnuQD436IaxB
	 71iJaIKBGgmmVR12646PG2QkgQ+34E0ePwI+hc0fUptmWvaFJ4vAbWGRlrjyPiUNhv
	 B2fglTICikALaB9hQXpWlDjQdFvxYVyjEgGNnHRfAee7ty1cfSWeujugUSgfERWaR5
	 4OEurY9xFbGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5326C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712826281.26511.12279361563426960971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337fca90cf9cd8ab09ea8bba5f350090dbd46dc9572a825c2ebf90ee282b80d5
Date: Fri, 31 May 2024 04:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717128262
