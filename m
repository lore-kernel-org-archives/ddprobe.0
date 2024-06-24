Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEDC19CD18
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719243143; cv=none; b=E2Pw2eupCKUmii1YESN7oNtmsqOYN/7aox7Z+8Q0Zejvx5xsjuPVxdAcvtEUZSn2hJdbmnO+BOenwYzU9EmP8M088d25Bk516hK8CHY7GnLwCjgDlqPgLOiCrXmaWHtLkGTc0g/C0AjlW/Uw94k2IIaUR2+Jydiwn2JYCnwn5FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719243143; c=relaxed/simple;
	bh=l9+lPnTyGo3m9K/2M//Q5O112NBKPS2/+D+3ktaXW/Y=;
	h=To:Subject:From:Message-Id:Date; b=hYZI1yiGso1QpZcs1eLxP4llUTh38w07TYlsxJ3JkYgmVdj3V7v5+Qi2MTJd0sLlpXaPW9sd1AZg5W7MPpP2K6cEndxN263oZTFW1Wx5cpXvWyOOSoyggXvwrRKdcZL/C606kXEe791p4pol/bphBg/6pIeqXUbQLAq3WmdpROw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGAmKU3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGAmKU3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB2DC32786
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719243142;
	bh=l9+lPnTyGo3m9K/2M//Q5O112NBKPS2/+D+3ktaXW/Y=;
	h=To:Subject:From:Date:From;
	b=RGAmKU3feRPXSOtUiAz7xmATCv/PJ3mJc9HMOkamD+XEqWiS9WFg77HNouI/nRbeS
	 j3K2OsEzGEV4aFM7rlcltKPuj0D6XAnjnblsF4QmqhpR/wU1+GDz9D9GR/u/0Z9dbw
	 +JyDLXM+yxGfJnnZCqqz69W2aatbhnxcvMpRAfxWPt1628MqrHtfAH6i6ed7Loq43x
	 8Z79cGu0OcIVEQUCN60yLrDIybRmm5cLHzgXuDKYODbzJUk8jw+5DaE8WrwI9lbNww
	 pRh8zzifEh6QvMPH7Zn6Bi+hRHhYmZc5Nvhusb26+MwxXISx4HrlSJ9S5CLha5RRBE
	 TSs+ytgfV9whg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C806EC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924314281.29357.1435661418302807660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3374058a7c3b2443ec976d9bd237b8ae671bcb754f967e988f4c7f0b0d2d169c
Date: Mon, 24 Jun 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719243142
