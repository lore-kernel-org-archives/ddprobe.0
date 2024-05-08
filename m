Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F01C171B0
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715142143; cv=none; b=RBJpg1/GLEP1Z+kse3HRc6xgWpV7i1cq/4IpyZ3sQKXUoLoJP31fvPzK99tUotlaM+mwI70I1zIszi3PCClVwJON8hhtVAbUmc5FSyoMFO08Pgx5LIXsFTAkRAna9+QyPqqJbJexBmGGKPx0Tn42ePwaTU1lmcG0tjTFJYtBLac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715142143; c=relaxed/simple;
	bh=xbrXcAF7IDG0TjWhKnQWYAfVSFN1Y4AeTX7nPywIfUU=;
	h=To:Subject:From:Message-Id:Date; b=iS7yimnS3U9x9F7CIFp76E0ZYn/RrjwIhYZLxpvyZBpe0b7QSx6Edx9mA6D5emnWMR0NFePOppeFzXc/67FAdPH7zffkvK+FvfQ5y5j2w2BQ75b1X2wU+GX4eC8Mmw/T4INEBgnfg5+UOk60aiJP55jDTVFvLyNk/4sxCzRZ8Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSHgcTq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSHgcTq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE166C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715142143;
	bh=xbrXcAF7IDG0TjWhKnQWYAfVSFN1Y4AeTX7nPywIfUU=;
	h=To:Subject:From:Date:From;
	b=dSHgcTq/KkLUK3jJIiyEDUVeUGr4BCG1BN92tzx/iO76NnvqucoYtygnomO8jHkOL
	 TD01sksJETs7Fve/1fBHxQ28iR1x53NBaTxQsoLy/DLzUiTycXyShfQyC8TegMHifL
	 RE6FVsvu1BUcK6eIjE8Bo3jcpYg6CnFOaxFJ8CmK3QhQ9Sc5vIKI/ESdbmRoiJs8ds
	 6hbVhfHBcP40sRRlRWemvCS98d/jxrMDrV6McuxN2pdApGzxJ7WVGlUrUo6/yJiRf+
	 viB/MHzrAvgheXXXDG+ytqt3o0SVYstYQHizLGKPPv367KEyedWtBZ4PTecVVVZ6pu
	 moZqdI1iV+4Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D548BC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171514214283.6630.11314367215582253791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500ee1389bbbe2b2a588fe7c6b3f36a30ea7c9bea42702d0d63180ac2a10789e
Date: Wed, 08 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715142142
