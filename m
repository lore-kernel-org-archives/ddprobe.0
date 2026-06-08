Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7853CA487
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780929874; cv=none; b=UYgQtdhCCHTnsjYbhgw1MF9E8LlNVTDapCeYthkqh6Uz6sIg+GXdrjSl4TJqIlqeumwkHZGRnZ2Xm7v3Gjom37PXnjCznOlFob3z7gHtOTiujo91baOkfzlhVnAV59lgk1keeeSGuppCW3WdFw9hINSQLLglGACnWBB1+0E8jck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780929874; c=relaxed/simple;
	bh=otTuGHGLfLYNfGT6nkRMG1L4cFQMsJXZgQbgdeW1DTM=;
	h=To:Subject:From:Message-Id:Date; b=DtcKcjTW9vYeGLyPbRkUmHYi5hRSlwyUv4e2k/rKg9wOxmYlSUL6KpvZ4nXXiMlMxvB/2yGLj8jTTzAqCmIRSxvm2y2FaE808GWy5O1UKbPwStWNPj/yGSj2utBFNgXgTqH9x2wnRACAVOQXnzdyNpIz/zpXYq9hD5KEWA9folY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAXzMZOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAXzMZOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59C8C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780929873;
	bh=otTuGHGLfLYNfGT6nkRMG1L4cFQMsJXZgQbgdeW1DTM=;
	h=To:Subject:From:Date:From;
	b=vAXzMZOOqSbPdQlqHq5jjrerml3WbEKWmSnD1L2+FakQF6sEh/Iz6awGe4VEWVTim
	 HruuJ72oKURrExoalJimivfMUrHxubAr8+c3vKOqsTPhuk15hVNoCG11tcdwkV6Njk
	 k0WtYyrlvx+bUVU0cUFFgny49sKC+mJ2oa/vlCScEXqcXnl4tIYnxJpHxvN6FH3wWu
	 pxaep2J7ro18Wk7TT3dcQxNbQXd+zVmqzTthLbUHRfJ5RdlrOtProR1oTVHbKi0eTw
	 3cdQ5abQe2QJIUbl8l9PuPq5jaOwieQNZP4qa0U65tnip3XyEHIoUVBgqLwVRr4ChU
	 qLCvstu8JLSmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC895CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092987369.19193.8109007120626159253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77776ba7cfbe001e99763c08e447d57a8c96f44891e565aed4c0ccca3c078745
Date: Mon, 08 Jun 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780929873
