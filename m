Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4709328682
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746943794; cv=none; b=Mi5180yw3jg76pKJ7i1bSVQThNmqDF4j3qwjc9nWi9PQ8JCkh0aAWezI9hHke/odlHsQL9w3eCaUQZq/rFoFWpmpPg01knyj/+ogTTJTuQuAyDC/fZNHn1kNS7I9CsI558aevQEUpFhiMR11Ydl0sjBXR+n0PgbvaxhWxZG2L+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746943794; c=relaxed/simple;
	bh=ktph/i56pzZZzIHXEErG82MRhr9JO4BPMP0iWIpZ3HU=;
	h=To:Subject:From:Message-Id:Date; b=cD2/zxAtr1p8FXIH94ykdhUSM8rTOrIpou4NpY7WjGuplIHcTeLLMzYlqJ7lhGwOPEsBRYK42fM+Z0yENjqQxXXyaWwmQFr5mYNOoKyM5bIDb6C9JX2P+NoO/Xx4GbUHkCryC/7PKX3NmSeRHHDtN8Y/e9qOs6EKD/aHlu1mugs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p49iMgW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p49iMgW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10EDC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746943793;
	bh=ktph/i56pzZZzIHXEErG82MRhr9JO4BPMP0iWIpZ3HU=;
	h=To:Subject:From:Date:From;
	b=p49iMgW0v3OvJnhKqabBiX95WLn8iF+LPi/H/RToNnbOaU88iFTB6unoV/+Or7rWc
	 gwvE5zHVzTTo2gw19YJ+T06VD7EScC/bOKOYl+R8JIZiBRiMP/J8zZknjDCkh9npAe
	 qQtBe0VSX76qJvqDLqHf0Z4okIO37R/P7583/AzTyd8ws6Yj8Oj8NEdmTT0jk9Fwzx
	 B20v1IkB6wgkDCYMcA7JwP+V9ouyXsfkmPze+YlL8UhqiTAq0FqWgs45brx/hzkK7S
	 eMT603sKfqqp3twemcrYOxjyH99vWtL5kpTirZt90duRMub1O27q7PCtiMIoHvwZz2
	 GYwHGHsttZHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F237C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694379357.23821.1254193189861791088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b2d9b556420764be07280fdda393385f8fecd2c83f7bd56e4499be566dc394
Date: Sun, 11 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746943793
