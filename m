Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324BB2F8BC4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758893995; cv=none; b=cG6Avus6qRIa4r+FKS/JoOalIXwy+YFvdLpZ4VM2rLkZRlt2j5wD2IN55ccV2xq8SboDYJVaniwGksbGf5cdvUG5YtD8phkrQkzqAhtHe+WtWOqsulcO2bx7G1VjHoAz9FkqcdAkOChODN70GE5aBMel7UOOt6hErUmV0jxS7Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758893995; c=relaxed/simple;
	bh=fFQJrg7Wjoo+x+P0i4gnx6+6tP6xQnkecU9eijuDuVk=;
	h=To:Subject:From:Message-Id:Date; b=LqwpYqgEkBDgkw2R4AlX8IY5V8i4idVT6Sj8NxD2iTFkcjF/n2MkGjcqmCZ3jsFUWWCuZH72JrrKhJtft0CK/X7j9S4A3joWLPq2vznMqEzyFZkcdkzAAv3BVe3JCmTsUU+ZgMzHamZjtPjq3m+P0bslpXZ4ggPoIYHgmTycKRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0eGb7v+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0eGb7v+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF123C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758893993;
	bh=fFQJrg7Wjoo+x+P0i4gnx6+6tP6xQnkecU9eijuDuVk=;
	h=To:Subject:From:Date:From;
	b=N0eGb7v+hswsc7pPm9QtyQyDlVDl5FE1qD6Av2cuPJ6LbGzPoIj8lwWVSVz9H2w2l
	 hvqVTa8CfTWmvJOLkEirLLb8kTv6Cm9WyMEc1HCAgfqS5yFoNgsJOj7x2yQTVZzyGa
	 sAAqmGxvCwqeSlCTMNHuZFvnVGqWHo93a/DY82GCZy3bQbgUdY8YpXSR7Xk94r8Lhn
	 ezWV+e998MXVGeyi6XVOHwCw4Kt/YI/hvdYxvuxRlj2SJOxICYR6WF7LqN1aEEt3p7
	 ocSXdKRARomd5GPb/FqpF5hTB6pM1M21pgFA2QzMF2gLYtbt+EzhThQf+4EP8MdbRu
	 2+2YHSifRj9Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C745CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889399362.7340.16277512740022778211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3bfdad65d7df001208924ec5546a8a334831eba53c5ed0c6ed89191c3f75f9
Date: Fri, 26 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758893993
