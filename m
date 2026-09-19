Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DAB2DFA2F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789807234; cv=none; b=G2ND4l5h3pvEJmrrcu/cbQyGgCB7KF16D1loqE8Qr6tOHb1BWe2eQ9qQfpN/G+F9rccERdAUbyKa9NaW62Q6VKVCTzV+vq/iAPUk0psQmhf7uAf4LVNimvQH+kpRqQ/bqzRNp+/7i0S5zX6mZ/zJmDIgIEN3fOWeumxGc7Trm3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789807234; c=relaxed/simple;
	bh=7o1LPOJ3U84MPqPJ0UGXEK/g+zGUeM9B+KyEJdCw2W0=;
	h=To:Subject:From:Message-Id:Date; b=RLU/TYUvKqY1M6HuDR+vM+2zqXHKDnhYaRSZ1K3mXtDmvXcuHW6f1gjYqpNMEzHt3hOYY6Ux7YU/RhDlCtF7RT6zgzTDlgOqmhB01XZrLA02kXn8gEAfWoETyi92I3vkqqZ5JqQtyl1xpsOL4+xwtUA5xE+1P6wDHR8/qzqtDYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtZpn6n2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtZpn6n2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2885C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789807233;
	bh=7o1LPOJ3U84MPqPJ0UGXEK/g+zGUeM9B+KyEJdCw2W0=;
	h=To:Subject:From:Date:From;
	b=GtZpn6n2ZXrBubXzehg4KYEyult7r3jqvL9xAHrRjQTIv5ZLKynaBsFTNhbtCYOxT
	 VlN5eQJULz9zvec9BQAm8ZtDDNw2gBHBsXfjuTAeBQ4Q3WcMB+fHkCsTa+zx69osqd
	 /Zwqh2Q1qYXe50QywcS1gDWzje8Lhcn0r9EtHaEqt/JBHW/rQDA8QvzQmgZpoVHbvn
	 sINiF/WgnYUnj7Dvzg3SEYUuoaElQFLOJybnhuRjbdZVPo5maF9TwJaLJPz5CdS5ky
	 qU02ZnY5xDsEAFeG9yREaInLrs8ajh898RstBAnTZJcrZqXScvGxbQSnK81vT5SOwA
	 XoFBKoB8GG1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD21C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980723373.4982.9853838631985650346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6988ca86ff7dfe9812394131a4c66d52d29b38a5c5331762e4c7def4f1602bc6
Date: Sat, 19 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789807233
