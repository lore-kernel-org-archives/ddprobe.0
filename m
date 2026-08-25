Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632E81A680C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787647834; cv=none; b=OvTpLr4rE2uOhZwXl7HXWRlR7zE+EpwQfM+M7KmINZGNX6YGdwMSk7thGuNj3Lz8y6XtfBvvf65kbTB+HHk7Uo97PnT4v44Z+Idek4+2WtR0q8nHqc8VYmrizjcI7yJhLHP7bTrziRXaRmQk4b4WSptNahK6SG4rIfFCX6sbO8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787647834; c=relaxed/simple;
	bh=GnHdn58tXh2jdeUNRt0a+eAg4D2J44KrrqzKigf9Ixw=;
	h=To:Subject:From:Message-Id:Date; b=ABHdi5/g+yCi1vqjJmSmoeFyy6TngKslzHplI0kqiBTXW1HKNVv8kKWrcjHcP+UfSXTud8vNmNtrq6DkvKPdNiBoJ+yGaVYAyLT96JHTZlw2kDHcNDtNfkXX8wH5P1qLmXqYZq4hQeJloBX2ZP25+lTc/pYM4EtYdieFEomCHQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gA40+cNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gA40+cNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CE4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787647833;
	bh=GnHdn58tXh2jdeUNRt0a+eAg4D2J44KrrqzKigf9Ixw=;
	h=To:Subject:From:Date:From;
	b=gA40+cNsii9iJ0z/ObrAHOM/6wNn3abn1Cdcn4dJ02Qy0RtQ5WL5QW2owJR8Ff/hm
	 AU5/ayPn2MzRN4yAUwzR7DIlRY2J+08LAXy583+/wadbsvFYMS7RrJmlWcAqcMTlXg
	 A9pwjfZDyPRhj/7CFQhD6679jU+qAlHHN3477OgtArCkDkOMzqhVvr6oRJql/wbh+Y
	 bdjlelWAy6X898ShtF21ahRGZkuDPoYNQZc+KT8NnOeK6LKZ45HtrY7ejIEeo3jclG
	 /AbBDy5dkdBc9+1MNCUsdn931szGlpigoGcrkTNXqGxqn7NGAZMSm8zWNXQLGVcCkD
	 sdE55709pwQ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9DCC61DB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764783369.3563.15197815021508413300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f66019617d0fc106a4fa48a8a11c53ba3797cf4d45d6899e16b8142ec795e6
Date: Tue, 25 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787647833
