Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C875672
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737905154; cv=none; b=Y3cBP0xn5z/lbi7BkthOIWu7iDbV+A7lpDDkY4iGvCzFdQyfW4ABXsbAmqjhJTAuh5lX9CT0ldUgu3fKrXeLn/GSW6l4laZtlYL/xwWuAT1m7ErRj0GJQpuUKhqyKfRBoFEQ/7L1VDHWSlyfSCtMz1jOo94Ajz2rO3qeYzys4Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737905154; c=relaxed/simple;
	bh=Je5nNFuIviksWml+ha6WlFz/jBEb4xy0XkIoRjD3qRw=;
	h=To:Subject:From:Message-Id:Date; b=GUc6kpHRKiqVf0y/q+iA2uo5HJBf/xsmHoA4/65YulHHnCNgZViQwpJyU56G9+s05wB+ogcb1duHxo1UXBlKpvZwndZ3kufEaR+X1dyXmDRtD5a6aN/xteZ6EI0VzgHhEL3vVIpl+11h7zYZccNFY4dwZYasZxFwhbZbwDUOr3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX0M7VTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX0M7VTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD963C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737905153;
	bh=Je5nNFuIviksWml+ha6WlFz/jBEb4xy0XkIoRjD3qRw=;
	h=To:Subject:From:Date:From;
	b=fX0M7VTqrO3eVGyy3700rql4/L/LR5OFnSHXaPUyBO1L/9Fyo+/5whpNhDE+fUI/n
	 o7fzeJWx8MJUDe/yqCrG9OYYtFpbu4y7krFyB33Wux6TT0U/TDNJcY1tXxkrTv8uqD
	 bG0L0/NC0RkYErhHJo9dM7MVRJZ+8LC4cRLDiVA67fRON6xw5/Y49l+N1p13ORUqv6
	 1J4zjAUrmJG2lGs6S+bS65E66bQIo5Ti6+AIJWvOibzjQIGQhuyziM7v5oVKsdXTIM
	 aYBHjxo4Slhn4XbrUZ3AbGrGpGfmE9hzSVcRFupQDp2ha0hpyuqktvdYIFrLZs87XQ
	 +8itYUa6MmRuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93972C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790515359.20681.10534191608451646039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2f56ae7fa6c127d3b73a774b1d8868fb06c5123d64ccfc5d56ca03b236321d
Date: Sun, 26 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737905153
