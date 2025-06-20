Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A96C2236E5
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750449594; cv=none; b=p4Ir7nLZOsF+985vPPCdJBOAWPh/v+tZHbq9ddVioYuhnJP46k5hVn9/8xYN7X+jil2c1nqGWI1/zcfmTkPIsQ/NJhVo5LOkmLBhvN/IkA5Zrc7Ay3D4WV5G45cXufKWBDhJbP0qaricpMKi6gVDyuht7XIhL62aeczFLH9GmI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750449594; c=relaxed/simple;
	bh=JCHc9hjsb8BgZsDeFWycWXqOU0VoK3umSQ6ngd0HFqQ=;
	h=To:Subject:From:Message-Id:Date; b=KWXEIGzX6sVKX7UalA3CO/pAvm/KuYKT1HyNh6h+mMOrMQ87fCkpQdeUAzr2evqaCMJP1KDnXbZMlT2XjJqXONobqtyp22JoxEfI9zd8/mdm2w6Jj0MDTdA9BQk23WH5qgnCsyMLBjZ3cAUxSSg+IB3plpnld2QNdJvMT0ygJjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuEtD6cS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuEtD6cS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F297C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750449593;
	bh=JCHc9hjsb8BgZsDeFWycWXqOU0VoK3umSQ6ngd0HFqQ=;
	h=To:Subject:From:Date:From;
	b=GuEtD6cSzoVb2l1xuJpdYznppQKVOi65myfxeChr1IGrIlI3wOkWeWg5LzVh6WX8c
	 qgNTFKBqBZbupmH/I02IFQV0dBBmy3rK8d8UxuMXVo3vQ5XthNqcaD//wpt10n3EfG
	 G5isotKEVwExUQE0gOignKpEclSjE3jgB5oxsGWoG+xYEwKvi6er48TlpVH0tWqsID
	 +a12qpdj0w+25CD8mf9wGYW/JfvL0ZBDxXWbTj79Jjpr9FuR3fdYtO2Ie0nQHWhlq5
	 tbPheUJFVKF3wL1zlsj667bbYC1K0dg1MtPSmtfH12esiUv6RzAgzm2WtwTxL8SejH
	 l5cXmsRFGbr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F371C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044959357.1728.9640593825031770436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43dde19724617c8b901578df605e6cde4c7c086d50e9b5af0997d912fdabd7b
Date: Fri, 20 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750449593
