Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3378E23C4F0
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746007795; cv=none; b=OW/c2fFI0CrFGHvgYimx6InSchxnGuCT2rVdn155u3tb6aPj5v9r59UE3R4mPGRIVjNNFqg2j1FNH7V7p09LonZk8mMsT3fcCUaGgwVDTUfAkYo0Iho1O7iIjlxEUQ541DRnoOXZzoiCK1MpMpSspSxBHoPPizo7/yyv2VRAhaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746007795; c=relaxed/simple;
	bh=nzpIMIGCRyvadWtv6nYFa1OcWuoYY1KLzJXl2f6QobU=;
	h=To:Subject:From:Message-Id:Date; b=kpQSr6XHZHLihP2D+AIgbGSDyEBr53MP7d5q3TE6YX8BHbxxTprqxpMQptDMfosMWeWpSjWNyJCmRIODpliwOkLwDWq7fwrQAwxyMvftmgWyvfnqdpzjYp6qQXV99798v1iztJrdQuMlBDvpjoI1IudNVwACYdyJ6JHoBJ9vkdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mR+nmZv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mR+nmZv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC538C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746007793;
	bh=nzpIMIGCRyvadWtv6nYFa1OcWuoYY1KLzJXl2f6QobU=;
	h=To:Subject:From:Date:From;
	b=mR+nmZv2SLSfvh3V+woMrAwSvTCmDKnIMGhBjZd1DHvcHk1HEK6kB6IYJqb8gzE+b
	 V5nbJUgzOubHLCK6xUIJw3xXrXo8Q2ofGoQRueXcpuXZAj/UbY2VSr6n8amx5YtTIr
	 tt4YrsqJ8rTjMbfkLp3Oich+j+WJhHX3Mfq4VfFwuQ7HU5pWR0SnKfBFgu2P4O5je0
	 zRqMmmEyVgerMhB0JjX9x2Q0Tb3t3+jmWgT13dvXEtpggT/3M6Jy7JK9OYmdvvt4YD
	 gf0474pOaRHm1pzDlhwsX+cqtRAhLvjhFLFj7QvFms+5+aZGBIveNaqhPvluCyDUDr
	 q6anN+fbfLXIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3F5C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600779364.8143.3873061086070480304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1632cafc679596ae30fa4ddc9babe10555bfda9cb888546896bf34a2a65b6536
Date: Wed, 30 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746007793
