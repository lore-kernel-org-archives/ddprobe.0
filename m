Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA17125B9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720836563; cv=none; b=QaYkTf4Ny3a7QyccORSqwWIstzZK+/g1M9o1osAt05u2zlSXYG8VSTa5coLdLGs9iPEefX/VPUPNZ3y/SdmHGXtCGbHWkOq3B4+HRKeUDZzVqnW7L7bHiAatg2JeIsFZr+n6Sq+8dl9oAJuiLLw90FiX4u3/Uvpt+Fl33p1GtC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720836563; c=relaxed/simple;
	bh=SKIXmpvzw7+0vX/dUatkbUmd6LwLxzc8iOwGzY1sEE0=;
	h=To:Subject:From:Message-Id:Date; b=FzbVW+ZHF1oLZyqYUlI79Fym/yHwOD1zsL5A1XbKh8FOvxn0hVDaTMjj5xs6TRLqH9FnMJ650TexJ429bBkf8Rq0fChc4ws75wNSRAZL5c/nltBBMx5uU2ZZt9n/tbvFvF+wmc++jdCrRelTtqy6DpjKmHxeOcCBo38O65G79bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3zue0eL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3zue0eL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC3EC32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720836562;
	bh=SKIXmpvzw7+0vX/dUatkbUmd6LwLxzc8iOwGzY1sEE0=;
	h=To:Subject:From:Date:From;
	b=I3zue0eLTp12rQn+MRrYN9ViynR1ozDVxkb2qp6p1LMtmswQUerREWVWsrtYaCQDG
	 AVH3ISwnXQPX0I3Q4F8OEDz4aiLHiM6nIjuUJfeKB4pz2sgxvcSf4Xv2C9QtT8UOs+
	 ovFCY2w/5Ch5PLjFjF9T7PbDC8BjJMoEr4OqhZp37DbYsbdbHI3ufzrHv/sdfrlJhk
	 kmo7CQVgs1guM7CMqqQiOO96xgxcvvM/7IUPX/rqGzeCgbvYDHVzfrwnCvFecAnr2m
	 gd2JXFWq4lGAf/XHBHoLo2ZMmTWDu5EpOofFdiCJKzaK9kKUvcazz6xEaDPWhwCGuX
	 iDRkhWlr0T6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF790C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083656276.25314.14699261261157445043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8388fd1cc0ebf83819520a709912cffbf47217c8f653bf20482f6dd603ea80c8
Date: Sat, 13 Jul 2024 02:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720836562
