Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290E3519934
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788549035; cv=none; b=ueGwGwQZTE+/4Wb1ISnCF9OyHq/xhlQWHZuJgoJjN7wsyPsfswMZ4fLJ9qtTqD72mfiJHP5b/7qMLgUTvmCMEUCB8N8gPpSZCSw1QHI4gmoMw4a9+fgw/g+iRb1cnZwqastSlY2ZlcoczNWEPwRyhwst+zosWO/GncAye5fw07g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788549035; c=relaxed/simple;
	bh=KlAUS74Bg0S6D71GBFBi6P+RSWUDUccdl9uODawWwmg=;
	h=To:Subject:From:Message-Id:Date; b=n79vAfWIVQpehxNJcGXPDs7uAZsk+xDEvAX/4ySg7BnUc0HW2WzEZAJwObgNRGgnx0umhnUj1CBghEZOsHyss5OxRYPVlTbbvEPhto531fYysRFIILrwkZ7n5Tidx95GGu4TJxIRxoceZS+RBuAQa4zpurgSzQppFZ8dGQvxkkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0J9BFus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0J9BFus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1550C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788549033;
	bh=KlAUS74Bg0S6D71GBFBi6P+RSWUDUccdl9uODawWwmg=;
	h=To:Subject:From:Date:From;
	b=A0J9BFuse1kBqG1izxErZnoK282lDdpcywotk1S4Kzv+T1Fo9hUs6Py2E0wq2liQu
	 Y4W9auRWJnbKumxChd5JGeI/7+tSOY4pgs4PGxQOLPXZ2nbiH7Ws+d6oecy7e7OPZB
	 bLhEuXxg7GYTOxfvA0rMm/ZqZt3+ZYcA9OdyhCGBzEAOe/mLHzCtM4ccG8YcoNIk7e
	 XDiJQhRyDIb+uEWE/+6xnQao/7uAk5xqNASy0CmwNMNPSF7+TrXAZa9sMov6lJn+wE
	 FDnyP4tJk5xugd6CfpaCdKAa7EIgWAmWYz6KstmGSqlJttpxsRbagblDt+zxBLeLg8
	 juhkfM1FC6Riw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC50C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854903371.14706.8258120278561712888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988d4af074c7bdc37b706245a0696c3405f02038693ef76f5edb65bbddfe22e2
Date: Fri, 04 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788549033
