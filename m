Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556903207
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717367723; cv=none; b=jHZG7AVWq+YVHlvOluS9UX84Wm3tqPNj5CSrebxgbht2mzDg8PAPn4HADmF0oaCTLt6rCDfhAcct5heExcs4U2rgHpkOAMIEl9cxYBWRKaxpO4nlTmyYQIB67H4f871tuNfaIhtrXAHpuUVQq3cWc67Tksf/P8tkp0zdK8Ivg8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717367723; c=relaxed/simple;
	bh=nAY/nNoOy011ZnKv+uzGdHw1/9UKJSG/HqfenIyBhDA=;
	h=To:Subject:From:Message-Id:Date; b=XIg9wmSB780AqCGWDwZwvgVbrjXcO4W9/kw4EylZ4dNUxw6i5b5QBTJgz/4reSP49QDX+GzyxjXwcBIS+QdHauuQBKr/2qD7gGV78W3pNOLZN092ouOox/ZJqWzJFDdXnHtsTbQ/Gh9sDKES8fCd2uUKjQtGvrZNQJr+toG5/+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTWnsRyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTWnsRyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A16C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717367722;
	bh=nAY/nNoOy011ZnKv+uzGdHw1/9UKJSG/HqfenIyBhDA=;
	h=To:Subject:From:Date:From;
	b=gTWnsRyGg8PwPhiNFIRlh0HznDEPZoz321hYoK4D8ksLJxMClyjdATJD6mgS8GbIw
	 JjHPIbh/7bruIkXoz7NX71/nouvfSqyxaZqIYo9dTWYCKSdLewF4NOrmhrCcnxaOUZ
	 gfaYs+zpIFECl5g792bTIRFFr0myBhivdbtcQ3XqGsWFN+0t5RUNH93rBP9gsdNm7h
	 9f6cxH1AnjizStchUHoKZ7+9BEiiwuAbYG4kBJhE8tsqjTS9IJiwjwV3R3C0GOuCkD
	 hfM8N8iWkTg195Tnfsv4HA/CgZO3GQvjGZh3ufvIW2HOJJ8Dw9+ovXxZPlzmxD4Ulz
	 S47wjK3lCh7Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF397C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736772276.30996.8050233979713358075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72c40209c660fc6ef73ce8b3bc41c0a11be709cea571906e65200038dc6962c
Date: Sun, 02 Jun 2024 22:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717367722
