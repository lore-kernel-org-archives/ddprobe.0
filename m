Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D32BF016
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757708394; cv=none; b=dI+tkIXSJ1rxziT2Hp7gsGgdASBCXrc/voaT6hG91qlfjb3L+KEElbEF1vqhzxjP27meCrv0O+J4L9nic81PHMVIeCrlG5WJ2VLQppUbyymTrizggbqbysJPkQqM9c/IChOGale51/04iaI5LjgiOPw+cn4RaCfufrvYNuS7DBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757708394; c=relaxed/simple;
	bh=Se1hafQDkzVdgM4JLvYEZ6lxjWDML7JctojIDH6psWw=;
	h=To:Subject:From:Message-Id:Date; b=Q8k0BV7Wn3XHyZqOOVVhH/YZfVxtP+agqqAkKr4bmQt93W4fWQqz7OtfAgnScF6FTSyO/2b0FS0tM6PvwcGBTB2t3rKY+otfXKnqn/hYKXwwTVsDbWmypn0i/KMR9ei4Ch88vkU8Db1F2VlFdD2fa1dN4NWivaNYOAdW1fTeqoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1uDWmvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1uDWmvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C06C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757708393;
	bh=Se1hafQDkzVdgM4JLvYEZ6lxjWDML7JctojIDH6psWw=;
	h=To:Subject:From:Date:From;
	b=p1uDWmvOhSsxKEQZronEXLfngXiFywdWgTjawiF5W9sELFiw2YmsZ34Vy+/8yFQZR
	 nDmEWLU7gxEHsV37Kq/2j7NqBGIML8Mq6KxJPHJH0neAddfK108n7w0YAvMznLHEnd
	 XtLrBSLK2jH/KJlG7n2xoPS8i/5ae2/3ZVwgNvJxlyomios04zL/YMmpMktgCXC5Uk
	 Mtc3IWfqIq6zGQX6m7gNSObckzGQe/wr+uH5zp9NmR6YVJcbsj7F7xuvigWxU2IoyS
	 q/7Dniu+tmZFWG0p6HiiV9GGTEFS3jJobMG6Kx1nBSxRzizHOjDRWSdJ/bsYEhONO6
	 C299QOfWBe4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937AACAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770839358.32275.16998467939165213997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0601799224cf46889171db56b1c4c1ff617e73c33f1096f70fb12668fcae04a
Date: Fri, 12 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757708393
