Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E95319E839
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775902054; cv=none; b=dSoYPROGblM/xP4U2Dx05/2jVz0YhsMapH5cNr60EtL4sRkviNN296Y+JVLT1PxL7mfIwgwESFSOY8VEhNOaBBjUvvEVrf/9uj2J3BjyrD7tDPRHfUPleAYniHiJ+QlQnMEfWlGRwIdek4+rgdJmh2MCg9gt9YnYW1Ocya5S/0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775902054; c=relaxed/simple;
	bh=7QzAc/+V2SWOYxu7aaB+NPVEiA8aN81P1t/gVBSDzbo=;
	h=To:Subject:From:Message-Id:Date; b=jbhGARLqEfbuQxTc4L5/Jv3zsT+YktS+/djbFsWrBGFLsocaxtLQQeiOebT61Kg7TJkoYd8P1ep95ITw7mt58MQT4w1Zsml0JFFjjzt5P7HEu+/9ssFl4JYjmnkpzXiQPSlEQJV9+G3VQijHGtdqaQfAOhsewcmrZiHQL9fLhjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeTjbAIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeTjbAIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE6FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775902053;
	bh=7QzAc/+V2SWOYxu7aaB+NPVEiA8aN81P1t/gVBSDzbo=;
	h=To:Subject:From:Date:From;
	b=aeTjbAItSLq5xTh1yjrI23hWBEUZehYAppOc9495YOfnaP6Iffgk7yQHhCpNV997t
	 xmyC1JVepWIvKdQY1WM840MGzSkf9CrsM7DB2ZBDMwYxf66DGRNAXFXX5+jCk0cqsC
	 3I5nfAA/bN/ZfOUXjOWLa71bGnKQbkeadeJMlyhF7Rs/C3i+6KmdQIzAjxFWWGg9Mr
	 A2a8FFSez3F+w3pnDtem3BCSeqP47X4+Vt9tBpVJi4mz6YPVItOhQFIGwHe5BXabz8
	 hRDIu0KvRuV9vGWFluk6b7tbC7P6Clue1WoSjtkJ3E6SitY5fAZ4td2AXRUPAU2MKL
	 YJRhF35o9OtZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDBFF44875
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590205368.10664.12040477694204164428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced3b5a41abed89543a4fb294dd7c5075aa538a54587dfe68b5fdc5ac383ad2d
Date: Sat, 11 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775902053
