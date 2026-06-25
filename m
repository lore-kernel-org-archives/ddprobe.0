Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F6B260580
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782431854; cv=none; b=H4KXby636L4KIFQ/6n7i0yp/q0NxdvJ4bnH03ZfO6NP0ins9SsYdZfVTYOG51j495I5v2QJngbqSJpUeFaztqIThB9TGJ5CxpO+/037VJQGQWDKW3TrtzcjUPQifReQLBQs3ohrqKHpvbRw/mSMHa0Am9df2PrTlLKzggvTrgZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782431854; c=relaxed/simple;
	bh=sGWCcqAx2ZUejZuEeKcXg/NHv9dSQ6DH3+JnKYuiXDA=;
	h=To:Subject:From:Message-Id:Date; b=N9pGBHPMri4L6TVcpsa0enlRPkZjJd8dJI2vo/kLVnyTe73M51IZ905fpjKPc+10s1TxOEwAOZDSNTFCe2nwxNO4XO/Hm9YgGlnv8Ria5Xth/+oVPolcl4TyS/3UjM4ZBeQbmqu8+S2iVJVvW3ed4LXdL2LBLE0N0xZNy9N9QkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie0KDWVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie0KDWVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC94FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782431853;
	bh=sGWCcqAx2ZUejZuEeKcXg/NHv9dSQ6DH3+JnKYuiXDA=;
	h=To:Subject:From:Date:From;
	b=Ie0KDWVrbCEhjeWPxgvBP6uqPsXoSXPOhjDW+M8I6JFM+r/xpaGJlvmulSYTZ85+D
	 wS7VuoFLaFe6WCkc6/dASPdn3GmpAbSr+cr1XzdzUcXZn8AldXeRcQbf04KD1boe96
	 KYA/KOlAqKshthYgygdJYBcLDbSnKfdgv48SZpXF5OhRI5mpYXSbnH/sUQdH+CfcOL
	 yKHrNsxmuslVRg2hpjRU57uW68fxdCxVVkrwO5g9Jx3XlGvIkiMUkCOjLVoCbny3Hk
	 uTBU58rosWMzO5nY4V4KxqYVkT9bo3R6hv83BCitqcCW61RA15TKtEkl6vgYNObDRB
	 /AdVqquL8P9Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30A7CDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243185372.10633.2615491802919849891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d611280ccff03c0512f41ba98fa8c6b479f4bbbc50676b23828c9e403856507
Date: Thu, 25 Jun 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782431853
