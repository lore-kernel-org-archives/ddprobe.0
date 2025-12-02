Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262FF285CB3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764717774; cv=none; b=ouT7eIzCXVFbALYp7Ys0dNrIvLSbltma0HbzlAMFfkTU+11gQnuWVv3Vat5IE+y1IFRf8+uSIT6mjJZnh1TalZGRH7wNplKt6YxlMKHnW+z8OsuvHFYkARiHegEQRgiYfZJ/Fy2KxADh1WHwOqvHIxaPrIPuihbMbqltBCkqiY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764717774; c=relaxed/simple;
	bh=wRz0pjLE1SM0KN7M6NbYUkpMNEw0mneHuPmRC617nWE=;
	h=To:Subject:From:Message-Id:Date; b=Gau6mXVaxYpNcdp5zJIGQMBo5KQIbKk7wZ9x92KiKZEMXH3cfWWPlBpvZnDFGbcLNA415dppf3yW8JpggQrO3G9wFf/2Kk7pQgGcpuiyk2e/Vrl2gpgjyycuBdGgeZ44z27n76ju/D7fmd1J42nwhZWIydonrLfPLvC039yuKDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TW4N0ucS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TW4N0ucS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1957C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764717773;
	bh=wRz0pjLE1SM0KN7M6NbYUkpMNEw0mneHuPmRC617nWE=;
	h=To:Subject:From:Date:From;
	b=TW4N0ucSwmtW7gRz9xckcedcxT5wfwgExTtjchqqCBG3/KXwOzeEmNqloQea8gqb+
	 9zskxF5X7sUwSDmCoTE6fK6A7jLQhWv8fjrXNrP8MjlFCdkWWGMtBtAXzqPCHxFG1j
	 YLYoJ5SEQOZRbqehjm1ROJCBR3Y3YpIodch8znzx5OJsWDW7bWg7tjea96L8ij54Z7
	 FqlTYImyIFdAI2bTSrOM96MnoaP0kWjozmKrbV/82NXEzlb+JkpxJBi2Cs7acSmzmO
	 czrJGH5GcA5BFPOG1EJoG58HfqzJeV313DxXBEfsYD/tBg4g0pyFumFfraRRRLjzjT
	 Ox+Klc8wv0MuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0E6D1267F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471777360.20822.15976276320025191330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1f9817260d9a22f2e37bd63de1ab277a33075cd55380c8cddaeeebdac809bb
Date: Tue, 02 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764717773
