Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3ED2BD0B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769860434; cv=none; b=Fj9BcnXEMvF6wfgWjQs4jOY21OsmQwED9GPG3XxvlXLWXNW9PEAqgwaSwXRmqZim2N59tRYrKFJysQMrJRcrwnTxchlrbYR3/TRw3bnRjuv2NUhQY9pAHSaaJzUN5L5H9U2rSzOv/wJM87XtK8FQ2hw4dbQt5CcduHL9jMmgQf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769860434; c=relaxed/simple;
	bh=Q423FXkH+fp3FJdbQssIlATOfXprzdeR4TTqIEUqg9s=;
	h=To:Subject:From:Message-Id:Date; b=or35t1ELQ171x3G+gsN9hR04oL/Ti8AOIfyd3LWL5iWFDEKAEt202X2y5gQhgwNt44M1aXt6JjK4pCOzGaT1DhSTEqm4rIkTIe9yK0W/th9nwMshCEyGhrwu0aGnu7inF/bybsJ9i1kaaWaQYcyZb6AiaqBB257r7uNuFbnV3bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qV63lQ3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qV63lQ3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F462C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769860433;
	bh=Q423FXkH+fp3FJdbQssIlATOfXprzdeR4TTqIEUqg9s=;
	h=To:Subject:From:Date:From;
	b=qV63lQ3eqwo3r4OexNOWcTlC8j4aoasHR3aldUIeobmS1quARH7hCv4j0Sh76PJca
	 jeI4FambEDgQ8Xj+zHgpERtme2yG3CQ4XDewbVRYGEbqcAAmK0O4BNuqBPPDWwxckY
	 2+V1GUeUo/owPBCjaanEw5fBL43nNqJI7MkyGkBHaWe7XKn4CvYLQZ3W0CL1irOwPd
	 9xOYXXYSUezaqxfHQ4t33xjCv1bUWtz5bovA5BrNDqafEGxtSxXBmbNuL2jykEl176
	 qhkVyQzl7lPUSpD9vGJWR7hnqlLiHA8obU0jYoXu4c9QxtG3iYkLEWO7KFE3zKo9NW
	 uhDNgZ4KdIZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB6D79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986043357.14203.7248597901034868363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbccf21b56fe0f5a451b464d52d8f7b52b018963d18843c8b300927e68e43e1d
Date: Sat, 31 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769860433
