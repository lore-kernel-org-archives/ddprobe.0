Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3002B221736
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753277394; cv=none; b=DDjxVYdC3Jli9YyCqO4euS1bo33TbY/OqmU4VD2K/Chr3NHbCyW0u19l9Omm3+TUzK+0KdBojeS8XSSm8LHtANXJmSapJL4DDhYp8xllcNiq9uvqVUhqRy6A3r0MyYgsuWrujYQBReuL5uGNkqAKnavNwJwpBqGwjTq7zieEYNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753277394; c=relaxed/simple;
	bh=LdOgP3tEGB6jx6yCjdXAvBz6qADiKWv81Qik53/lfRM=;
	h=To:Subject:From:Message-Id:Date; b=EpR9antKlmAraK0aHc2Q6YKfolKpuTkTmOLYIrzMwg/PwhhMGtYHvO3QkfGj4Nzd0Pl7T9I0maQVtlY+0rPIIXCLS7P9rDWpWjTxrun2LfRWG8e21RZykr3GRcmXAGZ2V8Po0T+m38WIloqYVfqKyr/H5+g2edIRcbi5a1VcJPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQCJL3PM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQCJL3PM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07BFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753277393;
	bh=LdOgP3tEGB6jx6yCjdXAvBz6qADiKWv81Qik53/lfRM=;
	h=To:Subject:From:Date:From;
	b=fQCJL3PMf7NXwMgMTkVGrA63peGVsdjyxGg+uXpo1yY3ZERfAzol+w3xHP6oCowlY
	 8J3j8kEw8onqXIBroyv97OuOIo6qGIM01XIiz3AQO9lwV05AM69DJQW18bEzv3ocBV
	 NU3Xxjaeg9j52biezlD8TvYJYoeEMlG3Q0Quv9wv7bpdAZKjbHOQyJc7Hp8jR7FKCK
	 jHqEalEqccRdR3z2jjj0w7klQqJa2lYHBsCx6MdLHfXelBe7HZnpRZHuVbUElkbsJH
	 QRO1WuUYQ3tX4/mcHoqX8H9y+GE+HwtFE1ZuPLXT+db9kKJYNwtL+EOtWgoeEeYM/w
	 aoykPeaQFlCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6CC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327739358.32164.4095075816264932876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ea79d6b9d380f7dcedc879e671a6f294d3d7533560f84ea1417d1533566a13
Date: Wed, 23 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753277393
