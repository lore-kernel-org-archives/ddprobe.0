Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AF012C526
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715355143; cv=none; b=AWrWHo1yQil3XDfAt3ojiydbMd5sPfGrM3HFu6hugOnCrkdc73V16ItZFpEor8kWoymXUoTMd/TBIn7asOOD9uK+jyZNWR/3rbSGlDMwMU+LW9Ran7oA5+SM3r5LZ1+fV5KXfG6l2ILVN0/LyXy8Huh1io+xD8EDK5coEYEjHQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715355143; c=relaxed/simple;
	bh=jWWK2TjevvyHiiYUpBSq4cfIonhtlxjD9B0dRcihn5o=;
	h=To:Subject:From:Message-Id:Date; b=ON3urZZ5apPSFFMmdZ4bKUcLhDG7JONPEbYap5oxrLrrGV78rye6+bqrpnaf7SeoRS1Tz7Cd7eDQeO0cWisk+ridqFsN45FsAiV1r1mTQXmFpBsqU+cZXA7PNAx4jPoPS12f0CkS2ap4KsCrwRYC62zjyvxSGAoti8ZH53cTe3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmZnXEI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmZnXEI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E65FAC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715355142;
	bh=jWWK2TjevvyHiiYUpBSq4cfIonhtlxjD9B0dRcihn5o=;
	h=To:Subject:From:Date:From;
	b=ZmZnXEI/sNi20SsreJ5toWUPnwDSsAlXhcr6kPTcM0ecSafSTWaOqgW7X/U07Ca7U
	 x7Kk4+UOtbScefP8f+RQh+rptyRH9RBZdsl2JJOX7CmSsN3QeLmFtI8PdQVwGW3Ie1
	 weCkU4jOZnbcoJdZpvbFc39wd0iqTTjKwdYqEj6Zq2WaYXmor8weGHrGvhtgyjvJSz
	 QuuqMb5xXQLcY9jIgFYWolZybI7NZxnSXqFzYLi1YUWoeaRyhMwCuZgI5zgGUXeRbp
	 u/D6CbHp7ekl+xv1+Rl04RQ7whH6uiMKTdSxLDrZHockEiTsSoPOil0FzBQ/rWeW0U
	 QxZmBQPJCO5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5BDAC25B5F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535514283.14515.11983386498613214668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f4bbe123d6ae4a93b92acf9f76ad237ba2913ba95a2096359a845fdf5ebd40
Date: Fri, 10 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715355142
