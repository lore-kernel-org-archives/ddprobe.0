Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DA61ADC97
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759072195; cv=none; b=CfxZEDCf8g+Q1pr+02BQntU8iJHxPxcoEPSSP1IAWydjGoDgwXDvE+eWueQdWD6eraulCZrTnac0TpYpmxpcOxvqKLtnOVyWtynfbFYt6PmHSmUFgPmYPSDbCpQ85nB57seBLKBBw2BYVab6bYc/FphtaP3Y5xLeomjrhen0T1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759072195; c=relaxed/simple;
	bh=pp3jFK9O4BPd8ABS/KmwEdqk0zlBCaQRxZQlnSa7dJI=;
	h=To:Subject:From:Message-Id:Date; b=b4CqVwQTAV74kMhTutWfh6k0WzkOkwFgpgLhwFBOaFaWmW1EOF1jnUc1sSgBT9w6avNedg+kQ795PmsoCnm0C05QBOLUhGTuqLtPN0rqbx8j+46IIeVJeOhDDhHSIDi6HGKovkzF0o3piiu/dEF7zQr8dmm47MD5etyNwJpFwXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFW0+hdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFW0+hdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A392BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759072193;
	bh=pp3jFK9O4BPd8ABS/KmwEdqk0zlBCaQRxZQlnSa7dJI=;
	h=To:Subject:From:Date:From;
	b=AFW0+hdHJ4V88k1Kuah/0FMj8/8P4mEVNMtOUyQqT98YPGqHWzug68ePzwdjIWj8L
	 IGrSjuyERG4sgYigEQmAdws9+E866gqOxQNHtH9VlwdaC3yFNyIeWNueaLnilIRjNb
	 bKDwahWb69L4EpaBWEa4eYyqbUkxmSH3m2sqnic1JuUbBTA+goF4BC9CfwFQ0ewIov
	 O7Zj+zegzKYrCh5TuOLQvqlg69Qd61/3qOIIWJNdn/Gq9Ls0jfyudmHqRrMJ+KnVs4
	 r4KuR/4HjK1w74xuMyU25M2Rx/H7jCBmJO+Y4Dykn3JfONNmVPx1ibK3Z3J03gJ6A7
	 a0xetzdYC1BXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F4CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907219357.22016.3368755489728458897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ba41e99ca6435207c6d9eeeea7ae48d04e72d6b578320ee9c75a68d91f0fea
Date: Sun, 28 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759072193
