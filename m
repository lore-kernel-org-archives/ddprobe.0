Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BC21A6822
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776295054; cv=none; b=rOcFGUX2XOPqmXlXfjQKkR13vYoH7+sdJ5yjSZPWk55/4ha8gGy0K6YHZw1jTgWUR8ElZWXIgbNaLD5rTBBkjsKa4x7yQtwfUjMR6cxqNAf6bLvvkvH+tZKY64L3aBkDhuWuf7ORIQGjtyQpfLvir4cK1cLsbJiS855+CfJx7HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776295054; c=relaxed/simple;
	bh=DX5F2EFLoY8v09Ls3v2IpZw501EbJt6lY90wlfIJJ1k=;
	h=To:Subject:From:Message-Id:Date; b=dqVfefv3I3JkX4jLGHj72/EM2+2RMmT8oesAeu9OYaxvrWcoS/bm9Im2tT9NyGmyOb9aHhcGYhQsUSGhAoPJayO0R5XVGT8yVKydIrJGukKdbTkJA+CF/y9+uhA3zvGO+oMeVnR8ukWmG9JE2hwxMDYfnc1Nwy9L3L5rcOxh+ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QakOIgeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QakOIgeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F0FC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776295053;
	bh=DX5F2EFLoY8v09Ls3v2IpZw501EbJt6lY90wlfIJJ1k=;
	h=To:Subject:From:Date:From;
	b=QakOIgeucBA0T5RFajrMyzTtLNsiCN4D2fRvhXyBEJRr/ew1b+ze7sYjwQcgCk+5N
	 wHZmo86xZr1joBZiYjhvlXRo5NNCQI7sckAGQV8vC+Z0EzuBurjvBMLPbuj84Io3Wg
	 WF+xNeTEpFK8YWDQEr6C1xqL0eUE6Cs57/aSwe6TYEG3OJi/KC0q61FfSjq7XBuw2S
	 bEp2ZiDI3ZLeWMVHovOdcu8/U/bHQdiuevqX9IBHBwyZIywrZ9TUMV4qYjKX5pl9Kl
	 id98mYTCUrKHHV1RxCYpxI9F4NTRlWOW9c5D//9quxVMCb1jL58q8VtKNXI/jaqW0d
	 +IsI1+wsnoXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BEEF433CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629505368.10816.15589942374916271146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68883febe6d4bafe1904fe0a34d0a5dd0b45847cb83e61a87f8a7e3ae2d20c71
Date: Wed, 15 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776295053
