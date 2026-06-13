Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E04280CC1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781325394; cv=none; b=LDowsY4RBcfw6AHxQ/L2ZfO6t2Wq2WEiKKMXkKlp8+MWfo2NZ1ris61zOKEgTkZriEQZ/HiDQJGLgt7vC6t2duQYn2r9Pf4GguBnAwcTZApYeywBSGhtpZimtty/qQmX6QcyvMRFX1IglsjHpqxzpb2dp2hI0Zzth3S/JFV0Ryk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781325394; c=relaxed/simple;
	bh=xEDp+HcXRzIgxHq4L3cf4xitpaU0nAwUqzniNbcWEQs=;
	h=To:Subject:From:Message-Id:Date; b=Q0SuuqqYkcXvuRhbRnG9BaGgwEaoC5uXs3NadwT7ro2yrHrfEJ6V6ivwKhli/zhhgCChwmrJU9AVDDkO0SmbsIxn4eKzUgFo61wthw+FOuUfst53ulyrxX7m3U8xEJ0lsRfciC79D7Gc/Z7y2LcXZfjiwr6DmN68gfEUQv+HzmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHh/yQE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHh/yQE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B83C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781325393;
	bh=xEDp+HcXRzIgxHq4L3cf4xitpaU0nAwUqzniNbcWEQs=;
	h=To:Subject:From:Date:From;
	b=ZHh/yQE5WXdI3Y8Tri85F0pkMktIpXtz48UJo+nigqtWNwEebaqX9rP/EwZbLk7IE
	 GBMuk1ySMm3pR68/YsS3rBRDKWftztiB6vJRRT/CZijnmOJxOQHvPKBhpa1V/2781B
	 b7aT5l/ugi7bbjNnIqSWlEVCye+m7tENM3G4nGJUUw6bfs6Wd6rjNNOCfWxnM5V2BO
	 9168eNla0ZC9GvytPC1Bp3p6iNAWGnvuw6rt6BvKuA8YEo6ft/h+KPfQaIySmC61gc
	 kYmqxKsvVPst9gFhb59WuUFTx3X+OrTx3+p1K9swnckKz/8HRL7qye5m6XfKTPv/bx
	 S7Z+fQ2tTclSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDCCCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132539375.28859.16159640741206905950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196aa77b7c275b0efc52042784aa9c0606e93b7e52bfbcd623c54c352d755bb1
Date: Sat, 13 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781325393
