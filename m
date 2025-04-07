Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C1179CF
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744027194; cv=none; b=LPGkEMt6RExT2YqdDXWlw4sZ+cBU3gI6H10X1LXMJV2wrSzD55vwb0jgvMXJOr5s+VssQnIqjMb+O5KUwF34qwH6D+3M4C6NHHwmRFU6T+md4/BokrBMkh2nroIyK6FD6vjxI5ia7JSgb9BQT2ulYII+oW4k+Idj+yl0q3saJT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744027194; c=relaxed/simple;
	bh=41Qb3Br0dMF05NRrlfOa8mLkMlPoO58zj9U52mAhBbw=;
	h=To:Subject:From:Message-Id:Date; b=iPMdYrnTmAYAfmPdG776OAC/e/Qso+NKkpnjsnIM4XugQbNHZuIZoWVGEZO9qVC1eimsMJFsMLQ+JAq7sbHKnoNhydJ4cV5iSAtKYDsvbJqer2/RodXgVdzrLs3MrMumXmpxBhUDQixEYVbl13pxWq0HAHk7qo0UL1Oii1/LBOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izmp6AJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izmp6AJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC313C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744027193;
	bh=41Qb3Br0dMF05NRrlfOa8mLkMlPoO58zj9U52mAhBbw=;
	h=To:Subject:From:Date:From;
	b=izmp6AJTOPVx/ycK9J8aV6I0Tb0/xmyK2g/RTkLz2vBiWdQVlOM+8gZ8Occq2aSa+
	 2idgtz7sbzFTWy2tk7JAdPmwMwY9KQnJt2j8f1ZAlsdgDigvig6NLm2gnhXw7PZy8a
	 JkmnaV9+cEviOFOW5JadFEmq8IWYwWUrzQQFvf9X9zuWmOwgmhjBkfb1hPKoroTte0
	 LZBZhwugE6VDRAqFNI38/WT2Eo+200OGcfwi7FlJz8yRSBXj3J4sbM4aBfxLbHStkq
	 ur+xORAeM+8w8Vo5yyIx6x0GgAkmXQTGgkSuxTi9aZrYWvB+fPqf8+2QMYi4S7Hczm
	 tm0UfFMXNTF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99479C3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402719361.25999.17587799413946575587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9770d84c5195d8001febfaac7b391f561791528d3c852e1bc9655f90043ffdb8
Date: Mon, 07 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744027193
