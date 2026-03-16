Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F66222585
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773660894; cv=none; b=D+JG3q9JTrJcEYa8XkK048TDFD4h2TRqSWHnGhGz/PHAnq5r4ZJzjr75PQtlDJ3aDqGeAIZVrnu5+nq/Cfu8E/fOvCN9NMPP/NfWtfzRIVdP2m0D+hF4SnZKofSwnCDefeDYj//piNCeLB0MwEe9JQr4hoPOBatt6hSxXO6Xv6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773660894; c=relaxed/simple;
	bh=PPqRAqcFSlQtJwO9ZpTMgcdwtON3MT1Us314WuAbpIA=;
	h=To:Subject:From:Message-Id:Date; b=fpuWG7uDsRfFAtkvkqUxst7LDEXpb9XGMUCPclo+CNHgJ85cNXRA9AaSvNZyjJag4mTVC46jrzFJRYVpXWdocu5tbMHzqU133uA3haoacW23E0hgBZ1kxmeyVlj+EVCLELLq5s0EwNaXMTHp+qV7XRXUa9GtZE4YC2UrJWev5qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSakS4Dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSakS4Dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF0C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773660893;
	bh=PPqRAqcFSlQtJwO9ZpTMgcdwtON3MT1Us314WuAbpIA=;
	h=To:Subject:From:Date:From;
	b=RSakS4Dxi+0VBuWAv3Cl2DsOjikAddcPeFFOyuVDlEJ5UpCzUDCJ1cMoAV0a9MfnA
	 BLd+luiuXC1fsCmWziRhWwWToSQix+LzJW77WrDKEXOfAZ96ETGzfSwcIVsiqzVlJ5
	 J1sNTDYr4t3TuKQ3St7jGCQ+r0jVKC0xJln/d1E3oOqLTyXUuqzDl9iASwmqzW9Vd6
	 yeHSpzi67zQGsV1v+R51sj3Z1Cau2G52spDPyfmDogKl2tlW5FGC+zstsQxJypaUL6
	 qgV7CII2rYMFxDomRK6uP+uhOMRwQ6NjasdyO3wEyt8WJzO4M8LEr+qRplaMME2zhH
	 42PkU38N+zl4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59FF46453
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366089357.25501.2480486994720631069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7145a6bf6a90688f44d865ca34984186c4afb02370a5456434b879ebe7f231
Date: Mon, 16 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773660893
