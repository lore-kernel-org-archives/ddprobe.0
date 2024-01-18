Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79CB28DA0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705588096; cv=none; b=Q+SmEOtPKmhEfs4vhU5QlPPPPvLgbLIkxtvUfGkIlSnfajC3l2YyUnsEDYAdjbfuAqWXOGYVC6KsdkfIp5ChuXbhAR7OBpWoUsJdUpNwrLkTMc1fhCIwV97CJy7j61ihG7oTJrP3n7mtJ582wLWLK3CFoBsjFFoQoUzP+aa9Mlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705588096; c=relaxed/simple;
	bh=OQ9w6+5wefPn62h7rIAhBmQVI26h2sQ5W0T7RuDJMww=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=krt1x3n6CmIi+yqGgfS85XX0kTWooW3I/kh8WKmvRJJIH/pyBnY5k1AEcTaiPLUIIn6q/k+0Z91hTmXJrDlSro35XMg0+TKu+zZf9hW3yNqXJbXGyPoKyr4Z8RGbXnwmT5gNLXnbQxhjl9eQ3SgpxIV+sACr5wjALeRerVoIyq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uo62W8dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uo62W8dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F4DC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705588096;
	bh=OQ9w6+5wefPn62h7rIAhBmQVI26h2sQ5W0T7RuDJMww=;
	h=To:Subject:From:Date:From;
	b=uo62W8dhHuRprgLcl5Ke1xdfI0dF0MbcJcuMXukFqw8KK6EbvF4Y0cec/s36/XeNB
	 Ho8pCnOZ/At9t1KFwlBISHHIsKel2OPLMZyNYp0SidNtiwoI/J84h1ydL1mTAZAQzU
	 +r6ZKT7tWC9eSPcvyYveqvibFu/1GWw5iZ/a2am+TVwd+IiisTt2SMyxCA44ib0JG8
	 oH+qZ6gBDy3/fNZk4aYOvs8A51AwtOqGgcXaAKvt6tuv9manvGnV/ov/GYMCcY3b5A
	 c14QkYVs8CVHxTXxe6JGPMuHoUMITnC6THt98PuZpxGqVp1r8dMmVX751fQNyg347v
	 w20ajCNyC6igw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B98CC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558809636.4858.13782523896591800800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0386f639dbd57d2faea3652c5960b6d2468549998190ca4a7f3f78e5aa68e8
Date: Thu, 18 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705588096
