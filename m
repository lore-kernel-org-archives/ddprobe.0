Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6B41591F1
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726506954; cv=none; b=mPieXOYsHAonCW+JiAlXDYVYqyDlcJmPiOBF/4kjuSycaKbGLCiJVmtcCziaw5pxtlq3qfT2o7Y/bxnYJBBQc9wvDVspXAgLm54HZ5vA6MAV9yRYOB424lNyXHpauyw3kbXOMpXV2WRqcqWTwRQp+izWc1tve3HL75D7PsRRVg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726506954; c=relaxed/simple;
	bh=w0D7JPf/+Nlqqhd+rUJgk5fatX44d3zYQd7bA74nxZg=;
	h=To:Subject:From:Message-Id:Date; b=BROypO9CjKskL1oL3d/NhDOh9bZL3XgSK+xkVYT8KtmOJpd73o8KRViDd1FhNr4p2lLV2oykT1Rt5WC93ddh1PLf0aTiBN0PjcjVWdfIt36tXx4EqKo6yKroVnwmCMsYVT3qrQtmWPQZUYB/1q+a5R5OIzc+6pExgxPPjydEB9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YL4m+Ikt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YL4m+Ikt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF99EC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726506953;
	bh=w0D7JPf/+Nlqqhd+rUJgk5fatX44d3zYQd7bA74nxZg=;
	h=To:Subject:From:Date:From;
	b=YL4m+IktTpVJi4oer/FOT4tjO7RbktigvtSIiDYxjDQBddgC3t/Ll6D1EoAb0baOC
	 CicSVrzONp4Vaj3s1S6CRzXGNks3hZfXYCiTLTIhPwgZ3AzqGvum0sSJlZE9urEDQV
	 VqhBNsXljTe89zjoP+E69obLpRL1SdPnkoWHf5yxFK+eRYKTdvD5ita9uh9CuQUJx+
	 i5pCgMjYQnfAqMxXvsLkbZU3qBBPMjEDe95/LAZpNurWkuR7ajyJiNnzvsppE1shy3
	 cpx4Pa0CXCHc41H2m6xn0iZzAtiloY130blWC4YidK9mUynrrmTqcXAP9ygwimceCY
	 DtIu+jH0gGVlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5DCC3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172650695361.22281.12694582485617973221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87cde3883d3349c1204efa6c22d5414093f4ba46495de53d07c1913353f3425
Date: Mon, 16 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726506953
