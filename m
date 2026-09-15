Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD2D199920
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789448434; cv=none; b=O0J9vZdaTmw105rE2yUG6IxAee/pY61KZfjaLW3ol0snLbaBmqZ4CxevG/vfTqPYgJLGW5ecxs7Fd5jtTfk/PyZhF8S2uo8cmkfB7iabFTbCVCc+N4F8nF0DXSdGX9cd93q1Eh5bYdVgfds49SmYyN0a6DEl7RzL2aKGIPZqdUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789448434; c=relaxed/simple;
	bh=arqQe380Gjl2vpEZ6hZsAhJqGw114deryjrUQcrtyDg=;
	h=To:Subject:From:Message-Id:Date; b=hwLRlLAwHk0ZGsk1CB4dnrbqoOcPSXgzZ79v+v0kUNLyrDCczP1PvHcuhMsOC6a19Mx1ErtJgcjxOm2rXomLR3Gu0Ns97Y0Zn61GOeat7Sfc/5Mqjg3DfG1NxBbyPWzx+mj/szPJfrzNAh++2YhGh2F5PCwN3nZ3SKKNoiwQWVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2sDpfj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2sDpfj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1718C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789448433;
	bh=arqQe380Gjl2vpEZ6hZsAhJqGw114deryjrUQcrtyDg=;
	h=To:Subject:From:Date:From;
	b=J2sDpfj6O+I4iweOVZ0rcZIVcKUY7yyTK0I7vwb1q53Kkh/Wcg37ID1PbdPZ3Whun
	 3dR+q8I4jI88x0kqi7JnLtY4hgELNvJBrvAXy7mu31hwG5nsZYb8wv699edo4zt0Q0
	 9Wq0lhY4zo9c1pCh3BXDMvMN61czSs0sqeMMEWF/G13HvHb7PG4pHqjgkkAaquyBUT
	 9LdiKahTSfppCgOw3vZ4pQLZ/+O3fkeoq9zvkH4D/Yewf9B/2mjap15mODEAHB1Ids
	 QuOhthZJdkDeXr5CXrA5mYCZdc21rwOYL+gZZHr86pPTlR2DVeMA/kL5QNbEXc8mJG
	 hoQgUOBfNrJTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA513C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944843368.18817.12973267022326964441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11d2f036262aac99c40e33e7259d6e7b95381e020a9a2a6bd205bb2a76753a9
Date: Tue, 15 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789448433
