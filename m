Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E7E221DB6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772151894; cv=none; b=pn8i+C9wVixL2qiSzXImSGCVpUvWbDhGdTmo6MLU1QO7oPA1qDeKsIMY6lUnSuVW9KHTe6vC7vTLZcdA9wOr4CgL8D1gkgAUfi87SEtwl9Cxy/01LKcmY/BVjvMqbF3vSkLnqrSkGhnXNIrZXo4oovgwuN9ciCrk9dKfVEuNcS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772151894; c=relaxed/simple;
	bh=rSErIWs3ZtESQNbc9teTzXD6YhZcqxZ3ZpQ1cUQFCdw=;
	h=To:Subject:From:Message-Id:Date; b=KCUswmOSogGyrzP1x0SjyQBkM5ZvcSz7NvidsRde1xQ1IXq0a5ru2HY4Q+AMVPBjtQvcNsH8Zo0vOzLR8Jr80aJj2mBvT0uF9bmEAnECHATSoPoXS2X7Nbls/TdDpkfNJtBJVtNKV1RvHlCMnoGOYkbgwLtPfYMC4GyGeN0x+lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvlYl24t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvlYl24t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BECC19425
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772151893;
	bh=rSErIWs3ZtESQNbc9teTzXD6YhZcqxZ3ZpQ1cUQFCdw=;
	h=To:Subject:From:Date:From;
	b=JvlYl24tQzQs2VopzXadlZYEbei/67lfjAHvm1N8HRIBAR6/S2NxKxXZsNO+ddqZy
	 WORXxmHSkt207eIUxGxkvHEvNSq1LEe5vKDVwthod6RTLjPElOmUTj1XfuruHLmwuj
	 Sa53vGk2gh+j2pnH4KV2chFtncroRpaKLBRG8MrHlsvGSFdT831b3c3HCeR3nELG7B
	 oANqdH31muf8YKfLHhZ0hQdo8M9XwwzE/Z1u4mn4+rxRKNl7F4JIG3up/DWwjtNo4h
	 iPa0zOQ908ll6mwTT0QVwl5Qq/YgS/0l6aHgc3/A+nUulnidhJUfnc6oSb45/A/hfj
	 XiWJgVFRMiOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254FFD9E26
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215189359.24373.8236773017932060576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0482d9b04c3260c3cf9974a8679ecf18185acdc554408f596e75b323bf1768bd
Date: Fri, 27 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772151893
