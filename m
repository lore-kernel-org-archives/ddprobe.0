Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFC1481648
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788524434; cv=none; b=u3qeDQ8Sxr2jtQLaqNIlUd2n5K0SVNx4RQRahUWh+YlzyM7cn68m054QlCA1q+ulL/1we3HVNJlJq3/p+KlH3kE+r4mCSVbnoDZSnGuDEo3YPdr129h7bkfSTB2DNffeEcqCFNau37K3nB/iWl6WJIHqppwysMFssz1gk7ovno0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788524434; c=relaxed/simple;
	bh=n6ROS4G+rpM/jV2k6lHEXyib2h+SGRP/p+BszXE/eoY=;
	h=To:Subject:From:Message-Id:Date; b=JjpOjpp18b9BUcPj6C0qUJ+pXQd7b2Ka4C7eDVI3M3LahlSCf85Un94gUyOaxOga4+vSq+XhY80qfON8TeSbf66CCzJvQMubJlRxWA31vlyJNx3riZLkC0nNJ5Evpu/lIkilD1ZXlLwT+YypjSGQ6LJmqILF9zz5y0UOnCyEhMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjNbIZQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjNbIZQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2336C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788524433;
	bh=n6ROS4G+rpM/jV2k6lHEXyib2h+SGRP/p+BszXE/eoY=;
	h=To:Subject:From:Date:From;
	b=XjNbIZQV5+sDeVP9a/vIwO248cFuaW960leJG/1tvGHlI3wvnhpCA2V1u9KWyqgHm
	 AGYbRw9gXMgUmrAt12vNVYfjKQRCpa3qCgtRjcvSIyu2u/xdJ1DLHdEXhRUcopcvTV
	 rgRLhcIeWtawHh7qY9w99L4eFgJxwY3k5P7uDC6XYIjVMM7KEdVnqFpWBgMPvSjTlQ
	 4qseQdNEgneUhRU8Ht6g1tFhpj+s5GUkFdqVMM3whCKb+lY8fNMpJDKSm+4rhHEYmk
	 ICedxhMlvcZ3KctSDg6ha3VI+0T5HGRkEmJ6LUAloQaVt6iO+uhvN6fboXcwOQmcl7
	 d37UMkwGJfv3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE868C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852443370.25766.902955783962916161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d52ca8015cfd3fc1c7fbf9dd1c0612c5e6f29a3f61cc2ad45047b4a1afe50be
Date: Fri, 04 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788524433
