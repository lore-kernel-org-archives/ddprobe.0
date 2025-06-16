Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280E520F09A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750087794; cv=none; b=WyOtVFLcGVvxklrMHw9vJrqXWd8Qgll4EJZh4F2/mGNJp4DR2S8XFwuPq1j654/zduySBBaFPp5syOKmu8/EEIdwhzslXl/t6WPLirrnwzzSZfTR7HUY8t3yQeZ0t8co2jCKj/jhb3bmbapk331CNC0xO/5XVh2ZJpm5UHGBWBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750087794; c=relaxed/simple;
	bh=yR8bcUPcbu0GWjLz52rkty+KU0wP4k8yql8W2SpHzQY=;
	h=To:Subject:From:Message-Id:Date; b=gD5IzCu4dWhwJwxM6O+XUebxZM86JRcL06NezFtAzXyeCDyAYzmosGdoq2agA+J6nrYLZwPu3o+T0zLDgar76IbFkOE4kJmQVkXgNyS/10fQ0hxY56OJEWTVluqOFSgPlCb3zyzzFMfITNvEm2RfS+RIvJv9rXXYZNySaCnikaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnRgzZI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnRgzZI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D42C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750087793;
	bh=yR8bcUPcbu0GWjLz52rkty+KU0wP4k8yql8W2SpHzQY=;
	h=To:Subject:From:Date:From;
	b=GnRgzZI25qu4eqy3ES2aCiX3uPmWwVH0lq2GgGo1FH6s1EERt0C+agEw1KY7LKmh0
	 lHFdfYTSU1uHijjO6oQ1BumsC/yYRM0RdIZQwq1h/QM6kHCM6woxvbnvVWiEQWglf3
	 O2MBUB37RaULhiT4s0u3TS4WegmoCMdgOs/zwqlEaAfdpErefMDSGMi1+an199ODYC
	 ZUU9/e0O51HxrkON154CdxBoMwffGT4ZDrQKIVO84i6B0uEv9R9L2o95Z1ezXlKEMn
	 AsDz/w8+u1o2ahVNTJDDui16et4HF3Ykh8nJRQXZHa5yalQHU6/8bnc+1yLvjtKr4A
	 9x/Fl9piWjhUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93928C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008779359.5692.11099165796220951604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed470b9e3a6b5502d09970e636c6b5440976764725082cfdd18c783a85476968
Date: Mon, 16 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750087793
