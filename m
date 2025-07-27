Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E23C2080C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753656594; cv=none; b=swQY1NHU18T7xcjGSV9eZuu5NXeisVb4UTd28+73S/jQy6uUB2OWC4baoEZjfipu8Dz+pvobboLyifxLOXr23U7HqDnpwcKGtR91Zbocs9vemvG1jWEZuQSFPvK08WZJhDPAu2g9M6rm1GgYUsUqKXONPVUeo5st/lZkqe4dkfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753656594; c=relaxed/simple;
	bh=axlBLR+xfoplW/0OLKD1lA85TU1dZRtXr2arPvdEBsI=;
	h=To:Subject:From:Message-Id:Date; b=CZKEZOZ+xJBOGGJcTRJ/XW4/WgJo0Roqoxw1aHN0JImpKngzHWV7PjlSKGB0/cGxhrW+XDhi6NbS0nXfK4ILhwIOZ9NM70dFt7+9Ztt0bqACwpQS7sMHnWq8fm8DtLuCcKCaee8VHt2BtKYSeIICednBcjVYkGoaKRF8Jtmsblc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7nmPbC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7nmPbC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753656593;
	bh=axlBLR+xfoplW/0OLKD1lA85TU1dZRtXr2arPvdEBsI=;
	h=To:Subject:From:Date:From;
	b=S7nmPbC6rN6p463XPKZz4ZQfyflcfAElRmZOt5y1QePZCJT008Bg48cUW0ambjmWC
	 +zXwmKOEulV1D8AA5FCOM2+9zjJZLdDsMbEQGGszW8Hds9RTwUNsDpYxsGKSy4JpEB
	 3N9sUbUaG3fNWAch0wh5Fygrc88DWtDOzZhkZffCeShl9Zg/+0Wpwc3mjG4TSQhYTM
	 KZnKxdYmfcPUVf/dINWSuyK7itIO2/FAH3qkYSuEJ+w7Xg8SpGBuDhbJpLqF+9qL5Z
	 wuWaBRJ9nsH9JxHDUUvozHhmuQrh7jl5mUqQPOODy5DjOxjRwGcHTrBWizjyvTtPHK
	 DVD/SWGq2A9qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925EDC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365659357.13029.7021207549926284946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49865693f3624eaba045670575b4c4fa59cdabf33656c28ad28b08810ac7f7e
Date: Sun, 27 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753656593
