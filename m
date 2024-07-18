Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E200814534D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721325954; cv=none; b=XHmSlTCu1uepx1ja2KcCA8qxuWbTnjBqzIxgx+obQhd5V5gFJcgUQRbDtz215yP1Si5cvGFNggX5HKRdgnKeXMToM8lwU4RafZ5X2bmbRwnDGy7VupKS3ep+9WUY8uHfmggx6lWzuI8iGLGhnGhE/QKkxR7i/6hnXL9JnAuwrk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721325954; c=relaxed/simple;
	bh=rk3mmo8pgxgmYNzVbm4EvcS+0GKgzIBAlXprBzo5LKY=;
	h=To:Subject:From:Message-Id:Date; b=oXI4mZHRejbaOJjfyhH6C128UxCxrI9NSaphU89CybW04MVF5NXQ9hi4W3L+82tFp3FES1WhQETfMNkaPJVjKd//6sAxRnbx06OWXjeuKudZzRWjkze/YBAV5GEdqWaAEg2KyFk7ovWwLQdohtdkTfz9k/XCKywYU/XiK/jLa5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7eRrpSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7eRrpSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF239C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721325953;
	bh=rk3mmo8pgxgmYNzVbm4EvcS+0GKgzIBAlXprBzo5LKY=;
	h=To:Subject:From:Date:From;
	b=D7eRrpScJtKxnr2WPUfFnUMwCOHoZQX1KUbjF2ms/RKnelcyImUzwbYLYMaPXErUm
	 9aCLTz+88Zy8+XrYcjk9KZGF9ZoYIJeOLgx9tSF5LTHeiAonoZPyZCjrRZBCSvyeUk
	 XmBg8wpqZqafv0SmOqhnY1vyALfzpyBOvYDY6kwMPjR+X2LBH9CZunkQaGTLHUouuL
	 e4/oqAiIcaFbtFT2MenhVYCGuw8u77VNtnf51sWK/C8NSy0W17Zk8CcoEDT2aMS2Bm
	 Xeu/Fg564YJ8CKc1xSWI4O1HfL1TkoOq+bOF+9tl7clJCyz9kpHqQ5MfDb/26UIuiD
	 ariQ9VY9Cx0lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0883C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132595367.21274.12466854613601602521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e87ece568b4224679b4cc3b9537c18fa046cda14df9fa0a99ce3a42483f1365
Date: Thu, 18 Jul 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721325953
