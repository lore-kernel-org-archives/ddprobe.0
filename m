Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E6D33CE83
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769684034; cv=none; b=buxzsXkFuC9bXN+QKizau6UN+jPM5rYnzk26Yqcg9eDiTWO82H6wGH1gphU4h4ZwtiFgQNyYFtEyXw67ymlfC0W2KMbbCy/5wULl88EvI4b2xGzn9WKs5pU3lqWR9WR1V6r7YSTaUGjxOj61kBjc96ufm51Y4lDNHh9mjHkBETU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769684034; c=relaxed/simple;
	bh=CXSJR9fEa+jFLXHA8cARptuhFjRNlO9Uuw4UBgQUNOY=;
	h=To:Subject:From:Message-Id:Date; b=T6F4UZhAM8vPSU6/PQX2NqARteBeSsyFzaP+wVI3mtD14pvssy6UpEWYh2QpStWJRv7aoXXj25HHSnL0Yn02j/SS7ArNvA02lZL2BDfOb5OliuP24ToTGjmhgo9xMKTj2SRSIJFSeOf5ZfBlZYGdjtaUVvRCNUC5Ae8hW30WLRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUdU+BX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUdU+BX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1610C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769684033;
	bh=CXSJR9fEa+jFLXHA8cARptuhFjRNlO9Uuw4UBgQUNOY=;
	h=To:Subject:From:Date:From;
	b=oUdU+BX+PCrAE3s+qE5m82qXkbxwW3OZd8WYTLUd0WRM/nzcTRHre4k76bOdvI5b8
	 G5J29M1uxMXxbKz9RTh6V/Tz8/nEc8aZ28MkeXeC5AJjdW9YxJcsiBWh4us+A9QSsV
	 HrZ+xX2TRVphJIxNa9qiUeW0RWHsRDYNN/AhmwyD3e2sVvZexiSo8202fiSCn7WFaR
	 OF6zCTBMPaySCLFi4veYHFpuM7Yf/jIjy7rs5pg1LUOFSd9myRWnJjdWrhcuTfi15P
	 TzN/JUKOUi/9ATUYbkYTGFy7re2Qz/oH72jiKCpdMlAw8poxcX9m/MdIMw/vKzLrxk
	 OpeVUJIoucUpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F851D358F6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968403357.18150.12464747888618493752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2d8e65b4f33a37c33dddcf124edef175038ed53cf9bfd2ce10330b74744ac2
Date: Thu, 29 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769684033
