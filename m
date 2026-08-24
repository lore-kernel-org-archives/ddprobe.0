Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5097335975
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787614234; cv=none; b=JqcqhsGVVgLW0CXaf1Bz/gPorbPTk5S7nG+dkjYHqsWoMDMPG7IpAw7jVKp5gO+GRdfo20nbESH+J5klrl3UrBSxC09i6gH67TabUI/AzLvgQTA/zHKFGS92r4qshEVIBZQeeRzm8zoxGXSyIL9tGSmvpnH5AfGxSjUMXhZnuFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787614234; c=relaxed/simple;
	bh=EVPKUS4Rz8NGj+3NHFyiks+k9h3W3mIh4fEaulK9lX8=;
	h=To:Subject:From:Message-Id:Date; b=NT8kp0E87XqF5JCShBbkqBzCpYEDeXv/OX0aJskviO09dBJjv7d+7DyWHwY5ju3/inv8FNbjhrhx0zt/ioVyNIigSzIn7OWsiQjazxH0nSdfByPf9Q5Mh3FNQsTq11r3GVzn/NbWzoRgouV2mN341i8GSQydRdEbAHd2cnatBq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzPcTKL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzPcTKL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D43C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787614233;
	bh=EVPKUS4Rz8NGj+3NHFyiks+k9h3W3mIh4fEaulK9lX8=;
	h=To:Subject:From:Date:From;
	b=SzPcTKL8Z9fQxTcyvkTdd32lOJF6Jkl/lMyC3ltLeao/cKzRPP6wVNcBfEIzwlfJP
	 kzmFWzFH9pJ39CCPRD5L6J4PRi1uVMc3BO15h0a7iWPRi7JkqnlQFWJdJLNvQn1+fQ
	 6Hh1+MNuMpzIGgq3g0GnqLYJzn8eVLYQdNDqNrGONqq9xnACXOUWtwkN4BCA26UZKk
	 ZBYm/iNx3hh2rjIjN7/M0dCsnvYJCmJ2f4B2aPKiB4M+gYHkF4uKikTP+7V9Lb/sJA
	 4sYGlRkFQY5CqrcqduG0YJWlcYz/xiI90h3X1cm35B6SK4obe1OsXVeLbQkyp3G96F
	 N9pixFfHjOb5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF1BC5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761423368.11273.5329606881753518082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30086377b4d30720f0e750dd0be97ad9a58af77977fa5aa2d88cc5a8a28e287
Date: Mon, 24 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787614233
