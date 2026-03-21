Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578AE2E3397
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774091694; cv=none; b=ao2ewhZSRLNP8cqJE6YweJd2/7Wd8UqVgERHUMLXM29UwPimdMI9Tcy0KmJ73TPxtOO7K1gmaAkU4SMLeIniXJvkfO0eR60cUWVMBML8/7105db9AOqvaSqLL90GTS6BfFmLi8yNxwzyozHsyH32OK6W8L+skvc3Y/sK5nuyicM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774091694; c=relaxed/simple;
	bh=fAOUbb3mSlfDlfqfvPSIXpFufuKq9WT/W271hmr+zmY=;
	h=To:Subject:From:Message-Id:Date; b=DGNpZe74dXsSC7k00WKcbVbEXnw0LTqYu/UuoFibPkQ/A4aYM9GIkX60Q3oRdrBNA7GSx4xsoUoqkMsDDdojOvPUE0PcDgiI1IBRzISScZjtHrsRRfojaYdbgQ4eKG0kRoh4F3v5u77gPhRTzQJERsqYyMl3tfD3Xji7bHoShIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fayx4wQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fayx4wQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B453C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774091693;
	bh=fAOUbb3mSlfDlfqfvPSIXpFufuKq9WT/W271hmr+zmY=;
	h=To:Subject:From:Date:From;
	b=fayx4wQmCN1qJhscJV4/LIQQL/Jqb9fQpVJ6lCnZf7W0/NzlZfsPDO5ukwltq4V4t
	 Cu2GbUYY5TC/cRPTA9rB8xi+yHFhCmo0n0MvLiqyw+l0rJkU9bs+YvW8CEKkQvHPXR
	 WISmB1N5CxKQApKzIcQ6j8S4EppHyH13RowIgJDaLrEEkKKTb7v8U7ew2eIhNyP3u6
	 +iCtuIWR1Y7rIVq2dyHVWynzaJE2gclva4XSBongCeaeBvwImnxvnfgi1LS64bNtVy
	 YyoWUulYLIaOUPRCj+0UwU+aAOBzzgE1QWIV6BUz7B74OV0A9yNpsmztDN8aS3jgr2
	 ShVXEySMy17aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E05E109446E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409169357.15877.2126803296230274267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fdebd06846eb343e0d6e39c3b27b595689a883c6fa52e5c74e226317e4a6e0
Date: Sat, 21 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774091693
