Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F016A56442
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709075297; cv=none; b=TGfweloxgLWAEBngdWFAi4dBpuhpTnvlzL/8HH76LyXyawr+jx8mEAMK0tvY902Z14msqBNRSkL6nbidB+XcCxV/8OSD1SOg8CLd0rplcNtvYlFA7t4Dk2sfGhiw7Rw94mRt5Vv5CIwG9YZvUaTLHq9TBAcj6c5LdLXb6YP0ZoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709075297; c=relaxed/simple;
	bh=pMQYgSd8/Yr0kFzaBJPmGN2Rqb02GqH2HHtBTufyxgQ=;
	h=To:Subject:From:Message-Id:Date; b=gS6G2iM94qGQoEElr+7M7SUVHKZQvCxJe9e5/8eKD1fChsX+7anDSlIdsnK9INkcx4fSOsr2tLrnp2ULeoQPCN/MNONNnd/+YeHupGMWgQODMNWlxNarZRGSgZOldtgOcrMqFBiz5cMzTUqjh+RjU6ebr4LQvoQx9ww09BNeFoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3uKj4dP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3uKj4dP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789BFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709075296;
	bh=pMQYgSd8/Yr0kFzaBJPmGN2Rqb02GqH2HHtBTufyxgQ=;
	h=To:Subject:From:Date:From;
	b=s3uKj4dPUmosro6LXT87Q3gYGgEvzK9QibFw/0f3IyN0s2q4rVDFgf76I2XOZbEny
	 sW2q8DQ2e7y1841ra6JvIlJyJx1bAoTdDWpq5bxtNXYX6JWFb2qJAZ47jhmJ7h9OMW
	 aqup2NtokwAerd94EA8PkF0/SMnr70Gfyi79PQUZ6Rt/RLJdv26hTJIu54oIuB+sBD
	 lF+H1SyZUFLX4UKKWh0Oh4oSOq/FktCs1tbBP+rYuGYiINSGeYPwl4m8XvH5njck8h
	 /0OWUMSESJ2KxYkecYi1eZZErP7rzm+8OaKnWLGmLt/ANCfYUle2oGNfpLTSjW+jVA
	 4HKpZsCWGCArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4F7C54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170907529637.7555.2462755657793538354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876fd586475564d46756d949405b394c48ea6464e447ba9de23528191de4d3e0
Date: Tue, 27 Feb 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709075296
