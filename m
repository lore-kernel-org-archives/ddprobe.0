Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7663597E
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748672994; cv=none; b=GlP+fOJrYUJWdHh2HeT/CQ3WqUNGGdF7rgXWI3UaD/+F+4JoW9Q/w+6lcqi3k7XMb5WM0Qhtj3dwC1tG6b7C8jZ0T7iA9Nd3ZOOvBKrkTU9R1OJODTJhnChGNzahpYhsk7VCcV06CQem9CwGhsRwJIsGvV2Nj5Fgmil5MTLzeiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748672994; c=relaxed/simple;
	bh=vdZIq/HXxzxUEszSB4//zTLilcvVPBtqXRlztkc3Yyw=;
	h=To:Subject:From:Message-Id:Date; b=c0YkRGe2gPgQ87ZOPQephslUZF//os8aTvGuWFRMpB/OJ3Xnsheg0PFNmfROAUCNmvxDgvCMvVZGr3R+M4Yu9/Sbk2FZxrVPGnRMXQS2euW/8BNkMx2LmZ6pCDpKx3UpFieUgeaU/e0e5vSdPdEOOiW8Sug6MAp1KyY4VcWZbxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7NbT2mN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7NbT2mN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D8DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748672993;
	bh=vdZIq/HXxzxUEszSB4//zTLilcvVPBtqXRlztkc3Yyw=;
	h=To:Subject:From:Date:From;
	b=J7NbT2mNrkCIWg/dnmm5Q2nuioow2rIQtkJYYXjnwZpF4iXEZWUlQeGreTGXcW7BW
	 XmSuKQeeiVt55qcJh8PKfO5I6SOUNJ2ZRacEcYDSc4BNBWH3As5MexmtE8ZxpkAdDG
	 0KH2AxctqRe7hEQkIhPzgj6f+r7JrgVbIBW1Sa718v9uJSPecmn0H5O1I3T8rsjzMa
	 YfiJQr8CxKdkxJsyEH6uEqrsSDTQwK6y5sgAzzoIQTQOPwxWwiFibcYTYxa6YEnxIg
	 R+vOiyajqPTtZAJohS/pp63O8e30GNl64ZXPETfgfarD+5p7Kbt00drBA6MRXMGukk
	 5fIi8L4AknkqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91091C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867299357.20405.9866911628940177261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85340936b139b95444641721cdac490f95e5b1ef2843a45981cdb837a332c0c
Date: Sat, 31 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748672993
