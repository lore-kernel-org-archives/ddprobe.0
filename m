Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C52201266
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746781796; cv=none; b=AU7ty55sNO63GduCUyMWtBLQOfo/L7ZdkSzbozUD8GCVkyOjtaHwNXsaeoiD1dbv/7Jo5p09ab9aXYTVn0xwSO4ExXq2a3dHL79c2xRkR6NVIO19ik7YAVZyiaqKbAFOKY4VGyAWN+LJVe2y/Fxf/nOExgwiz3g8eUrgN1+mwVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746781796; c=relaxed/simple;
	bh=y7IEWJJtGh/K0l8/0g5NP74cEKUqVw7z/VXPaulWNag=;
	h=To:Subject:From:Message-Id:Date; b=XDdi1Zwj9stJ7SB58BJkWAlQHGhur38HhN2K4TEcrIfyvshj6uZ0j1MtkEh7vY/V5wz9ZduR8fdKK1tcPpfIkxZD5E6Q8aiw7CiF1Oj+dpbiuD/dOWYKEFCXWnwr5TJus+FKXjmRbKsZdjHXDW53N48ZOVVVyqVyi58rbS6dIgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSS6TgTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSS6TgTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB82C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746781793;
	bh=y7IEWJJtGh/K0l8/0g5NP74cEKUqVw7z/VXPaulWNag=;
	h=To:Subject:From:Date:From;
	b=tSS6TgTWIw6z7Wd7jU0KV94z+YZpHHYOVr9jiryxaomS1YIyFOQvlblMr4WgPAJjA
	 PfYOF85NXXRzMExDXQT/uqYLKGdNoV0zeXBD8iPI94iEQGabzsyYDfsXO4OIBLo76g
	 Whj2goB4X11y72I0vPRWtmWEkeKIIL33AELN0+CGIXPR30qV+kYJcE55F+62QfDyHh
	 QqfNjz3c+GtkApDUTW44R5qHu3Xykw1piSVC8QvNvrtkhm1Rm+XmH/nwkDtdKDGg9F
	 O1+Ycz/1R5dvjqgb4KCkZQgRAsb4VhOX+og6DO7fumZercl8IoamTdZCpYPOLUvKQK
	 0yiF0Tnn8BRsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FFC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678179357.2521.12385640848261898106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d1d90d2effd7309b6d67efff246c07a9dd77ffb5a7bc940bcbf6fef3ce9f42
Date: Fri, 09 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746781793
