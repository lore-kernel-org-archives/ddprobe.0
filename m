Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B96A1E5213
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762036194; cv=none; b=Imuyjp5YkANb8SsC/lyZcvtq1OHbkr50b1fbBlS/Sv9C+4pyoOS6OjT299qMQ9KqdJf0TnhU+XZFRDFuxgmfxCAprbmHI/cOMWHhwCx6fPMNbnybPq9qBllpGmrp7qtx18WBkjiPDILYFGOD/OKaJ3gfjNE8OyMBs2WyqNvzBTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762036194; c=relaxed/simple;
	bh=RqBrBk6n4Ub4ogFkwXO7IqK/LQ1hWfKvHSCz3yDlM0Y=;
	h=To:Subject:From:Message-Id:Date; b=p0Cx9cVE/G0F77uRmdG0NjCi5RhzIKcAff9/PpraXZLa3aLDiYwB/2s61mTtREUEzCv+r/qKQNlW8eISu93uPABMfwh6hLzp6HB2LpC0ryJhaQIIBtONHdMBKQpMQKPRcmPLn8xlufAMvDSTg5Q+rNHLAkQDGiqNshgTHiKXQXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU0RwOvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU0RwOvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A929DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762036193;
	bh=RqBrBk6n4Ub4ogFkwXO7IqK/LQ1hWfKvHSCz3yDlM0Y=;
	h=To:Subject:From:Date:From;
	b=ZU0RwOvlLe1mx9qt/AW2h6Ahxepj57rHwJIHzqdBMdyLFJ8HVq/9SAvznJAGuoj2W
	 9tTGJdzom6y+eajUszKlEWIB5RtLx2F/Zo1IS1IVJLu6qAqjaPE+lM7aZFP6VG8DKY
	 vwnN/neSZebV4NrWuGaYFfB+U2e3p7G0dutTAQLOw9qJxKOb4Fn94MgWzu+dqD/D6F
	 sXOhJwJ5IXy2yjBpCeQDC1ELr/vC/jZkrWyNGaJ/wRIGr1O0Q/0Aake1l6nX56ptOA
	 msBw+Ts3ac7gYNrzhiHaOiv3ztzOu8zcuQjTuEfY6NcYjxLk41s6PA5dFkoQmLf/su
	 n3FwjueVC8BQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB4CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203619358.8025.9982451053787960062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04c9ed97dc1d83d77f37127132d9e51b59e9a414f77d2c95e7a1b1d392afb53
Date: Sat, 01 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762036193
