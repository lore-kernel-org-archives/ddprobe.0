Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A9B378D92
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781673394; cv=none; b=oWDtrvN3DZGEZ1e4oZrvd4rivGZ5nTdM5QGNYhQIrYZKr29x0ICq1x+Jtxbb5jLEeEpcrqImQglh7vdNcc7is9wx6atFeM0uF0B4SlxGDf1XExqNf6qbj1jAdmIfFyaRYBtLCBp90wsMj5UsIw3ztQLF8NpS+1/uC7CW5FBEAy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781673394; c=relaxed/simple;
	bh=r36fYzuD/jDxjJRG6TSDwhRqrTUjZLorQIazSXPOf4o=;
	h=To:Subject:From:Message-Id:Date; b=YpR/dPbi+Z+ROnDO0QDCe5wfC8HxYU7goXZW9eAI39B2WfhNii812NoqbkHcBOrlDTyrY3hZg5EsOFJlJwQeQAJ2RPBhyy66NIJGdubfs9EDLxYVYn+JCPuqK0nNyMJiIcHbuyEhOz78RErKdEYVhs1Dh8bua3pf8x6cKM7f5NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VG/wBnUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VG/wBnUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4FD4AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781673394;
	bh=r36fYzuD/jDxjJRG6TSDwhRqrTUjZLorQIazSXPOf4o=;
	h=To:Subject:From:Date:From;
	b=VG/wBnUpwcuG1xdzP/Dq5TllE/VMRt5rB6g28f/VcKHRd532XqR6p0RMG/JWkT/3t
	 6vO4F/q3sgk54sM1Jv0lH0vS2CgodyRlWwqhQzDqVAw25Na7XNedyMB/EMxSTQwLZC
	 307iyMiVqMeqjHiFgbRG1SYqPQ2WKrRo0NW3l9m07OvlJrvRGDK31i5R8nEuthZRbA
	 rK82SHAil0828C7juiniCJqMSZE1XM4jwMlp3HsMvQzohdjBOHZC1Sv3WYMHv7gmOI
	 g4laBjuyzkjiiUqTyq7XbKUQH86WUI3ih1WtsX2IllQqV7lh2XHofUhh1DbznDBeyS
	 0YPQ8bkPFaNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 085C9CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167339394.20796.8159486376231022637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883a2b0e43543bd8fb46fd3351c7d46f0815fa33476a9c93adef8d4d8d3482a5
Date: Wed, 17 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781673393
