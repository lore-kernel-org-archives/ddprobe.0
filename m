Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5527C4436A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719551663; cv=none; b=MLzDM7t2q39HvTIMJ8ulBUXAlsybM7aWqSvNLBDmctbiq2oU2unZkAVQtQ6pzIupxHILrw0qxhMPnkkSI++uT+0vM5wQcEZK+vZX4F8w0ytN+xfMkWLZf4EFiMnKU0cALsZYtUz6OQG0KG/hE/59pSEGd0jRYzDGDSBciKHLAlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719551663; c=relaxed/simple;
	bh=NS8m/sa7D4RemWQekCxLzC48Oos/sA6vyEhx7AguwqY=;
	h=To:Subject:From:Message-Id:Date; b=VBQsxICMR2GUG7H9KqW8H/RzTIv0jVm0A5j+tuFSjV+aasa3sLlnJlSBJc2erbzp5DN3nwIl4mBzfu2mFK2YUqWl7IsIxm+1MDjOr4kfYgBJcKh/QlP7upmQC0U8q5zs9CWK6Sp4sXXQRhTifkpX9FG4yBxeR6WE2BA+pXkAEFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2GSB4WF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2GSB4WF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECE9C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719551662;
	bh=NS8m/sa7D4RemWQekCxLzC48Oos/sA6vyEhx7AguwqY=;
	h=To:Subject:From:Date:From;
	b=D2GSB4WF56seYprsPFJjHme/i8Vqs7csrVsn6ka7tUWHsOb/6Jk65zbY/ktDBZQY0
	 z0nL9JHKXynCw+Klh8kwjQVQwyHvHHuuGdn0vvpui6O2xWshWibPT5yVqejuhmQhg6
	 lXpdv8JKf8ei2E10ueYXgoYUXyhEWVZ21wVWxlgydZVrI2xoJ8OlBFCFF3DOspQKxb
	 TpSIL+mijL9W07WmVB/LDCesCe/m01dxDlOOYfGSTX6YsnB4O2Q2dcHTF1jOm0s6/U
	 qbEj0JvhhkUmtXfNejNzh9FjIWWS6cpLDtdrF1SosnzcwUZooT7GekJfj2NJl+bICV
	 eGoEieaVq7WLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0F3C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955166275.749.334775717267963241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4991261137fadc28422b35e717d328ce84e209f11bbd7bf97df00dd7b22d7f2
Date: Fri, 28 Jun 2024 05:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719551662
