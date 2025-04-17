Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370D61F463D
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744895394; cv=none; b=UxCq3iqL6RMjwEC/xAxetupOOYFBQX0Xy2lxFZr7HbaijvdjoC4nREn0pu5jcYO9D3aiBW8pzRF4pxTBMMWO/Npmaq1MBKMfY/DxS36P/HclIfCydbdnzRFvAF7C3Vc+34RZLksvBdFy/fb+FJyYFZGVn/WjEZvC9TwXHNlRr2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744895394; c=relaxed/simple;
	bh=zwa02fAXhDY+allAy7wG5ngWwzVYkVQa/5P4cdscB80=;
	h=To:Subject:From:Message-Id:Date; b=M2OWDptuzwzLMxCzwheon4o+yyPi7SLiy4fNnKjLm3DCHAV77CTGZLlGQ3cTQbA6LRYfpGidM5aEsLioFh2pR9Sddo+aTUyWyQlNkIoV/r2TuSR9JqjlH2Hog4LCO1ch9voB4DBBeFzYsAfaTPC0ZIBvCPE3KTSsaGMilGNRUOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jofQTkML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jofQTkML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B9BC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744895393;
	bh=zwa02fAXhDY+allAy7wG5ngWwzVYkVQa/5P4cdscB80=;
	h=To:Subject:From:Date:From;
	b=jofQTkML7PmSGHWSikhOYSGPGZEj0gnTEcL9tinA289D2rkHdocvZiwyInGj1bYEr
	 CbYkKHeedwJGtwmyYTA3xLsGS3bLKHkRnOBxoY9A8XFXBMXHk8AzcP0KoIbzkpaqpS
	 6WU09hfExLUpNasCH4n7mjIoP84Xmza/3gqMIqmEpPf18UeB5IumESBwohFnaQmoog
	 YXx/D9pggF9axUrtjLrpdaWZE15mr5WBOdn/tDqbh5xtT9prrMiqq8m2cqA1HAktYY
	 dxmFq2PCDUDSujo70Y9eQAyH/45vfdsWmIcwhSc9MKpA6XmGZ6HR+QdWZhT0LVIWOq
	 St6U4ApXLspmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1760C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489539365.22290.10385949907611145828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caaa04ebdcb16d1d860aa8854c1390764f41d985d49fbddd5d7308a4e50c8455
Date: Thu, 17 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744895393
