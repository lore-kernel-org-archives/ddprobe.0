Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289012BEC45
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770633834; cv=none; b=pc8ezoe0r2GPVHX80fPAju8SvzSBVXudMXC70QXotcZv+DWyi/8mu4j9alHphgWwiQiLypvzmLVh5kOV4w8h80jl7d7zlxpV6YGuJqcnLpIV6inN6zTSGSYrL6TV4KuU37UIfJml3kUfIp4w+TAYNlxrjCC8T96qmlzd6rtKPbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770633834; c=relaxed/simple;
	bh=Y4Ilamxfe2EBbJm0MBQoEoXsA+uqcJ83gjwHfwqNTYU=;
	h=To:Subject:From:Message-Id:Date; b=t2MAhnGu1efk0v7lOZxPCCyMJPSKiedvgZhmReKI0k3yRYpWHMk56HtwB7pTb9Iul00j7/5gqXpZ9HQtDvsUtKuNbhaV3CNb/9ZlVtuC0Dvb/Rd09GxdgDK8WRntVVTcOYOapy+UTTrV5FA69gyCiBpbbqS+CzOoauJ1u3TTTeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV/23gbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV/23gbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC73C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770633833;
	bh=Y4Ilamxfe2EBbJm0MBQoEoXsA+uqcJ83gjwHfwqNTYU=;
	h=To:Subject:From:Date:From;
	b=BV/23gbW1CPHJfejb0QWfnIK/PtC9eK+kF+M4n+krIeX3yOl0dV1LYhZ5UhZucYHY
	 q3voe/u8VeQzWExiw6gpUodrgnnDzVTrP8a1iKOdApgGEr1YT6QKqZ6VS8xNPpaXHo
	 Sb5OxlNB5OrpWIpuR1JdW6TtnhHXoAxq2R+0UYXEmMuLJNrGny2yPNHot96lRvZ6rf
	 Qh6mw3V4ShbexLLeKjN+4Rlmvyqzfh/V81iHEEjEuQ+NgHu02T6hG3AahZm792TI1G
	 hf0VJ0pjxyczNCHBmQudSe3I5lJ6AI/UEI29M2TSUxMVQkHmysSexRNyar/rYALf6o
	 3QY3wZQG1rVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0EEE7E0C2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063383362.27193.8454042306991514326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a95bd1a202e9cd5494e76714b386639b59ac04084ebcf89c4b79bb0ad1dc82
Date: Mon, 09 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770633833
