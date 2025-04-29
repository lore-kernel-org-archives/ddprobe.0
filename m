Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C852D323C
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745935795; cv=none; b=Hxb+K6Y57pEQmJ++Wurb5jbxKYP0v7dlgodPJ+NSi886qJ0/a9EnXShVRHSfBWCo5mlqy78D+BAkWNVUctNMAlz2Z6ZTgllF6iTUIHTNcYHwEsmJi/Gs8sLX7AI2gV44A3qpuRFZ+EvmnJ09ndQPiwkD0bS6v6Byevt2GgXaQsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745935795; c=relaxed/simple;
	bh=5eEqd+nddbXekAJnp8Z989c3ncjwXIcnKIx4tIs6peE=;
	h=To:Subject:From:Message-Id:Date; b=T0fixSfzylYiRDaOOrbUgIw6/KcDopzZQzWk3+AGl0tQhaWJVW8TQv7YcbSQeIYzSExUWpyzbtPqgJY14cYFr3PL4FYTbvsLSHm5//8nyekj0V1rkDPyBc8ssEU/bWUyYbj65TcDWBt8V+T9FU6UG7TnVk4f6zPl/idVqqMr5h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGEkTXhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGEkTXhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4285C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745935793;
	bh=5eEqd+nddbXekAJnp8Z989c3ncjwXIcnKIx4tIs6peE=;
	h=To:Subject:From:Date:From;
	b=CGEkTXhGk7Yy27n4fJ5ybTfUWTXAjyAv4yqbOdKuLD6ONKcKHSY0bHD+YpXrtr+BC
	 xYLmvmZD6okLvRrodLNV0Oinkt/p6Rp+OonekoQlsUGmPdUhDrBY4NnndaJYAxSSwX
	 /9EdFjry4J0/abfssb7xrCq1zvXWdNzPHZIyXSNnEA7jL1zW2xIuel9pybzi29eb9N
	 6+3P7ZVklrGrVpUZcPGM3eoAlILTVVre5nPhB9zdvDSF1CNur0G5eSTIbZ/LFWq62N
	 549KRGAwXl3nQL+HH3HfNerwxUJ0+vyajvaIq5AEkV36h4elMKrHrViOQCj6JNOIFY
	 DgknwdIwreMQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E2C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593579357.25844.16579396820290408969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1e9d92bfaf62090f74c7cc2160296d20cd5f1d0e76dca8e878803214ddb481
Date: Tue, 29 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745935793
