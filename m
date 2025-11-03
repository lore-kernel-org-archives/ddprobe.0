Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2A42D3EE4
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762167594; cv=none; b=VhrWSvin1qES81kP8swr2FDSjFAvSjI5vgxEiefe1jObJDeEYvluvToailE4NjdJxtZirosZZ4yMzz+bsPIoj102+hFclKfIs9eYn9/P+GSSbpwJ2YnFb4AjPP/9ja9tUFJJZN29le8KggocUYPk1lZ0MAVNtnmJUfoJUwX3nes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762167594; c=relaxed/simple;
	bh=iiLNmzBqrnUn8MPS9h/MVxDeJH8pL5I/9peQkgb5Tn8=;
	h=To:Subject:From:Message-Id:Date; b=g/l3344CIW7Y5vIZhcVjRiLLY2ypJpyHUGv2jKUr96vW4q1ahmHMLAGer98FEe1wjGHitLohKW9t08nYuVMWR6DA6c6mvay/u3TikqU6WpezOVdPx+TESR8iMSUrcHy3Oeu3BYMSDj3vTtE1iMbqYd9S+cg2RG0EdJ5AGRx5+u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJN1bSd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJN1bSd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65D8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762167593;
	bh=iiLNmzBqrnUn8MPS9h/MVxDeJH8pL5I/9peQkgb5Tn8=;
	h=To:Subject:From:Date:From;
	b=dJN1bSd41UXMuGtDbb9VfplaTcC++IBulGShco4Yw5qNYwmd/jhtRJHYMtk7xsO3K
	 fg/Y9i/YFMW6Tv6Jvs2GsR4xV5To5RKGIpLtTAU/DNidTB8tZUXhBDTgMfrBZWPiXh
	 iBeQPh20i5lctPoavfzEO9wvkqPt49xIIjpnQGIG7L+XtWNZ3v82ztFqEzRGjYxLgw
	 4b3tig/cT6GOsGqwLuTJspR0FSZ+xuugmaGuEWndLMPSKFvR+sADZMIYhyej7wdc7k
	 Sy0FPq/BghyGLjA1YoCPkDRfLQaoMznG5eBYcjVlXRQ0qxdQqg57+QqRitQPdwaD/S
	 wYk5BOOiUqG9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AFBCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216759358.11110.16965811367592529615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e915714c7e980b898cdd189e90f029090d8139b28e51b4c6310297bfccecc4e
Date: Mon, 03 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762167593
