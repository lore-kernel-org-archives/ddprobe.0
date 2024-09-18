Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407A174C08
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726646154; cv=none; b=LPhOlnkupjYfHWse9eKdRhWbNSi+7wUaR1TCK1oUkvsTOlvIqJOHDC21ZyX2HXhI2CLIIKxX8bB83KjTS8xpZn7SPywuEP5O/2JlJTgDarW8t3LC3O9ODXT3tLW95ymx6/jj1Fo+hLJjqYDxjadqo4oia9h3ZA35RSqvlOE8I+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726646154; c=relaxed/simple;
	bh=2iYp+CMW/djl2OQ3ipWO8CEm7V++Y0ZSYGMo2awj1pU=;
	h=To:Subject:From:Message-Id:Date; b=QJ57kEBYpM803SfSWnylNiPk34wLT8UUh791weXjb83BY6frVFG3vPztO+luB/9koJkgTSwd29Rr/Q0hQ0hLmvAffC+GdNz4cVcQXQCKx6hLH/GaTkeLuGyJNsmZ07gZfyjPsCrGeTCOTUqTxWG0Bb9g3QrdFl3UllAnWlXhXjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJLZkgpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJLZkgpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4875C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726646153;
	bh=2iYp+CMW/djl2OQ3ipWO8CEm7V++Y0ZSYGMo2awj1pU=;
	h=To:Subject:From:Date:From;
	b=kJLZkgpm1y70+LaJ8dfgWRXSNrTmWQC9rA5Kq1btQNj1UHN5OAk0gz7LwurSeVWcd
	 n5VO72UVAoTF1g92c6YXqjWiGnzKetmaRU9MgkLc0B6Jnmu+LeCNezNnqLQ3mUiYVk
	 EEJdiBGSREsBGb+zIEiVDZOKPAxystui/YPpNwM+EkOqnk6WuvisHlmRCYrT2a1JR7
	 LnlHiX7Hyf1eM5SkPzuo1MWTMUwgGABB3zCzHqqPlSgHkIp2I9T5ghtRbQxwVzWFJ7
	 Hviwq5XkmtrmfgpTcFy0ziDLgDBa183/dUIvwDH5gKWPRaW2yA4AjnoUZNTMKbvcpT
	 HJQrR4XBgmK4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF84CCD18C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664615364.8058.6296282591044169553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395d62fce38963c06bf4349431305c9a159dab509eae9bf539d42195ad6a130e
Date: Wed, 18 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726646153
