Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9E81E492D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766397234; cv=none; b=GOTUexgyIyANY/CLmZIUMHeLCvoSB3WOd7Q1kYSFcLd1RtB/hnZST5Ye3maNWIZP8uxHls44izV7dqlVEMzYN/Nk7Bd62z2lTjlZx3L6f5mA5tuiRddze9SNNHOUNniNhWx8q9b7C1caOL1Q4QcHoBUqCmP0bvQHJ+KXDN3kJsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766397234; c=relaxed/simple;
	bh=CJCKBcBhBSC92RCjeM0oPOP+UaFwfN2J2dM5ZOYu3kI=;
	h=To:Subject:From:Message-Id:Date; b=Ilus9bXEb0r584nMffUBhq1vQRuk/iFm1JZUt/7CkVRMvhs0L7vNh5yP1UprCARS3/7/1/EslOg+oEiyKWVr1cBmsg/JmRUWE+KV97OHsEDruOwgepR1of5kzCLBKahJjynOnIETOcJl/neKAy+/0YNJtXOVYpoYn8vWMGUN1bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nd6XpIqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nd6XpIqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA37C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766397233;
	bh=CJCKBcBhBSC92RCjeM0oPOP+UaFwfN2J2dM5ZOYu3kI=;
	h=To:Subject:From:Date:From;
	b=nd6XpIqDEVDLG19/Q1PtS46WAwyf0Mry4+XLY1g1aA/UqHvEuouCLTMCVULZUEy6+
	 18haZaeYkn9BTTtr9oJR8v/4wzL22TkH68+jZ0rrAfawhFeJxyOn8Tev12/+hx1+DP
	 YLof3VGGePHi+qdslk/hdUYDrIEo80P1BWEgD9E1mt3LG3WmgwDftjt2SN9+6GMhIG
	 PiezG5QXpjQD+ZAPf02GE9V2WXB/Mj9dIx1x/mxde4XzBJHFFb9zuD2qy9hBwuHvmT
	 1Eog41PHh6kieU0Zwct8J/y7LoVdmnBVkhQx1wQbHt8CNwsBlBhDwNMvW3Mp7fvf3E
	 aCDMB2h0FRW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F896E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639723357.23406.16263024757686878678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9378cd3e8755b7b656df15fe45910ad3994f465013d9806449df82dfa735b1
Date: Mon, 22 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766397233
