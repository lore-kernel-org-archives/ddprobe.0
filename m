Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C834FECE6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790701834; cv=none; b=BSTA3XVJqgpdpBFcJ6p3oEYkzSvHNxZ5qumTZCk95zGbSVHuLU6nEAuogkmoM8i7dC9zUSNXbcbIMIyc3BjAz8HPOPK9Rv3HJJXlqKTB93zuvQzMBeGvyib3kON7zFw/Qe9vvWMZFV+1nv6aF81Y2opqo6iZn1SCNFzuRLCVgcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790701834; c=relaxed/simple;
	bh=qPvytgYq6snJQSQs+MyfX6hzhde5H5/9tCw0rMeEuMc=;
	h=To:Subject:From:Message-Id:Date; b=q/iyEW/rgHMeCdAsUSJbkIFvYqGcc2bIDvNmkIm6RYSE5Xxg0L6SOOIdt4/SS7YacxOFS2681HbSBDJhERT9VjVn1ZrICB2R+yhOLgTrQYFXiqE+EkyLurQd10G166SgjKaIzWl/d4u79h66l+xgIHvMBidBHtXFHekmZHYvb2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyFoYNDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyFoYNDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD784C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790701833;
	bh=qPvytgYq6snJQSQs+MyfX6hzhde5H5/9tCw0rMeEuMc=;
	h=To:Subject:From:Date:From;
	b=YyFoYNDbeuDfQlBY0qwoXjRBLF9l2OyqPW9ooCs2pUcsdBcaCbLvSgydG4LQ7OXPx
	 76IKiG3FrLEVwfeX3DnbxPWahL1fqsP2k9AKU4ArzoBxRJ9FCMZIJPlHn7re/EVUsV
	 8eDvPQABqFYyVdX66CsYYr/izFgl+OwWEjeaD7YDzyz7ua2V1Od/vGP+SrbnidWJ7S
	 MeOdVw4M4Q7U0LzOA+sVNXpZ5M+kyRNCk0yqAja6nTcpIZorCPGtSqtKoARRivyRgk
	 AAQAjMOnvfVOUzew7p5pYN90wST/vAEZD6N0O62IiLR2GNcb+4L++55zNoSI1GPZuT
	 BVU40k85KMPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF44CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070183369.12844.2872349889970664020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d316050680fdd7dfc4ddb434ed883f47c222de10c666238174994668555c1b
Date: Tue, 29 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790701833
