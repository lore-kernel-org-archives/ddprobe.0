Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171E934F490
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769865234; cv=none; b=Z6retuVUhdAmWResc+qhvQf9z9fL5wT9e6bTWER2PFTwD8xdMLsqrsElASDiOJweWG+NctKw00GjdROfosSCmPC7O7tM6mJFnWPPRGeMVeMeYVccdRbRS9EA3GK6HBiGTuSu7YWcF0QnzjYzGeh42mVXb+DcAV2JGWOVjLl3VIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769865234; c=relaxed/simple;
	bh=sUPn5pvnV1M+ojKIicAsCszfO2hFMpCnu2RR0HJ/1Fw=;
	h=To:Subject:From:Message-Id:Date; b=j/IaY5or+99I0vfF2toKKT0iYtyESz4gkk2P4omPmHMuO6yLis9Gdzhf5LFhZlmX9o3lg2VCOVjgZWlc03UQvnB+ey93FF+5YF5dXcUutMyNpOBijrE1q3PdwGSYGSUDQ4M0kqjkUzSpw5SLWifUGjI9ofAzhQHN6oQ6ofh7+Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlBPOH+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlBPOH+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D37C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769865233;
	bh=sUPn5pvnV1M+ojKIicAsCszfO2hFMpCnu2RR0HJ/1Fw=;
	h=To:Subject:From:Date:From;
	b=qlBPOH+3yB498RfJNC6ewOkbXUVWhtz2BIUxlJhaN931U2y2ZdGbGuUw6PqD8drHi
	 XkcpwzLtBKX4LyOAVt4gmM25GEvZq/a4uYcR8tX7TUTDfDsU7WyeDMOR0qmuFINj4Z
	 YtfPmfZjdAjNntj2yspmYgy0EXCCCJUiYmpxqPq7cxkS24gzIVgDcnBXtE6F46IKCo
	 G1ZL+6d7VBWOMVzDQUhoY2N65BYxswNuy5NSi41lWgqf8ZB3a1GBPfKgUA87gSzW3x
	 QY3lavAdrnhcQx4NmVvRkaEwYsxSX6UulaWMUrdAL56yId20KEo8ttDxw0+JrgHcp3
	 WQMkhypT4VBxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517DD79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986523357.16162.543945680436391710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40a75daf72b094ad22aaf56c5dcb10616606f04041ffaea85a104802ed3d0a3
Date: Sat, 31 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769865233
