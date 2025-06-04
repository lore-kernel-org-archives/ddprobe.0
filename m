Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF87238149
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749007794; cv=none; b=D3Wh0pZao8oLtO+KPJEf/7k1Pr9etQL79+PSI7Oh7lNg55KBqQoH6yiKKQL2W+O5s7eW67/Qp8zmZf+5XfRrH0BFZGbolVpiCZQqiO4qizpZLutW9EfhDHCyYpJ0MwGqYDhX748jaZDiHPEXzrqoCBupbeCVU8MUo9Gc22AsKzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749007794; c=relaxed/simple;
	bh=flyCm+Mi5VHWn0c9QULkkNcoHtTJb16fiJqHAbHTrUo=;
	h=To:Subject:From:Message-Id:Date; b=gmofddd3QLJ40n1DCq8WpulKYr6DCtn4rbrvY/HU+Pu2qQ6ZWikakAeIlgzj+LeCaD5LXyD0c70m41ND8z3OpXw6uJ7J7bEQKfQJcFlt94KsLKQL9q8bg8Dlai9JXigYIuUlTSlpz5Ls0tHl+ufgKJ7j5HsHVEdjN8bnZ3VmSRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjxWv6zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjxWv6zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA134C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749007793;
	bh=flyCm+Mi5VHWn0c9QULkkNcoHtTJb16fiJqHAbHTrUo=;
	h=To:Subject:From:Date:From;
	b=LjxWv6zvHoyl7WCguvuBwafXQdVlqeCOgLSRNlga7klKuYmnyS9+sWkXWHnxcIZC9
	 c2CatNF46WLbkakyXpnVCoou8ZsIDPRxlXDaVlBluxWtpzTAhakZyWJWELhnjJkq4f
	 MIAH/duAEbvwokoRzwv81zxAWTG9i0xyay2doXGvhh2iXidAF3g1pPwwhePJlUlseY
	 FFl86zODG4oFqTLfIPSxnfIYziLG04bDzH8pjLbAzGyk+8HnoFz0jOfRFECBs76Mag
	 798c8A5VdUeQq5MzRLr+HzlKhVkZQPygoq5oc7WEpk3F0W6Suut8cBsQ1/PqWGddk6
	 kNp2AA6n4O9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CBC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900779359.13703.3814869826766032819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a521e50157f195b00cc241cb69c0453fae1dc3b2fe821258ecf24c92063bc018
Date: Wed, 04 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749007793
