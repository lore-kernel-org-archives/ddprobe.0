Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D63235346
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738860356; cv=none; b=P+KSlMZwmZu0WQuVJ73QKQxgG51NBftOwfOyMzy+BsMe6NqyiTilKYvRLBnBa/djAN5izAj/b+boYnIg/iO7piFVy5l8hjk9aiW4Q7EdQbA7XuXNaLIZhXAmVyjmcmcSoiiRkvhw7UdCLHITfHcA0YnoKfIWTVvlOYsrJT2l3kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738860356; c=relaxed/simple;
	bh=EiGIVZZGHlvcC2vVsnLIwDgMgDvCLe41AHoAa7XemvA=;
	h=To:Subject:From:Message-Id:Date; b=Oc+aqSgOKu8Pi8y9qHKUu0GlW6wWl9CKFcbZFl3l5wXq7FLauFkQ8XcFRL829YYQ4Pu2/Z27xuEEOcOj7Vkvy7k9JShSf+y6cdL2UDaXV5lI9H/5ZlDUGBQep7bBzR83YkEY43ga9BMO4WWeDJ4MirBFFMTc5dzV7NoxZjJFKWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib7OxcCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib7OxcCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B486BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738860353;
	bh=EiGIVZZGHlvcC2vVsnLIwDgMgDvCLe41AHoAa7XemvA=;
	h=To:Subject:From:Date:From;
	b=ib7OxcCXj/86YRca56rgzht+io2pq9BvakIxnF1GXefW6p9RnuistAZpWmI87KBat
	 YZloK1I7hMkBjI3bWXQ8cfPna+7jX3YdXJZ4iUoaddExF4TWDf+vbTDhMe9cBJN68k
	 x1k3GhMUWNylmPMs60+OBVf+qolnHRNl8iBWjHQKLh5YFvVT23h4I4mqIb/1tOUOY6
	 SugieluL5W/+/eBe2UPERcwiEBJr/thgSoWUaiEkwWxQljkQqPR8wHhfS+bbi1toQe
	 HDOJMlfo4QlECfjDvJbfLLlGl/5BOsTLvklGuWrss9i/byBJPdrcnrDm9+HyKZuEen
	 qTPos2eQf+j8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E17EC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886035363.17673.2126792197582794560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a2b7a701c20adf25a8155761c2e53fc8410448fa3dc70fbbb3d4c84ea792fe
Date: Thu, 06 Feb 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738860353
