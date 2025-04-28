Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4C7156F3C
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745812194; cv=none; b=FpvU7kORIN1dcWAY3zupoXdHrb9W4k4Q8sB8Ppe6ljD7A4FOSIyyonopW7tpO4symZywoByDbmOVlKZ4nhcXRHUtv8OPoh21+xWygIWPO73RAn6fm8wUPKQONVQueDjhMa7MsjDsJ20MlLE13gJjy2YvfCnJQingCqb94ORw8Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745812194; c=relaxed/simple;
	bh=4KM/VjzuJRg751nXa5Oj31mJsQUC5pe7HA9k9mGfs/A=;
	h=To:Subject:From:Message-Id:Date; b=s9TfS3klkeyATr4U4Xp7LZhDt+zjylS1wjW3ikz7eEyhdS4rl1ziQ34G/vE644HHqPX1JPKptnE5EjfSt6vozJX/lkq/fKQJWlwMk3MuQnlG8CwqGxulwgjCIxXw4hqNEPEnAuwPgD9L8ADMu7yR2ORO4KuIq+cU6Bj5YvdWTGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7Qx48B7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7Qx48B7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0802C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745812193;
	bh=4KM/VjzuJRg751nXa5Oj31mJsQUC5pe7HA9k9mGfs/A=;
	h=To:Subject:From:Date:From;
	b=q7Qx48B7E7xiK0f+AXWy4Eg0t8T40ZjNuMDCqnLbMyrviEIhW97ktIstDDs7yg6Uu
	 vlcDQHItYwkafQNWr3+i9a6mci0W0YGoKTJ2364rnEfvopYgKlrR3TUOpBek8Zu+Go
	 b8iRZEsFNONfo12iUrTFxAG9K0X1JFqe5nzuYtWKXHOX9Lf+rWEv/SPqgzNPuTSVe/
	 +Q2+0xpz/6YpaNNAyPcj3Z0hWRtFx9UQgfpFcros/rrVqOHrVrY0e9Cq2m+PDulUuC
	 LXi3QdR+j2n3MdS1yj1IUkn38vwVjzO89n90xDmDKzG32SktMlWk5S3QYyGcxhv8Yr
	 PmzzquG7ng22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB0C369C2
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581219357.8849.2181006909313940613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13c23b14eb8a5ed76d2b56e0645a28fed60848e0f3e2dbbdfff3e57a99c684e
Date: Mon, 28 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745812193
