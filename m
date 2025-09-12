Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E95223316
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757706595; cv=none; b=PcC9DG7CZV1fpFZnYENbBj6VUZpvKKHuHu1BnHXdRvvRTl5A9EweqE87fslfzy7jL9cjtyj+/sUR8eeeApSzG5TxYk2LbN6U8LPcRvX/5BUGI621LWQ5hMEkCTLIzQBMNsJyCQ2MtEWZoz79ww7q5kiHGAjqqkI1IXp/yUm22Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757706595; c=relaxed/simple;
	bh=VJtDFLN4rd/0zQBsmJO4yrNqcec+KPbEeblWzhrI758=;
	h=To:Subject:From:Message-Id:Date; b=X7DlYr32eq4OitYJZ9+KYz2xyy+xxU9J5096dJnagcXJIuptbl5QNcrOPdAPinDUmEh3/dvclTz1YqSpp06mAcqrSAJHc0b7VoZb+0E3ppZ7qaJbQdcw74aoOt2zmj/CWenxYew5eZXjDNoatIhjXUvQY/nHpbv+pcvGDO0wQ3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH5LlgEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH5LlgEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6606C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757706593;
	bh=VJtDFLN4rd/0zQBsmJO4yrNqcec+KPbEeblWzhrI758=;
	h=To:Subject:From:Date:From;
	b=XH5LlgEdt5MGNVb8S4J06ZUMduHBOwjvS3UaZIqAI0tShY0jZiB/erJaHKHPwEIIn
	 B7zHpDUyOllyED7WQfm4Llt2k2nWwmMNNSoCYUoyjTg4r4pdk8s+SDs5hnXBC30Fz8
	 USYOjdnypiy49Z9UUy+K28w98j3Ij6YPLxUkx6bDbB53D+0Q2Jd/dmvp0Yu1Xot/86
	 NE/fpQVQi44WYgccRIXuMu3EVS+4nIy3iQtwJ/u9jmNU6JOPN13D53c8b1KwptV2WD
	 beYJ4STIh8FbnCXKQwvl8Z745OawaXv6MaQ9fKJRbMoZQBqrD3nivLqdAjR6uyTh5v
	 Y0CjC+KE3N4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92330CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770659357.15242.13386473088557196052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd050e99657d0188a961d28b6bac91debaadd2c9a97263fef6fbb4a80ee704b6
Date: Fri, 12 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757706593
