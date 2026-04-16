Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAFB169AD2
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776345454; cv=none; b=D/m1BJKk+fbkqc49MYsdJ2ZpUthf0RG0G3hPBygkPauDv3Zu61tbLhp4ZrA/4vRl0QQhEE2Mw/p1AI2pfubyR+QMnJ6DIYnz3Pibq+AArzcz7ZquRGaozUrTEWGQF5RFD255Gsw40mEmifcfHhtghakn5hJuzOfbWpG0/K6CZQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776345454; c=relaxed/simple;
	bh=MvOJTqoAgH3e6FVDsgvwprzVwwogCqX2NIst39APrig=;
	h=To:Subject:From:Message-Id:Date; b=FbRiDOjyHz6BKJIR3mBqOsekMaCInd/KK8TW2RItkdVHhRao39yXanZ5aR2WBwIxGKPIJWcDaelX9Yy9Cy7GTiN7tkaJU6a1coZ+VGcdOr7LhHfWh2QZFcI4LXmdf/UB4cFfAKAQhC1htfBFfauBF5iMu9vtPdWQyY5EQa/xo7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9lyVo5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9lyVo5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78C4C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776345453;
	bh=MvOJTqoAgH3e6FVDsgvwprzVwwogCqX2NIst39APrig=;
	h=To:Subject:From:Date:From;
	b=F9lyVo5X3Dl8xLuR/dGFvfTukelTIlRCUWeEueDtQhyIixSOWQF91Hi14dXC3qY0a
	 hQGIwpyT2QQRzYOwTLiU+VvbW2QG6jpU3gkE/lMi1T9XfHN3Jh2hDyYqi7StrjjFXb
	 P81U5iNoJxghLkpuPkorm5L9Us87Hjw12qarkXNx5bJZ6P8tTx8yUb2a9Y77MiRT10
	 9ULL1Cq+yZybgBL+Ky01xO9KArtDxHNV94a1v2fIGhmZKJ9ynGio3kmry5iJXdd69G
	 O91xn6LJjbkX/ROnF9GQwRKc+lmn1t+I6WlPxWJ2VIHYrJEluWly/lCUtKyJR3zIvR
	 mDSZawiqaeHqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9980F8A173
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634545368.18941.11191126573050642240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f06c6b9749aec1b1623a73f926c5bb5efef518df6fc485904caa6514d6acbe
Date: Thu, 16 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776345453
