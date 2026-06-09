Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F9C32B126
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781015134; cv=none; b=UkUVg5WRn9I/NB2RWWMlU84TtTo59r+i1Vpc1yCBAnUfeHEU+wjz3+XQWFmD+JBtxgwZl0V5QYCBl3pW75da0tvN2PJD6bH9skwBX8OBtKZKXHWVumUDfl4OJekqM1gEJWv0CBnRoOK8dDzeweVL7/i2xV09RYQFJ3nEaNEFw9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781015134; c=relaxed/simple;
	bh=3cYSel6kx7812403T9GeXraMLR86JvWN2RIhDfq5jYg=;
	h=To:Subject:From:Message-Id:Date; b=cB3puOHZydqpCFHzoCXbI3rwMGkU+5lqKpBObe0z7qh2cGrdLd3NhggZAnhVNepguXHHO5uyp9ctG9Bd/ZGZJ9YDqi9T3S6xqXImASdlUF5g1avEyjcOpCkIf0J4PHFQU0CzeeYT/yivIVb/VqC2bKelU9FjBwwwxeLogo4Ta/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDqNDf2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDqNDf2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C4FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781015133;
	bh=3cYSel6kx7812403T9GeXraMLR86JvWN2RIhDfq5jYg=;
	h=To:Subject:From:Date:From;
	b=uDqNDf2A5S66S5yaxmIl4TLHUTUkk8GPVcFaCJvthd1/YFrGHND8Z3UVowoQP2hNC
	 JNwizuc1tCc7QkujbixUrmLwr0MfqeuC4U+eXh5ny+mET0LvMUkSN8eZRqYkCmSl5Q
	 ZWi4FeKqTjTZtpQ+XwNHXsz8StgDqO+y1XIQiK+Nz3CKVm/grg/y9aLjDvY9Sy6O3T
	 YHOwHvV4SebkoTNgk/kjRjmVocan/aEZ6q++Q3J4vpiqWRC7ZQUjGG3kUYGt1cp056
	 cMcRJlGJAsX5LQJlKjJoZgY99+B61tG4ubWCdOybYY+zQdYGSU5M3XD8zpNXf3iYnw
	 D3NkA2hS33Fog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C22CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101513375.1757.7207557055007271615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cdda84184d563d92eb54b7a1319d07b9c3c5d56bbf40c4d47f7c84f5ee91d6d
Date: Tue, 09 Jun 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781015133
