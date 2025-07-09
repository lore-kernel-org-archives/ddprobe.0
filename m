Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238992D3EDC
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752075596; cv=none; b=IBbhhvhHdgZOLv2oGGq3ybSH6eLLSqqNfb3g49sjBMzN1Wtbg23oTZ88wLX2VbJjbVL+aunCYL0hRcT//3LCtoVmc16MFvBgJ5cFQG0lOOB6GSww4/BmrF3ADKqXpJ+VL0WyvYUZMbjZmMMO5uXGCiOJ120pJUPBn2CNkyUoa3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752075596; c=relaxed/simple;
	bh=s2GMlCpZDVUvWcf9tnYqDkHR2zIzdlJtjfeaSNqFVD4=;
	h=To:Subject:From:Message-Id:Date; b=jyoioWWpgkgcd65mxeUnKdzy+L4fpFW5FdaZc/iy8d8aZrzMLON4wAxJseuvBd+VqsgchuR8NYXQWQJ0wt6oMMQoSa2Odc1C//qrAXqV2gLsfl5/Mw5X33Al0Qw28a9ffbMEIMfU+UTEanAWN6Z6KmhLKFNNDxVJ7DTfMhUSqgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ec42fE9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ec42fE9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA9EC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752075593;
	bh=s2GMlCpZDVUvWcf9tnYqDkHR2zIzdlJtjfeaSNqFVD4=;
	h=To:Subject:From:Date:From;
	b=Ec42fE9pdBO6nOsQyGio3I6rEZVXXhfs5SaSdw7Lv1WpmuJxgObBaEuGfoJe3n4rU
	 TtWX9nDA/yZEanbZ6Dyo8n+hIIv4+5YHggP/4bXovrZB0KwvohSwz/uKbTi72QHm1w
	 5z4MYTOnZcwloxyt5A3GaN+Jf+ErnIY2O0XVsfTRHQJEZ6N3l8h/ZTRKtFiujbOqSL
	 m8SWMv1KHL5/pdtddpXzeDjjs4+Xd793TDzh9t1rSK2/caBRay4FUlcvUPq6YXdzPW
	 CwtD35ayQoieQ3bvn7FMJyvQEf+VDiIjr0noFw9BsXHVlkFzsVIhzJPrCNEuHirjYr
	 ZEsokB3Gaplfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E866C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207559357.25127.12577573323962388850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d2abd5709cb029b217cb4a54c669d90330f1c6dd5004f50ca7c75877be6614
Date: Wed, 09 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752075593
