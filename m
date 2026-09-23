Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E52288AD
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790126434; cv=none; b=VUyZy3qnLh+umPYFmY+nJJ0Ovpwiupal8EljtuY2jySN89Rf0c9I6TlzLE/gp3+77VGrVES5qYfghU2aDmS4DxL9HwakppVaU90pfyFc++cq6mpkpXbOtHLSmRvYWki2w4mOM92J27PChGHXnBnqfVzrmcELs59QslhnoXYFKsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790126434; c=relaxed/simple;
	bh=fxcNsGuXhG6NnL+fU4MU1lmlsKMBihEzwA8xst5dwTo=;
	h=To:Subject:From:Message-Id:Date; b=o7c0kM6gidjMGrKEYSh+fsavi9m2xnpCkcpFEYgRQuH/yNvKQGD7ghS5M3gxtOlKr8goXKMJPJ0LIJwBFDeQcnAOItKU4rT6zd6q/QSyZmXsEyNBLeZaTE4xW+shfl2JQHwV587xtzeG9O7/qYTmpVc/MIGWaT7L6wuRBXtksSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hd+kXZ2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hd+kXZ2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E8EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790126433;
	bh=fxcNsGuXhG6NnL+fU4MU1lmlsKMBihEzwA8xst5dwTo=;
	h=To:Subject:From:Date:From;
	b=hd+kXZ2RsVnv/TFpeTqeSsxRYb0YiDtnARsg+PSFYw1LDnHmzTXkFRsPaqgUXQfM7
	 YO+zwJPU8Ce19sjGOgo0LKujAZQpYEcef8h51bmLNUhx8V3J8ZoB2KaLUX0OEWC8Gj
	 K7ykwsL7AUatS4dNiwOg7sf4Zzy9fsq/nbUXbH+0Wi0iuW9j/ujXObFFOvEmz3EhlM
	 Hk/W+5EUFjPxKJJD30Y2CdprgFnFBmM5oWBD6oVmux1e/1NkflgqPoD5kaSVnL5cUH
	 /p/9bEXOxeWEmLudxkw6UoKNKauu1cZDL4urBJyqr7shGVZdiLJb7JCzGVYuX4bSnX
	 O8+VutGiSLeZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27EEC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012643370.16070.3454817281697830694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5ae96249cc1b403fe117f23ff9deb27f544820c42b6e8d314aa03d7e1d40ac
Date: Wed, 23 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790126433
