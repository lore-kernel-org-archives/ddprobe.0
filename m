Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52828181334
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735935954; cv=none; b=Kx4B77q8dq0eqlhlpERpsaMoPoTBDE75nSTet2yMYHk8dq1pO21qael74wpaV1x/tNkhrk0+y/KYJbUN7bxfIzPkpJKp+6UTyEADGgLVFpiHgtzzkedL4U+cwrahTkWnn5B+uGvo1sR7bpUMVpgIt4kAglA1WQ9u1wNy9CNTINU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735935954; c=relaxed/simple;
	bh=nJafuogM6og4lWbIJZz9wtqtjJW+EduSiA+gyNjtpFs=;
	h=To:Subject:From:Message-Id:Date; b=thl8dXtb7z0lfsgglbkBF+itLOl/cvePCsvQnALp7Ot123DChEKqyEyYlEAUHgsYPihj+G1QNHxjvSLKnz9ZfmJOiDeO2Abd//XgNZhHpH2vOHYcgDuJBztI33x5YwFR4t5sJzcoT0LXB79jX9WA1RjfQbCVGnaSWqrUueCg7yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gs1B00WC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gs1B00WC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F65C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735935953;
	bh=nJafuogM6og4lWbIJZz9wtqtjJW+EduSiA+gyNjtpFs=;
	h=To:Subject:From:Date:From;
	b=Gs1B00WCGZ+sQp2rac5NtpvLL4GGKV+oe0R8dvcOsSwqR5ymup7mApE+5As5Ujxyc
	 m5Qn/M86cjeZPyuPrvrBPgRNdtsGVRom9BxMBh9O+lYJrwVKf6yYqWkEbNsZ6xtVUr
	 ryUBnMXyYPb0cC3k5LEXASfC5kUyCjgAyLZCNd91FpF9qn1td+yOlHs58GWCqHO9Ap
	 0wuJd6SsjKpAStpSiV5h3LODqhZiawqz8a/dgI4p/yrguQqetNeobju5swSjZSdBxa
	 Ugqtt1BcgjaREy6jlUjk58nt8qKpDj/8EIlj0HNeJsaU4r8sDKHuQmcIU1hoVFQrHM
	 Q9P8M3WhPcqgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F3FE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593595369.23038.16317049491502480039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d35f136d8b21ba5f2b07dc130df9bfcc5ed3f526f36f6c734de1c6cfa3f4f29
Date: Fri, 03 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735935953
