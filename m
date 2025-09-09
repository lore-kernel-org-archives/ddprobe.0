Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3A754654
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757389194; cv=none; b=IzmRhJ5vf/EJgq/Smr+SiTYc8wC8EL60BytT6Z6dtoTyDKxIWU4cJ0ZBd19g9XNKOv3C6jihZC6rOvwh+ctl7xEqT71Xu9BWf/y5K49/RzuFrCsfzIcEz3Q0Q1IiAlsIOqpokSB5kvv/SXGtpKgyZagWCdhwvyLDFo8em53yneg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757389194; c=relaxed/simple;
	bh=E8xDhMDdnayyl0NtXjvRcp1I3xmProwLOH/q0jyLr0o=;
	h=To:Subject:From:Message-Id:Date; b=W56ZrFec5ElLpmBh0cfSr575I3pX8/GqSCVac/cDk6hxqCc1ZM+vRsuJ/qok4YKkMaEmChfUkNAnsxpsKE9NYXpSp8BffFbMRORIUxrVtppnpv3zz4JtqsoRgeiirgT1Sz2aMrx/YzkfzScrqSE0CMfCPWthCSWujzfyd/SqjG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBJBrV77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBJBrV77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0622C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757389193;
	bh=E8xDhMDdnayyl0NtXjvRcp1I3xmProwLOH/q0jyLr0o=;
	h=To:Subject:From:Date:From;
	b=rBJBrV77wV5BJjUjZebSxvSrVLG5Mjs8X81g9KE50NsaBhFscefwtWawvJNyuaMcN
	 y2AX3QiFkNNQ7LHCQiZBCEzLbCS88HgesuLHqjJIvFrfjFZHF/YsHtyBIZ+Ja9YOFM
	 09isG+/kBPoT+393U2896t3CgWaRWXavo84tP5vW/6VTC2zsp0arkTBq57eMkLRfuX
	 kdPAaSjeA8nUsoNrcPZlWhHGFWm4xfpsO5TJ4qDaagPxZ+7+RJBfS608oXwER+jB6q
	 AWqE//hWiaOqCOpZ37zjOI0xWCTZe6jHRrcpHhuiElsaT55Vs/f1YezSoUvkfuppCk
	 0WxysbF/z6Fuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E489CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738919357.25714.10288879331806307517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71ca4d899f1303df8bdecfa4bcf6bd12398368564fab52e2835c6ff7949a3fb
Date: Tue, 09 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757389193
