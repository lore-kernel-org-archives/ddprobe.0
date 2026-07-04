Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7652BEC34
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783206514; cv=none; b=oICNiKtkADy8JtvTpt6o2+Nc+BZU8pmuYuDC4x/YCaIxOC772TiG0C0yb0d5bmX9Ap+BruknFeCyIwSJV3/rf3+S8cq1RRC26hLsgvX5YGOWzM/W+0Kl70MZ0inzf5w7qMsHTfPOwcIG9Xv+Ysbb8bonTVRoAfquVU7oP9257xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783206514; c=relaxed/simple;
	bh=mtBDqFbeEDFm104cOlQZ61CVo5UmlcWvNGgBxIQDOgY=;
	h=To:Subject:From:Message-Id:Date; b=RFWDv7+DAljj6qEOE+4ovOR6DzcNNC4RDhxtWsz37S3JmXFos0/kPBDso1VXeJB/9KT7ZsVyIWd48If025O40RKI0mtPBNZ62uw98v6Lp14GWGWsbfQhKxOvN4RMdWU4W5SM48qcKi8nLLZPr673R9+u35IpPquQk3ckoot1CsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDqZtwTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDqZtwTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D220EC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783206513;
	bh=mtBDqFbeEDFm104cOlQZ61CVo5UmlcWvNGgBxIQDOgY=;
	h=To:Subject:From:Date:From;
	b=GDqZtwTlQzgwt+7cGs9eXv8aasg92pERSPIhE7C9dP0w87I+ireD7SZoRpRs5roza
	 QGqkzNbImNFiRpDr9gh+r6EAqKUNm8dvNK9/GtEB4j72S7B/Xlgi1dpJkPWOO1rPKG
	 cRw3J15kiKqQbZXoX8YAwbK0I/utuJmRIV9qTk2TArcy2NIa2JszMcK8RTCfwR9Fuo
	 PLbC0FuxnU/POaMKENbymrJ/N6BpIW5uMYFZAWjZVOz7qsr09Be93if6l5R8FRtRDb
	 9vNr2tl65bh0GWwGRqBFypu4cyUJc+4Dj6pKB5MqvE6S9UHScG3h2wjAdptVRMtK66
	 nfbOmynexMtxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE279C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320651368.3362.14049596441790057398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19662b4fc220b90c4627f76b436db12a61fd82c214bbe05ac88e039b477d49dc
Date: Sat, 04 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783206513
