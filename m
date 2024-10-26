Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A2129D05
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729934154; cv=none; b=JoBPK6a77fsJ38Ol9bchhLuS1xadnwEBNV6ylsyryLUB08DvNCfO+PlS453vr8nEghtelSJBLziQJuZnJYJV4+rqvx4y87NeLRnHOZ9CxJsBMs4F+8dFXBVwU2/b8RMHnU83s2RlMmzceeWtR24Vlp3jXyKvP5WRKqmatk9RjgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729934154; c=relaxed/simple;
	bh=bmnILziqm4tBU6eSZzm5xUyxRxA7ExOoe2CCSjvaKDg=;
	h=To:Subject:From:Message-Id:Date; b=jjOXSokyyZjzH+pQPxkLqWQlcgDMn4wwnrqhM2tizDDTQZS9zxdqRv4M4mAGczIsEaBFmQ3NDAtXRseRmtBgUoWD+RhzTD4iQpgFty9IbhWrPA8c0zpLPz9IhkGmix1RxsavxlxL8T/5+PYxwRyJPWUMAwJEgpKV+LSTNJiUphg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTdmr71b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTdmr71b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B77C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729934153;
	bh=bmnILziqm4tBU6eSZzm5xUyxRxA7ExOoe2CCSjvaKDg=;
	h=To:Subject:From:Date:From;
	b=lTdmr71bj6mZcW7ai//vg+6An6kuyqRB01h60w0nJM23OXEprDWe1q3MTBeXMh4zA
	 652sWN6ny6uvZt68tDeYdB9e1BHvRoDxTM+MAtt3L1ApVEtJweWkLhIP95Sj/ey2rg
	 6t04eqqh3B0rfEZQ8YgV6r+4jUZ07IWCzSCj0i68i8HxQi3JJ3vKasZ2pE9mL9RkNI
	 dqFjLmmKbu1NDaEYaB//rb2wFaiTUd00q+EG1aygOHrqR1u19e+AIpT2QMbTK4OZxJ
	 S5apO7ENTqs9Gv/0pBysNmSZnZKm0oU4qjbb2KhDtr28Eo0pHSsYCnx7ow1pje1Uzo
	 FDGcVHpneG9qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962CDD10BE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172993415360.4662.8249025379818952140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2300033d47116f94cc1de97dbafaad2f16d96ac84e366ab4be54104f90daf441
Date: Sat, 26 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729934153
