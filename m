Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3FA3DAAD6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786366834; cv=none; b=khn2PebfitO43CebxmLa8ylmuuwrUXn/dcOJBINqaxAE+jDR+AcO1Dpl21EPgNG3+UuCbjDUpubsnqCLu6qgib+oMHSSSxqSrg9f0v6tercP/gsSM8vlIM3xZ365PmaMJEGYbuAZDRiybpmQul+Xq6W5uyv3SqyeWv8jJdaE+JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786366834; c=relaxed/simple;
	bh=ItZBc0U5i3L7gRP4ff7O15uP3pU4BcI739oE7wL/XGQ=;
	h=To:Subject:From:Message-Id:Date; b=Qj1AYo6VTNvW1peG5/vlhNCshRgUxPpQPUkMYJKtLfhQ8WmRVWk2lsAZ4eJQh/y50nM1w/54a0yDJtnlAbAe0Op2/OI5x9KXW9KQQQwGYKJxUjQZ++5P2iwMR0ZFBGN1ov76ErDHINAHUP3ugQEo3hYktowxZiu5VtLaT9Sw2z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edsa8Owl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edsa8Owl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44FEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786366833;
	bh=ItZBc0U5i3L7gRP4ff7O15uP3pU4BcI739oE7wL/XGQ=;
	h=To:Subject:From:Date:From;
	b=edsa8Owl9aHSkFafATtYg/Sj/8a9vPTaj/fesHL+zYFqPUH7ZYHp5d8ueoP4qlfM6
	 3WB+A35elYsTs9qMl+v7L8oFtT8eSulpeCluF5j86wCWqYyyW6xk/4GbF/OLwH3n94
	 SpyNzHxKoPLqgn7PQwcid/+LwWt9+Ku/+O2NKyI6q3mKEyVz9j9lEc9W5GB3BWNAST
	 J8xAjLydhjUC4d+zxPgdui2PrLloJI6POA+SpRDUvd/RD3rTQzrb/V8EOy9i6Bjvpc
	 NZC+10dxNxZrb9OOAmY01JFbYFdLw8/RF7s0T4xsffnzUr53nz81+JUC6tycEwyXP3
	 W8q9ILhETms+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2438C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636683371.19308.13822800661308840049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5797caa5131468b0ede8f536e003ac60a8ccdb6a967f5f4b410297ffe240537b
Date: Mon, 10 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786366833
