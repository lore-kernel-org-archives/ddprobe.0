Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D955CEAEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710595697; cv=none; b=bbWs263OXZGnlSBZGaSu1HAIE/j841hnmAB8x6K8p55kOj67avtuuUT9Tz2HELHf5BpFpjrASTMHw1VKYJQvYGKRazdQ1ivIEZCw6wXEPdc5pm3LXH3SzuM4YYf5zJWLjSlKGC64r5nnBMD2bLDk1dNHsBKQWSWXpNmQ6lOpi98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710595697; c=relaxed/simple;
	bh=N7961Ch6u+fkML4iCm2RasAMZDJLyyFoso4LR/DHnJ4=;
	h=To:Subject:From:Message-Id:Date; b=nX4j7CUaKa+tAWJQq4BBSZamOa9wxcbjhBlQ38QQ2YXLsVQgPorUkGbBWLSY7iyE6K1Vsv/rpUc2+kWYKejd/ASHRrIQpsPVcHl20smKisZGVwCt17URNGymV4kss0Qcvd0bPoorblj7S9EpwK7V0ouumkuS5G/+nVfmiPAovH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWlYze8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWlYze8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71774C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710595696;
	bh=N7961Ch6u+fkML4iCm2RasAMZDJLyyFoso4LR/DHnJ4=;
	h=To:Subject:From:Date:From;
	b=tWlYze8pf3urXiHO+eVyRMFc1+CD0W0n9HsLfA/5N3puS10xjnS6h7Wu2tcTobghr
	 zLKKQzAtP9h6BukD3pfkBWc7JzOTQy/XyL4Q+cWjV6GbbXdb4EWcGi01661i2ZeO7c
	 6areFIqPsFKYeMpbKa/krSU4r9fiYjWBDIuOUgFCrKBerxymyM78oM5IMfgvOU4lgg
	 INqgTXfEuYerjJu7CmjHUwhsOFMmXINxavD/XJsKShWIT3ClQbFAidtO02JlvNwnCW
	 ko/pLgFpwIhCbqVWJ/qm3iV7IYoim2I229V8pPPbiExwAT/LXyCWSLeheFC3V/LWbE
	 Ow+qa7nUVq4kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651B8C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171059569638.557.7643762642452718750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9db5aafaf2a5a90ca72e813405ee3724125f197732becc81aaa75e5600b6aeb
Date: Sat, 16 Mar 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710595696
