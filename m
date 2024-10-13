Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA0F1870
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728798954; cv=none; b=Zhp8Ubq2qUx3AuwjAPMyJpTF45c0T9sO7s7SF1oOkQ+3Cemoj2U3TuPOLW3A0UWEGphGB4QFVK4RB80BifFRjReIGzinkaGvK5dM/nHfElDNqYqUOdbaGH15zC8bm8W81QCIWSG6AlmJNAaCrw9oOFB5KvoWWeq09sOPARf6FZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728798954; c=relaxed/simple;
	bh=aZ5Fo8vAJwxXen3bApNasxITMxp9ZXATTTRO1h17WY4=;
	h=To:Subject:From:Message-Id:Date; b=YbEW+T7OAuLQSl+V0yr7cA/UQvVGLhyIhkaXdRxG/p2ZdfMzdw+0VlAq51OXNHSDwWSlsCS+cLinoq/nq++/qYLiJ+UC8LMoBX/uP982ez8Lb2K+ebgIvZUkWbl/cFk6bpt+TGYMJSpgu3/qIUFUSiebsieA7L+mLru85RpsQHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOFClblf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOFClblf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC247C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728798953;
	bh=aZ5Fo8vAJwxXen3bApNasxITMxp9ZXATTTRO1h17WY4=;
	h=To:Subject:From:Date:From;
	b=AOFClblf6kN8vND6ToVAIv2JMk8BY60AlFt4u4yghDuRxw+TgIsRQ2i7C/VBz2c5K
	 yRp/OjwxqWCYZaU3ahWph628NGMnr4AJOvhQPhQq08+TEvj6mZwrQiyrgizfxLuPhu
	 XPtwXU83Adct2ERUu+X3/K/QVgZFZlbHzezcD0gJLr+lkPt6FOVVDjRJ/LlE+CINv5
	 6TPXOPT3050wk2tIFWYx8L4XugNOJv6/+Bjg4LU2MfI57ebaOUaJvGLcTTMWkMNy+U
	 PF1YJg3+OzCDMrMSTBhy8B1IrQyyYSIbGoroB7/tC5eEMciwq7ffx0MJ6Go3qdXqxh
	 BqRlqgnki+YVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C4FCF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879895358.5737.12074454117401142938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd85b36dc051a145fc279f1435c8e54937262a52a3c4a27dc78f828ebebfaad4
Date: Sun, 13 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728798953
