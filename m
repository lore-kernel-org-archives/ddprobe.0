Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171BF368947
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772127894; cv=none; b=F4K1vBJ1TCwbDl8ZDJ/90O4Lppf28HMJhBI5jzGA3e2gHubn+t7WPQJLoHWRldaySrslvLvZmnPIAajXFdMiq3qkNWhiA8HULxMalOrBBvAqIp6R1+UVTtKprs2WSJny78Z3ZlbxkFS9aEXwEN71aoeMxES4uf1eQ8Ba+iNVPGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772127894; c=relaxed/simple;
	bh=sIkOUDZwhjJPVhUdWJE2ZxIBcGB+ZrhPIr00yb1HVMc=;
	h=To:Subject:From:Message-Id:Date; b=YfZR7+CwRT/jAtRVkQ0Y/WVh5Z4d2rpT2Wbi+XD7q2eTv0YyThjCYad9nOLE7jSl6JBTiww0t15koES+D0i/Z8QjsJekJWRd3OnR+o4PFJ/MXHqns8LOQWwmJN9kTgbZQecwkMKvVB6SpWFb86YbucjW5ypVC7R5sApemMVnNTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJGr90/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJGr90/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F5AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772127893;
	bh=sIkOUDZwhjJPVhUdWJE2ZxIBcGB+ZrhPIr00yb1HVMc=;
	h=To:Subject:From:Date:From;
	b=bJGr90/N96VN+cNO4fE6W988ZAyWgFC+P6u426bk2xGWTGtLf+4umtSxxHgeJSeuO
	 DW5UCSiHew35iDOTpRe801HRZnjr+0C9RA2TNOdYPAE1hRhkIyqJ0klAmESO54AJKI
	 OV+t64xlOkdMiR32oHuFJp6eIhqYa7VcnVdBIitVFECn8MVV63tR2x8BN8Aep8ANU1
	 cs22iOYw3J5PbIBnrrsIu1H9d9lBvAK9VTcL3K9bmRe5cBJkcEFbMgJdbPdTMb4eEX
	 W9h+oiOq7j4FYXeVoJcYANWLpt+snYfS4/7OL/PR3aFz5JTcvYxzT47uEPXl37G6A1
	 M2SYPJ1ZZkh0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918ACFD8FE7
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212789358.7758.17902991819574087351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ca1b863e2f0220fc830c4f331324d0ebf7a9fa6d30b270d460e0751f4c01f2
Date: Thu, 26 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772127893
