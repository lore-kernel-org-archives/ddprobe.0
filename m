Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D167376A00
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790823034; cv=none; b=Imu5J1B3OpajYfIgv80NYNmDG7Iqlo7+3eseF4Thizx0hbJ0HNIcf+BVyLrM3iEeXbnjXU1K9nvDeRL2dFCU1M7q2QJrRQfwC+U39Ywg4FfbQFxyD7lhJqKC+RW8/e5sZX0WEK2xoz06zeuCLDQ7qTvTwDITCDQnRpVQcvWg310=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790823034; c=relaxed/simple;
	bh=jH+JJqm5m0D9d9CU2G5DxLFep9SefIpNTW05jq8RVCo=;
	h=To:Subject:From:Message-Id:Date; b=Cnlp7UkXpA6yaSs1ktLbCI3qfQA1oDBrIYaN+iV9jRIae4Pgp9uiehzruEJzuNv2u7bWfvYvQ8jW1FJjZoaqNvwyQCPpVXbr9o0oxB3cdO7doRPgBnjQIuDccRzudJtQJU9LqsFHIZWCiz2zObXM8oS9OOlZMrT/vlvuBNcZ58E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGbLsWLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGbLsWLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDCEC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790823033;
	bh=jH+JJqm5m0D9d9CU2G5DxLFep9SefIpNTW05jq8RVCo=;
	h=To:Subject:From:Date:From;
	b=dGbLsWLqXZBC1DtfznqminT9sW8QD4tZtyLjfuHiunlwLNGVxPcKjzVv+JGIjRryC
	 1WsARYMzlDu2B+AK7t8Pu+K/PudPK8vSaPFSHJ4m1iBw52gtDqjMSCb2XhPpubFL1s
	 yTvXdQfoyQcSl7rCJxY9g1T/FN81JHFkhkqVbctGzCQ0I3CGdwhJ5flVrwhR1S9RWj
	 V/BX/pIh4JcA5kwI8LmAea5Hd0MxpZuIkRMSXg6/+CU5y+VKIeT5wpB0VIwrdG9HB6
	 iafpvFoJFyHzyCQnWPOFEBy0hGqOl4Kl0W1klR1j5j+Cvr7KqTIUYT08v9gHqP5Mnb
	 lGWFJQ16mxKZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB645CA5FC1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082303369.2999.17245255536555006249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7264a9848857052430e84c22b331636aa7ce18ef2f1751eab902a8e85290daa
Date: Thu, 01 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790823033
