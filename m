Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C33D43CEC3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782903514; cv=none; b=AwjTwo6QkbXOfIKMHbey9EhDUgFoS3xgYpZnsEU22lCgYO7BNRlhoavQvu14fJmNvMrGy1HywlUSJQ2qAdD/qLIjjvksqrlzMrHBS8JENdtZOlu34+IT5c6UyO0e6TtJIYUrjVrg6kAhctBhg5X4yWb9qYrMxRLBNPdmXCF3zPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782903514; c=relaxed/simple;
	bh=JPjxc7aodnN+LQyrSIgrqX6h1hwBr+KAfzyNJUksozM=;
	h=To:Subject:From:Message-Id:Date; b=bYJKmkVfmrR3aSWZoIgGnM9uJKDBS9bMpublGWn0KyODneA9wLVJOOBcS4doNOTcwx71gejjtdyV5mYh/qYQBweMc+Lk3DwtytWLHXR+cpwW8TLkM/O/ShDVYZ7muheLAdTWbMep+aXof6An82xkWO4stwIJMlEqPctSqDTERmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj8UPskY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj8UPskY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C139DC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782903513;
	bh=JPjxc7aodnN+LQyrSIgrqX6h1hwBr+KAfzyNJUksozM=;
	h=To:Subject:From:Date:From;
	b=tj8UPskYwUmXgFcPdmsvAuuAG2ofQFan1Jdymbl9fhi7KFJ4QFIZgZU3jq1KQv4uo
	 Jm3onUjgGSXaE3djv2/Wlr68IhNTZxYyN7jnU7VdWfIzoepQj0rPav9FMdkE71cnmO
	 BY9o4Gxwp66rKNySO+7L6PtBWF0zwAsgl010Yk/Fwcww44BY8RW18PtGtcGsTD2z8I
	 ZQ0NSNOPuzr+UZvCz+OOkSZx3eiuezN/ANxXDruuZnmLYz0QACHQFFvTZkEYeAv8Ev
	 z+sWVGNn/4Ou4uFNezqRSuZDOFyOKwNttgHYJ/pIFKmUmc2udcvdUKXwbDBif/8Jz1
	 y1MaDvlMXqeTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A72C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290351368.6780.5356823400757702424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8add58b5e33aa3a1f7d1491a2f94741a85398a4ec9c200ae6ff1934e1b38a4
Date: Wed, 01 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782903513
