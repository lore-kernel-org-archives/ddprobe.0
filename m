Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42645202C34
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743510594; cv=none; b=PwlOppX4muTGy9fI7WpHEYRJytpkVzlfhUo8CRtkqBs4MlmMtMJ3IbLfPKwtA8+FK8ztjuVFdE6VQlzTHKE23kUXScYvGPPQD7R0z9T2qDGVltu3freLsXkBQTTT64nKNSRyzl5SG/XjatgbmqPaQz1Vcn5p2zTiXcjyrRRncMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743510594; c=relaxed/simple;
	bh=3v5ZhqvA1Qp7KyjZYGFd9llRAnzPiU1dv6XHdGmvJSY=;
	h=To:Subject:From:Message-Id:Date; b=IG1eceusehWiWZqBUhnV+hbso1QU5dbQfLu8FelH8IAAInnjFtc6AbvVDWus6P4dgJ86kgOPMi9Oqb3OzQdwgMsOjwwViw4VvRFpNxaoybch2FnZVQ1WFMUKa17P7hTL2JJ5ZFn+1Nj5q5ausu2S1hMRQ8ez44rmu2r7HdsbV9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eb41xWaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eb41xWaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2945C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743510593;
	bh=3v5ZhqvA1Qp7KyjZYGFd9llRAnzPiU1dv6XHdGmvJSY=;
	h=To:Subject:From:Date:From;
	b=Eb41xWaOEXESbGyT5EtgjtUVRCf4PA+P2KY7UhoGsUyPdWneNR92MCm70BvssvySp
	 X+owU7dx9m3pQEE0scLV7KLZyYNiicf4JRT3ooBcyX9W5Y61jw4YoLDRgwiNuKdET7
	 O2uONPgWhgQ+8BVnCMk9ApM4m0L32COIgc5HfjQtSJbo/+Oy63kftEbsieDLfjtC93
	 n4MFv1o3uH+Lcex09rtjJs7TvF6CriJHbyE6NaiBffBYrd9C+Nw5oPykVSVROA1CId
	 9xCJKRzBuzhXQNU+n0RQs9cfHOelDrpCDiG7PpliETfZdx9k90yLgaMLwm2exx8DiT
	 OdtFKhKvB+8tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0698C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351059364.24809.13862317238501528260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e22156bd2f3521f7806a19ab7b3e16bf54bfa64ea7de77d321bea4c566073aa
Date: Tue, 01 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743510593
