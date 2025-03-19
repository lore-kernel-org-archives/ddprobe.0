Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE752116ED
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742375394; cv=none; b=f+zmhLkfrWBnz7g+HpyrGji8gwUjXEWs5nY7SUwgNqOLHDNGsguNRqIwbBowjpbNp5IBC8z1QGu/YX45p4IhNStSfG+zmQfSeIxfpRBWJE6PboJZ8546kyBygrjIIg4pw8EauKkE4N4C7ulAgbcS4s1JeHU8udWV4/7mQWpKCMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742375394; c=relaxed/simple;
	bh=bb+Uap882g6X6YqOazeyOe8GYOOb8Vsw7LrMUZpZ1yg=;
	h=To:Subject:From:Message-Id:Date; b=WpqjxhB66N/Jgoi/fJr2YXzTbVSj1DwrWERcDrOgVZkkwKCPD+01M1k44h7Iv8CxMLpQbfS5SxQvUEFGU2mhRnD49e/E/YvSKV4XsW4HqGEnAyW6qQghHkiNyoOgyRijITsK2iRZnutFNME7idjiP3Z8dfhoi5/lbbduysEnlr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4IY81o7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4IY81o7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1011C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742375393;
	bh=bb+Uap882g6X6YqOazeyOe8GYOOb8Vsw7LrMUZpZ1yg=;
	h=To:Subject:From:Date:From;
	b=n4IY81o7IJZdzeu1kyOvofK+pSUvYXr6x3rIdokihs7EJOymwoSjl6uezZwUKTbGq
	 a2HaMeXqHxoK4VlbZNhRbN8EZNObHc+vlriP1lgYzhXGHrO+sz1kEkGbrOjljYNl8E
	 E2y9hhwSJ1g9QgpmICCO8z80+4rfmrl42iVVe5qM76RQp8swMve3nxng3M6ZchPhHf
	 /RB3erqM7ILBnbGnDS25jgx+mX+K0Zap30suB1iDGIN2mANVKWmhkWasats+zFWXxo
	 WcF5Z15D0fnkZLgm8+YLOngdPvLXKp/vufpAnBES7S2cj+TyqWI7AP6ZqMQMuQXwBL
	 iH+7kAMqhYkjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BA4C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237539364.10515.5301422271705001834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678ea4375464d68cfd5c90ae36ded56676252626106450a88a33ae3ee93ad1a5
Date: Wed, 19 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742375393
