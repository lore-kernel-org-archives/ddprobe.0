Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3434018991E
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745677795; cv=none; b=ZADOetdDrowqju37iRvPp5BfX7/UHLvoT6qlhnHCkviqXkwrgpJKmj1CqwvIKkMtghRD6dmyUo1vH9ttgAQgzyDlReRpNwPYL8swEgJ/PgN15i2nRSDC8eD6+LmMgBLpQ+HVa5ElGVgYUt2K8AL3e73fE37BuIw3vNrOdsb4NsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745677795; c=relaxed/simple;
	bh=R5LW7AsxvwBNM7uvymXOd/ai9A684TremyQYm1SILVw=;
	h=To:Subject:From:Message-Id:Date; b=Bn2xYzAuwjrk1nHxBHE24k/Zsicsi8huMZZgw20T/MJeBlyqrfZ75hnmldfoDoinYmuflSfhtKPVaMeNjL8R61kplw2dNz9WkKyFZpRovE+tVyAAIwlQuLQkwWwoF8bjjUItycaeE4rpUBQuuJXQjHyB7aL5HmdANYh790OxbDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCPhc9Yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCPhc9Yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745677793;
	bh=R5LW7AsxvwBNM7uvymXOd/ai9A684TremyQYm1SILVw=;
	h=To:Subject:From:Date:From;
	b=RCPhc9YuVTOfL93nfqyVP04X9GSWjBtNDd+eTSiyA/UmZDvqD66u8JKRh1aYRJRow
	 r0N+RgJOHx8qakl53mxb6gF3RMGTWhYVVxl9NraKYWPvD7DOP+Z4heoGmFooGxNIVS
	 uab4BVowYBKTWXiBX/b3G0o+okz1FKIkv9oWTU+FF2y3x2HvlGZJyOSqS6Zu0W6EmD
	 +9acTZoJulrcizLHTKH0hvcWsDuTWYgmQWOFA93iD6yA/wakyuczA/oQ4ima5AeZzQ
	 4nTaZtmvZMyc1QW8AAb4MG1SvX8QkBVYM5YeuldwVpBInzLqK32qSNF0oOJS/SclLF
	 8FXfCtaEqWuYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F0C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567779357.12180.7105039475415551436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc4c76c27ef33a0a43b4ec8ab0702d85c470acb87a407ecd0d1fba014c500fc
Date: Sat, 26 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745677793
