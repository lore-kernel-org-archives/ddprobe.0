Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866AE34751F
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776410854; cv=none; b=qaNWJfEm33iP4MoEzEcat71694e/KZEGLiuDUnWzPmSVrN3VjNl4urn32t/V2YbRX/59XseyxeXDZeCLAeMpZIBQRVLVqntNNHjZKnxzVuqUJm30cuvFIzAvV5JmLoo2sDammK5NlrMUymqPEgwWY3EJGjuLMvD/0rK2/wFVUC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776410854; c=relaxed/simple;
	bh=6cHWcnOutc/c3wh085NT3ALMoer8OEG5bziwWogtzXc=;
	h=To:Subject:From:Message-Id:Date; b=mt0rdibDud3sF3fJGe8Q3w5Y2b0oGXxgbVCoXfzNu98LgMM+RIzr3USixA5+Inn9cLW5a2Az5GcktNG4QlCAGf/tu0EbuaLFTvt38I1puY5r9lBNLX0UHiCguZ+pkjEwOjx0v95f6uyzA/ysw7hWv3JpICyGfM3FN0PCVpcBWrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADaZLnT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADaZLnT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE9BC2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776410853;
	bh=6cHWcnOutc/c3wh085NT3ALMoer8OEG5bziwWogtzXc=;
	h=To:Subject:From:Date:From;
	b=ADaZLnT+8sfVe37/xU0dVLbEmnleJnwzSWlt/mmojUTz5A+vLtqi9COsnPZGjRxy7
	 5IQ1NaenGnFcSTSTNp8RvWxVoDkNI62ipmLoCgccYZaVM6gi7wnt6ABaiM5t6mDeFu
	 xDs7XBe63BvGZ2BR5FFwTDB8Rjv0K2PLdhex9Flsyha6/rhWCAb6uhHqlCPs2iO39v
	 ENljb7MZIYAEppoeva+mTHnrnIGo3woyOWCXp8echooFkTY/1GtuVomJcT4cKUo7U1
	 L+ezVRgPs+mVDUYINLO5qLaTzKOebgW9tuX75q/v1JFqz7rPjyeirozd6G9lkgtW7z
	 +dApUmKWPkOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF009F8E4B4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641085368.7171.4712550796907109995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb0c313a4db014f91ffe976555615db2321e0d70db60b255345852e9083c0e2
Date: Fri, 17 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776410853
