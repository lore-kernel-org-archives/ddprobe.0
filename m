Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E0564B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721175323; cv=none; b=E9zCZ7sPGq2eMU6hkKx7c6BMofDMpPY2XNPx08ht7UHPo3ASKHrLLkha5ZX9Qrl9eCnyUbQqLHPjesn6tQm3QKTLZHrJTwlgqBJRyc5KDOwcY9N3BWBJoekqPIkFfFuLpFVrBd3tJFwdhIIjnAsgkDIR0DhfYQoHvDHZyd/Z/9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721175323; c=relaxed/simple;
	bh=J5lI92szL5tVnfiw7/mzb7xyy4ShqLO3qmfLUUEhKrA=;
	h=To:Subject:From:Message-Id:Date; b=m5YVeqcz6H7lOG2qihJ2KMzKjgGyCPXKl5/KhX6y8yXN6Ay53kqs0P67TCtm/Y9yPk2jupbB0cxEV5bKgnU9fV++FZ9uNSApOHmQvz0Pi5GDrZDlgh22axDUk9HY7ytydjdWEcq9Je2mRabfyy9vOR9cLgOz5Gy55WcKqXl2dvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swIpFr3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swIpFr3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F91C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721175322;
	bh=J5lI92szL5tVnfiw7/mzb7xyy4ShqLO3qmfLUUEhKrA=;
	h=To:Subject:From:Date:From;
	b=swIpFr3XTwfzcByVx6gNgddYgYtVzt5NCj3WzArDbErkUsvPx8UVZHhPrwPQZr7hX
	 O/bou81oYMNd3p+c6SkD/P7jwj1yo6/j98VKTuR/CjVS1KIE4gR6jdEBl2KhnAe+VE
	 RdasZFlGNEgrOR4rzJKw0hrTuexe1jvBBdvO+a/RErh1iaDg50lGQq8DCMXZGTj/DE
	 WO7BGDZGdnRA7Pjacc/fwVfeaUY2Gu2MrS1Le8WIm52/w+bH3bSCwq4jhG9BnNvbGe
	 zJi8K7H2Q3xM9NxmogKQZDqae4JGkH5bLKxD+C0zbZh6pHsT+aQEnQl5h05P94zIDk
	 84qBaic/MBV4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C897BC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117532277.24408.3409349913734375296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc96f6cd7c87b306cbddd7a370e58e99ed3175a3a13574b9645f8f377162b43
Date: Wed, 17 Jul 2024 00:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721175322
