Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E964A355F2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773648894; cv=none; b=rFikEHrQWTd7leBbqnamz1f56wMtFlpSts/QX+Fo+z6VdOC5xyqSNesc4jfGurAUApgSs3nT+a7sgrP6c9RM+fvKKmGbirdROB3FOrbV9gdQIfXM5Z9v4tAqdYSTS84J1OGrmyRK8epoK3Un12DG8KyPlJIgCxwrv8RGThveSXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773648894; c=relaxed/simple;
	bh=YXSNfVavpQI6PslY6g/he/4j3FSxY1p16o5U1b2YcSM=;
	h=To:Subject:From:Message-Id:Date; b=ArBuEl0+GwQ3RHiq1syKKLo7UrrADaIg4z3SeNCJlhrj7LrKhRBvc/T0dPG64neNP0y1gQKsW6oZN/6kbMpgU2ytoXtt5kly7Ssn/nfWTG1qvnPCiilIyZeQ6i7uO5p9q7O7OieI5vhDqYsHB65dqT9EiNIxpSq3U4P/RnkHga0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVUgjAS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVUgjAS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2B6C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773648893;
	bh=YXSNfVavpQI6PslY6g/he/4j3FSxY1p16o5U1b2YcSM=;
	h=To:Subject:From:Date:From;
	b=gVUgjAS7ExC8IePPw5uaOFjCjOjKDqj5hUsEffUD8jcbr24L4Iz8i3YUCFKkzaIdB
	 fPLmfFTL5BKi9nY0/teHzEdMD523dCPVCmzockeAzszC8j1436AgA6Inbr++P+Kapw
	 zQFGB4XCXzyd77uYfMmYbIjKYpF0vsbgFGh2C9rBzGJV9sJ9SXMTJ5daO6Lj+0tmXw
	 LIvdHLsAKX6VpL1Inyumsff4idBrWYD3OiAeQ7I0azCgFBsOymotkbljQVvAAhm3hh
	 J7BdAv6I4YxXMJPehcMXo5dARoLtcSikSwflerq2DKxflOJ8N3PrCZKFBDxkvkN9BX
	 fKpW3g6f3sDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF35EFCBD4
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364889357.11960.5581852831784939656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9f10e8de4b32f209a53c2b3244bfe63e4c61831e930640f1ecf90c46e783c4
Date: Mon, 16 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773648893
