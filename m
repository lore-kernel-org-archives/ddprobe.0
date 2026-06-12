Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AF41E9B3A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781238394; cv=none; b=BNfzMkqPYyudlV/Jg9TdLNIgaE6CJIGIo7iDeEh9MqxaIbaed9krxP24fYhyT2vww4XSiDq5HWvA0BWDWztjXX/HaFLqBRwbQmVPfF3XouACs3zksTvjNYWJ/rRp0ypP99vVJqlHAGOSK9akR8BHf9wmD2+JasjRnaIqvDuD8OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781238394; c=relaxed/simple;
	bh=uZVL/InMsm/vmal/hog6HcvdJNzs907a/f7zQUoISuM=;
	h=To:Subject:From:Message-Id:Date; b=CMZzgjyJfNcvX2XYhbW9q9jYs9+he25/bkTkeidOMmXL7KbyIDzZo7aAyPUlMySmJMeaRWt9JDGgNpqswEVFhshnlhGWXaoz+P/UN6afTN372mjxKmNS9EoiG5ZBeB65OYJeCv1gkqAV277XlTbOMv90mXiOMYxlJLFBa8PPWfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3BdSLWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3BdSLWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2FAC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781238393;
	bh=uZVL/InMsm/vmal/hog6HcvdJNzs907a/f7zQUoISuM=;
	h=To:Subject:From:Date:From;
	b=D3BdSLWcJzu69jMSLRdW5cDMjfpAmkNfpsfji2PjFC1b8VsjHIUVwVwBqgcVZPIok
	 XMqcR/bBhJy1ccMD5KfP0xvZYM+ok7/ML+q9volptIpjminhrsmMOdZVJMJdx+AAct
	 aOVI7cZsaRizubbSVC4/7QW7dArCnQC5MopZPvDHS676ubMA4LR1PB2/qkQYFb0N95
	 3eEB/se7F69SoWahQDgaOVkH7LggIEG/AnoP1l6qI48N0mq2s1nbSQWW12PlSswE+v
	 /z4pNxyNZfMXE/03JptGAgZeqEslE3EgVbCdUQYvgOr2+FTYrCK41nIcy5GUsF4E94
	 CfY6WAtbGfM5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA4ECD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123839370.14444.18196295859279960657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43fcad1d72be4e189f44f59fe16f107598571e07c3d194d3ea2ec0b9ba91200d
Date: Fri, 12 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781238393
