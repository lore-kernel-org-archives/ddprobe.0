Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B91C21373
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715202743; cv=none; b=rgWftwjlV3lYCCjcYUBROYhdEQqi38GE/7wdE5SmwigcwKH5QYncMr9vnyOAVbfKdSFpka7TorKJjEdi3+PwbmFW4WBjHFk2O0Vmw68eEHYOibXoMC0nSPEd/sjQXnw164ohR75O0yHkSY4RPtJQsec7zha/Ro0Ht831nPRTKII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715202743; c=relaxed/simple;
	bh=VL4WvMZFASUXJdTu/YrOWFeM7cfjUA7Su276/+VhnCw=;
	h=To:Subject:From:Message-Id:Date; b=BGIBs5qfxy1WgPm11Gshi5AlHy71IHXvp9cMY/AkIvd7Nu2L/o3KI8rLtS6L7Iw2Pj6X8qjHcqk3V97fBKkUkenC4x3Fltu1Wy2fqd/Z1UBIFksWPMxmx0ik+j4Mdi3RtH92MP5ou5j0RFh1yLQH7aEQREnNzMdGb/OSC78z/RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZSH4Jvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZSH4Jvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD50BC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715202742;
	bh=VL4WvMZFASUXJdTu/YrOWFeM7cfjUA7Su276/+VhnCw=;
	h=To:Subject:From:Date:From;
	b=OZSH4JvwIiWjWS77zpF8vXrsl+SCIhPau75qLXOEa/qnbamMbMGcKVLyxZJi0E9Ia
	 qvI4j1/R7SplE+AMCc3JwG/QDBs5M6ZHXBXqV3qvqGoIxORBEzGYQIgrwcAziJVrJi
	 db2IqE15+5WB13p63UMtSg6k5nDNTlLiRo2Cwp5LimXWDcbPabCMdN0VjWrc/e0Q3I
	 HwtYWwh+ug4AXlnFZEDxJ4ec+mY/jDE7JBwGd2RdqS4txKzSYdu7Kq4ZEvNrkwVDgr
	 FNsTKJajas41zAhirsZw20ML4NTd6D86Rpvaq9nSRdM/Y/Ns/eMPYxaNqr6SzMhs1q
	 wQMEGkmH9QQ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5EAC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520274279.22321.7028727634424743126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934a489856df2465e4d8339f652d9c54213c894364c825d1726f7da4f2089202
Date: Wed, 08 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715202742
