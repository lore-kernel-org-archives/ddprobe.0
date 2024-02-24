Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1215317BBF
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708769297; cv=none; b=r83mQ//QqkLH/Z/J0i+ijSyQtZfVD5GDvgDu/7MO1tHzlMiNgpaO7nFoCqJhBQyV2iS+QFazr11wekAB9Gf+cCZzvVi2591nponL0f+gjXGJXWoTXpxN3CQcyoRynad6upV9OGWQeUZBb5hDldEVkAWPZQUEbSycH0lM9FvQsRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708769297; c=relaxed/simple;
	bh=9vVluBt6gOSyPhypjKXal4Dq3PzgNVlvMMwbm6RDGP0=;
	h=To:Subject:From:Message-Id:Date; b=hy4gXt+6TSrw1Kxdul2Q7w8QBW236sB+LCIo0MyvpYDDL0z0ra3DZdzVBKwNIytfqw9bF0cC+B3y/SCLIbnb6/xhCH9b+PGPR9K/SEQj68CuBNTex38l+7LZmQPnMohZXzM9humlZOjtax9Uwdj7WgPf7YmOZM7oNA7kzDSEl+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFGbOb7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFGbOb7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80450C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708769296;
	bh=9vVluBt6gOSyPhypjKXal4Dq3PzgNVlvMMwbm6RDGP0=;
	h=To:Subject:From:Date:From;
	b=JFGbOb7weqjbl3+uR3Zuw0ToYvJWouz8jlv69mbmB7+Smqnf7Oe6XxGRUkC9D7wyx
	 3PSTNpTAxFRirDSeSYGf5nfb5F1zKz7JwsP5w9Ko/OeQjX8XHEm2yHn8UPseLGMiq/
	 EuAUmWUj5IW/iKrKHO/KRYgVKPWBREegilUEq8XgeZA+vCx8xjz2RL0zeqqHrNwhle
	 IFOdt9K6vPbZNt5zJyh4DVefXLy0ezgnB58K6tQYL6buuKKbOjO1Lk4zujSk1U9lIq
	 HgGoPqyX9OoGclaLxTQ0AM0JnyBL9pk6RiFzO/WzAJf+Uzglh+NZiFNPJ3ls0+v8v5
	 rVrmw80l2foQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66ED9C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170876929638.21288.3541162326747082406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13659d8dd709198ca169da6db12c8cfd12f1df8ef5866bcd505e810c8b222fb
Date: Sat, 24 Feb 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708769296
