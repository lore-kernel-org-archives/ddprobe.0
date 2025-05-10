Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2BC2563
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746880794; cv=none; b=aZGGxu84ljsdnzie2XE3o1VL6af291ZpR2vuKkHj7xeXlsPylSh3Tu16/XKq5WTAZMFSXESrA4+Lv3yeMgNb7ePMozIgE8Ov/O04vmH0lACThwdRVBllbJs8lC6hhHUFjEBHQMDzRGb5r/7aL0xUvp1CcJek8G6y5T0AaTj0Gt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746880794; c=relaxed/simple;
	bh=Hktfgij32Z6yW4vriiT03MqKhFlr9rOYP7+tWAumaHU=;
	h=To:Subject:From:Message-Id:Date; b=BDFBxMLk9KgCgOJ7dewmZeo6D9KCfauBlYYhdDMwj5MHQmHKA+iRon4G2mo8kRnvu/mMYHmDmYUa78wD3MTemBDKfcRqjeqNAWbFlfuXloe541ZmrrncaJ3jsc3GVsyc0mm76SJJVaaByJ+Z2jHPvQ6SJptACAs948nWTg1HzME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1yj0aCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1yj0aCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A892FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746880793;
	bh=Hktfgij32Z6yW4vriiT03MqKhFlr9rOYP7+tWAumaHU=;
	h=To:Subject:From:Date:From;
	b=Q1yj0aCPqLL3l1DrOAJvB2v9C5ovihTPJBKt+pn/SzscbMwHtmFpVzfhvHYAQeUrm
	 CFCO3qPQqEEeNo7PapHwOpO5T/tkR1h6FebmCKJhgbAwd7Z1NyO7cVvQiIzZljZ20L
	 NSfyYNcDXZPno9uXqKaYmBhZENomHJj6Z5zFk8oKhaPwAKlSWcyb93V6aPZeBWrPnK
	 +pNvRJkNLlbJXSDSLoB+IE1SlHd1PbboUksFjaJbkm7Z/5YwHYX5VAfRs8OVfYhlPs
	 COlvRJYtCctLnvqgUZ61xUymNIAFUFCJaUAcC5vr1Ud1EOpdQVUVA5bJRG9i+m9lGe
	 7zij1nnEoiiRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B9DC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688079358.22424.14302261962822348029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96712613345e46082fc0d6c6dc0e84ed684ebb898136fb5331dae27b42480783
Date: Sat, 10 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746880793
