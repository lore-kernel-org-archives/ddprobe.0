Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C428281372
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749544195; cv=none; b=P+wZOwbE4jYVceYHuRt2v059nLe+OG85bF7Q4h2BTJ4M5rD/dbpOijHsaVSq5Ckbws5JteCMeF/j06YLbqiRv90jWgWz+qBrqlvY7burR8RnyFVil3Ifa5dxgSYg0XAbuuybQOWgAi1VIKu6j7dfmuvG8fxCzXKrlsoPBB5dKvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749544195; c=relaxed/simple;
	bh=y2n9NDT65OBoTRCy7sarKGA07QSjq0jhklj3WiXWRjI=;
	h=To:Subject:From:Message-Id:Date; b=lLKGiet684tUEWgjIW/9az1H8PHNxxadQ39NAR6KRf/V6Cd2WoP0RuqfpUiFXalYBjwBW8LoU2F+WXH73UddSwRjd5AVVjr0k1/kPWTHPVKZCcUYY3f6o4b4QGmaJuzxhrpjB7/BzusQYuwoKIqXpv9soC7JpXFlEKMU/g4y+fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3tX9DJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3tX9DJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B946FC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749544193;
	bh=y2n9NDT65OBoTRCy7sarKGA07QSjq0jhklj3WiXWRjI=;
	h=To:Subject:From:Date:From;
	b=k3tX9DJOq2UfStnGdb3er0APxKNPULY0tnrcpcXwVyP+hYRygLUxzdo/0bA+DRYy4
	 ZN4py0vOUjVApbK/vl3SirVDueASttxqhUWtgHVxC/2AdbbctNVb51W0+HAJdy/+MG
	 DGCVM4USzkkxyeeygQFWH5CjB8gGhWRY8pJ+VXfXaowzKuAsEter4wgcKPkD3GC+yS
	 F2NKDUhZtbhhfylYCn6raUqQRLF90VlRKM+hi0qwgXUDQsd18QjBqjIpgUHs58HHmq
	 4W8K6Akdjm61j/OtahWyAKrEviewztsZKpHKtEb1FeaAFoVI3yUIHIMa4I5xywohuX
	 ElBqBhVCt/dug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4ADFC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954419363.9849.11999771628814141146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea78f27408e94eae616b83cc495cdcf777b6759eb209a460fa56c47ba5956d50
Date: Tue, 10 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749544193
