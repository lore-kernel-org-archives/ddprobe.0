Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFAB2DCBEB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750877994; cv=none; b=EpS+ua5VZoGUiCXbBzlub5LZxtQ3okzWpjxLw2oZB6L9BDXfBSpBQECIkryAsag9ydZHAqNqPZdZJ0gCbClpg765u4N7zqwTaO0tB+frYsjwwGEP6QUL8jGhVlXvDZ3P7BVdQ28g1rVKB52ejPHer9G2MYLRkviSxIfsqLDcTMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750877994; c=relaxed/simple;
	bh=9kN8XvUvstptcok9RwcmefGr/9PWI0UjQjywCsL9Iqs=;
	h=To:Subject:From:Message-Id:Date; b=Hfu4dsXSjqsLbo+Rzax5J4n/6WSoJQ//VvDKMS8bkW4Amsmi5c6QlWOC7qlVgUHc1n6+0xO2/i4EeSQvsCRzIwZn4uAZBxE5JugfwsCLiWvGWxLg7iIkaRqaUTGIz4GA9bLdJ2OafqmyefwU0nqZU5Z7CGi+KFRSJD7Gd6lO65s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPafvMRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPafvMRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C916C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750877993;
	bh=9kN8XvUvstptcok9RwcmefGr/9PWI0UjQjywCsL9Iqs=;
	h=To:Subject:From:Date:From;
	b=vPafvMRAHIyKoBJlW2SY/40o0dm24pkXd2OLY8ku3s/NuJNBGfBSo8GRcn3bkEslZ
	 3byZiORj779R9qidQ8N0I5SvVuxKmn+u8DvR5+2gAboguu9oU/QcvS8I2o0bLAtgxf
	 wQlL2COX8tt7fXs3BkHLLB0GxcBFoJpeQ7edMnEZaY9txyB1QOCrh+V6prRQOpXmFw
	 PnpluIl35a23f6hk9l97MUECAhygef7tXQeTT5eeJZXrM8bPG1alisZuhgZsLcAoGp
	 d4+C+LL1USiGnfBRjrlp1NzIKK57IsR9NJdpxW3BIdt3Rnl8TixZgmA33h7p6gD3I6
	 3RP3qRiUV3n2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E4C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087799357.6530.12986051450886222175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6a6815c7c85bb561885bc5a3086813e1b1855bf7731bce677e70a889153553
Date: Wed, 25 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750877993
