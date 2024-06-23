Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDED391
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719106343; cv=none; b=oVAJ0OdgiiBgI1h7PIR1yD4d/xOLYcuw620r+x+CfX06zNOKRl4Tz+vBqkI7T/59DHE9sCU9+iH4lfL6ohJcHcvaGBFQ2kPs4WdsmhNFCF66j8/rZCZjf4bv162//ENk0BISRa33I2v7dqkrQAleIScfJM5nxqVKcjYYUaz4mP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719106343; c=relaxed/simple;
	bh=GqkCnufMSQbmomR9eUxFxqLjKrFKuM6xOyRDQanXVfU=;
	h=To:Subject:From:Message-Id:Date; b=Ww/ZcmmwcMpLAwnmn6YdRe/bzconF0kDwjC4SXWpFoVTdCMIlBn5krZeDCOoVsc8hX0B/7XG2ttOmL75jICx1WnVNaAJFKZ2VqxLNum6oZYLGtN5XPDVMZzAAWC7129b3n0E2QNOsl4tpdhQVneFdVoHOZQd2eWDiu0o9gFige4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GopH8K2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GopH8K2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FF9C3277B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719106342;
	bh=GqkCnufMSQbmomR9eUxFxqLjKrFKuM6xOyRDQanXVfU=;
	h=To:Subject:From:Date:From;
	b=GopH8K2R3CM51YZ3VmaOCDAgg54GRsca5vRaLj/a4aVN5bildczp3xXBfiRUDfpF/
	 ltyPb1VEM7VNg0qioyp3ggrnOtis3qojfBwRE+1c2o1QVI3IglZQW18nsU4B67MyKN
	 CQ9h8Zzt5t3iQVll7biQEO8VEgj2j3n/pUgWEwlN1JJ3q7+2SA8vAE8k4g1gOj0h0N
	 UdaHz0JelmUjctNYllcZIVuxDw5hn5bISXLLzU9vViq+PKt9UQfd2tmpb0slSfbgWG
	 7bzSMo6SrhzvlqO0i4RnaLy2G+NP6fNFFcH6N2PlvQT8pll20efhR5It4GBVrQaH7a
	 8bYbe2PI5SfTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E86C2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910634277.15662.5417270168231266016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd3813bcc73b65109e299fbcd5a758944b5428000809a1929581862fddf1a5e
Date: Sun, 23 Jun 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719106342
