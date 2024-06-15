Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D742AD25
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718493503; cv=none; b=TZtvSX4nGrb8V3NKxy49qxtvA8aXFI+iIGIueQ9g8uvOsfj5UvRLomAu6E+XVZkoGHBjkb7y+LvoGuSwmJC7H9NYdOXjgUd6LbIFSIip8jfXXMcWQboe8L3A4jmzPgv97shGSuJyt9YS17Nc9jGvufN7HEbavZ/sVoAgrBuumh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718493503; c=relaxed/simple;
	bh=g47bdXYhbtCOS+gKreZjod6GRlFFkq1jzjBbYijX8d0=;
	h=To:Subject:From:Message-Id:Date; b=KtzPAlTVm/7KcAfis7IeXVSreND9cyPMmLxg/D6Fak/sIMGTEOWf7Spi//LpgbFYOqBs5beCCz6SUyXos3RNCRp9A7PCapggKFd1ix7RA3Kk7CeGLeJukuCxaHfJH9bNvAiiwYhax/3RlXRfBdLkVCCd6IwisVp0vfmDBBD/6dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlD+FQrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlD+FQrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED93EC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718493503;
	bh=g47bdXYhbtCOS+gKreZjod6GRlFFkq1jzjBbYijX8d0=;
	h=To:Subject:From:Date:From;
	b=JlD+FQrEfFafzyTqW2c7UoA5vMA57gHVNmnRd/f4luZ5ovdZ8orhIsSOKx54wlPQz
	 rjQtTUi+VH65HdQp2pDI2u9kR05OD5zP63vhBq0qkBIrcwqTcw3nlXLOA3r8HXi70F
	 nUAL+VVOtogEeqweId8cHmv+QMvCgJ62VUl7oWb5/MLww2WLJXJkFhYJmvqfitk2On
	 kKWIPVZBoXZsGWfYSeHIokNYPatlnyzR35EPEQNTCWZdFhK8NiUQ3LFFXz/DN+wq0p
	 MAjPTT1zYvpYecNS8Kq6R2T2vLIyqgNZJaaUtZcULwuaP+yBraZ71Df/9Uy+0wVM0p
	 mCcPWUSiA7yIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4BA8C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849350282.18638.6353514211622753598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7dd72d64040a22df81a6c3cd1ce53212b58c3e5547a7a42ec2e961173f8da79
Date: Sat, 15 Jun 2024 23:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718493502
