Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071E017B505
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772325894; cv=none; b=FcW+u7RrMBJCnCvenIrF44PlJcecs/KUeF6HzXknqgba5XB74HgB1FLGzEBBipXEnoY5/jWLfTeDEaPH/y+uQNijUW0GxjtvsVII4TPO5KS0TGiXQe14UFtDY9A3bSz8gufcG3IcCORQb8jzKyPox6nDaAWdOj3wblDewzMltKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772325894; c=relaxed/simple;
	bh=gJI3n91JZsY9lv/aehq6h14VdUkxL/iGKeQsdUrrvcQ=;
	h=To:Subject:From:Message-Id:Date; b=sURRpEg1l6KEeh2iDeBp/WTBnubJw4xYuJy6s1vx+Slbh5S3mZZrEJVSxtI7DHHvbAt2A4Xp/R4ZsGwsr2w+bf39jMRd2lms7J0HDbEfjQHW3vT5ZGD7GnOUzFJ5Xt9X184qMDkBlDLkIIDNq+Go+4/xh8epJ6lrAOVGPgCHBeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQbT51g1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQbT51g1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE640C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772325893;
	bh=gJI3n91JZsY9lv/aehq6h14VdUkxL/iGKeQsdUrrvcQ=;
	h=To:Subject:From:Date:From;
	b=cQbT51g1gXTGbApDCQ5NykFVMsKQxaSRpID+ELVodapaGNdA752AQ6xpkvebZBMha
	 DMi2tnw0aDl3v2rBZVCMdLX300f/Nla3CmeXJHf+hOY55LUGZp2FyL5/sMelwe9+FS
	 1rt135fIzetpa0weQAqsoGLMMCKZWxAh6uyTZElTrzZnSAIi+WJR8+/dAwxtB9E4YL
	 sn92QxP/mrIZ1YXQYBdzX02z6ukFVnhkBDixT7MbmcYPXQZQmGgXbiED8K+cn7h8pT
	 vNioNnQsGLMmShYKJ4yLCT2VsL8MiPWVk/1g7rRBAurXrXoAtzWjhyyY3HomaSqIT7
	 jxpAHb1hOr38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731AFD0045
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232589359.1350.7073176344767117962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d37563133c41cb5e2e7993892e2180f173628f88e2d421f6be7754f295d7fa
Date: Sun, 01 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772325893
