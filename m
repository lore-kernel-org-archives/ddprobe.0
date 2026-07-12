Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377F725776
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783820314; cv=none; b=F9hrTDjnD5mJsLo8EfF5ZZ4fl7QW64LCGOgu0Hs8MF21ZUUc2sCrCRaidJCfcVHy+K4leHfCY/rWn4JcO4XXCNV6gG65ARfChXLy6LfK3nJLTOsFrnxtaCq11k6pR1ctIw6dtft9QbTsHLwkYTgKruf+dmxhIj1BXaJylCkqxiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783820314; c=relaxed/simple;
	bh=pwlF4kXGNo6Va3kGCfABr4FSQhKvcvSklq5GQ9UrvoI=;
	h=To:Subject:From:Message-Id:Date; b=h/vnoPXJvXnettIw/WZIIVdlDbGWclHvHrz+w6Q47ZEZH0K3qDfCuOpiUrom56kpjE9j9MPL2Cit1QSsdE09bITHPPIoH7raq2iObtXgbd6Bpyrarr5I4+WewyCgsQhlwlqtJMwCuBF+rbtvm8W2JO0Pcn3PvNr9k8BaN80/A5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbh9tMxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbh9tMxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF14EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783820313;
	bh=pwlF4kXGNo6Va3kGCfABr4FSQhKvcvSklq5GQ9UrvoI=;
	h=To:Subject:From:Date:From;
	b=bbh9tMxcAPvqjC7WXQlZysd38AmA2MQ+6z43/Xa+TNV5aov62MjjXFioxosfKg5jE
	 5LK+U6icUe1ebzb5J72Hy9bjx9J4n3ncaO0RYI3HiQgPvRWpid+GauCYSKA1Ole+pY
	 c/E6RmWohrCyjK4GGBEQW4bVaKqszOfOqxvPxf1UkJjbnS8DfoEv8OOuQomlnIsaRa
	 uiVAJXoHuLQHRzg7bVj+vUYhrpCp1ZBb9tToYumKYJGXH0nPFK844G/oIfhRlFYTF9
	 6lyeun+RWyOEgZr222AaZ/d0arrF2F270WFZLmNECb9e9ZZMe8krxpef4yUh9Xq63g
	 RgDHFfWmAll8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9A1C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382031368.2240.240163277453040590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ebeb0cec27c22f27d127d454787abf6a3e24e4755fcf554d43f0bfae3cd925
Date: Sun, 12 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783820313
