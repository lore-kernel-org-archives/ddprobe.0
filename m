Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EC93A3830
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782889114; cv=none; b=akvE3VDjJk0gpUTUgI7t9ad1y8gapT8WyTeW8B6hPyQFXupGaogLQwdH4+t8u5zsK7wTP9s6Q4KuUwFD7YwiZOOpdBe1tcGcN55P9rKC3K+s5ktbKl6QqagFH5Lasi8ZgJNwh7/u9saj9JQc0b0PApW8TCYA6nVqYMrcNtrKkUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782889114; c=relaxed/simple;
	bh=GrNgSZePOxLs2EOeEvRHAH2OrP8OWdFD17EZFdckJIY=;
	h=To:Subject:From:Message-Id:Date; b=kihYOMrej2DsjyLDJC1X2rxTgc0tQ9pYXme+dLjYdYWXCkg1D+K6oVhuLoyOLa8uh2Cu4gwgE44SJXBXNEvqpfCIvAi83ud9rF/c7R2C2TktsSE+9zUkYKOKDYkcGaFEsvU9penb2xBjnaKwGlDE8bJObs4KdFSmEId5stJBP7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrtvHjKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrtvHjKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1044C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782889113;
	bh=GrNgSZePOxLs2EOeEvRHAH2OrP8OWdFD17EZFdckJIY=;
	h=To:Subject:From:Date:From;
	b=hrtvHjKOF/t6y9Z1RT7cKJrlVgz1ykMTm3sdrrodpZ13d++hCQnc0FrhG79qvT7V/
	 dbN1J8xsyr3RPlvvnx1qUmbQ/xU/1B5XQR2YtBKp1Pcmp+BY1JudxgurO5rEC+F9MS
	 lgvRGuv9shi+mx94ifGVNB3F13cPpqYM1Ja++djdsCVq+X8RiXm7ApfsqDNdrM6eIT
	 MVFr7MqT7W8r8R1bqojT80uQ3wTJFHaXVCjD7EMldGoLoHPF+peEztysGpCyufvn3L
	 mmoFDbcwFsWHiWAABP3cuH7PvbMV7x7D3O/akRkq+R7XdLOeYc63+8f+f2nm7m+98c
	 gingrAXoPMivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E55C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288911368.28231.5863624360406850658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5c79465a8d642be4edbb7d5f667ec727cb22ae517b2273aca228d1ab37f4a9
Date: Wed, 01 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782889113
