Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30517161914
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722321354; cv=none; b=b/RZfTVutTSOPROBwS16SiWzDisLZJmiG7tCogWA5qxq5I9moUeFx5f6hvfP9A+Ycg7DAUC3HKHFchBBZ90unwmHwv0zC2NmjfHsEBoinYNH7k59nlhEUBriCeef7wV52Uu7AlJrt3w1CMFWYdjHYR38wdUt/c0epEi9gUVg6s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722321354; c=relaxed/simple;
	bh=0Dn6BrH1ycupIawHDkcbp43pNoBm5dTqBTWzKUz4q1g=;
	h=To:Subject:From:Message-Id:Date; b=Pl66YoXEeH6RMA+zds4hlUuXcjLOR1RjOP1caLCCraTgNAKSuYgCbg0LIOSBTqeeY8JbjUPEQs+7cBDHb58awq4b8NAsW9UnlYFn9VZO3vgt/BF4YpY8UUVVOfyiE4IEoQy6xiDi8+bw100SoxKIn8eJLXa3cLxlY4E+4d4u+2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n09xuoK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n09xuoK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A791DC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722321353;
	bh=0Dn6BrH1ycupIawHDkcbp43pNoBm5dTqBTWzKUz4q1g=;
	h=To:Subject:From:Date:From;
	b=n09xuoK3SYvDE39lkzgwjSXKiZUFxc7gDQ282oIX+KrhTe2LrrD5aEL416PIukddT
	 7CIbaZwbvgzVTIJ8HgIO+vv+wUqBrJsMVdbBy7cft7bwM33DiurcKdDr6t+xdaaF3W
	 uK9Gs9BUqXSTYSY7fGdqozGxcAWgpZ04KSeM4dJcaTbb4VNhY4t8ufc9AKKoxMM+FQ
	 pK2TQbNGXC0rgCuzGMxAtxuzGhOxSn/t6tWtZou0QmereF6O3Jx7EJLEZza5X62R4Z
	 Zsu/rzhHZcx/QGsjnM9Cd/m5ch+ddy/gi6v3q1TeQsP0zaHa9mOlDKtTQyNE4LTh2D
	 G/ba6Dmqiaf4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978CCC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172232135361.32051.11628448484655262522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656ba60edfe8a27d8d39f56eae595849f649faa82d1ca643df7d1f311940ceec
Date: Tue, 30 Jul 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722321353
