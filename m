Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3452915C158
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761532794; cv=none; b=MconETVt+E0eFjCKYrW7qHRqfxRuM5bStqEqA/DEyMZPZ/LpgL/b3Kr3Krtwp47oItd1RqrG1klQQAxyBzblNFY9X8iexgCoKhmbi0EHL6Zr6BAKUcTFd0RNvtYGIRJ+v7tV6or230uscMLefdbimli5+Q3z/W9V860se+7JbJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761532794; c=relaxed/simple;
	bh=2KxHm1PpVv7Vs765DAtQ9NGPrt1R6DTrWoa+eDjoeas=;
	h=To:Subject:From:Message-Id:Date; b=uBTNBdV+P6IuToBRA33mvzCaGRl7U14A8M4T/G/+vuQ9HblyjeXY89nbHbKTZO5DU3tDizlkrjcsY7sLaEFP2Skb3+69w2jQebv8XQpSrRqT2aS2GQIgZnMd4/Qd6PkJ4FY3pTlC6XRQGWmZE0o88bMCaxPIQd6DN2sHBz/JvoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeXTAyWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeXTAyWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A46C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761532793;
	bh=2KxHm1PpVv7Vs765DAtQ9NGPrt1R6DTrWoa+eDjoeas=;
	h=To:Subject:From:Date:From;
	b=UeXTAyWLvWX7up1akG72FL7NoQ5FLjVUeFj19MqnXZ8SywvwfGGsewlxsCjbyW1Wl
	 t4CJFxRnKmdgjI06h2lfOXnSHv/t68u6IOlfyyan1A9Be7TfiYrbWi/Xb5HPr4SZ7R
	 4i0hHeL2wTgTwv962zfQC1ag8pwugdfmJclWhaJ1Mgd8vqOmYysgs8UZ/HG+rWevNo
	 BJx7NxI1gykQ9jQNjIwJe89j1bSiUaj8N2wQs5rE3UHqFu8YKLmNWLWKwh2VgLWCvQ
	 hZhb00UmrezYxpg5ANew9j/TXPZmP880XwbUou9q5J5OsyIWJA0dzbDEsOazXx3lgz
	 INUfX/MNKgkyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91277CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153279357.7068.273273821759626568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae27641f28bd735b69606c88b6f0f6dd2b2e3f2f8cc36460630cb504a9b58a0c
Date: Mon, 27 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761532793
