Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D66E2868AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789188034; cv=none; b=E0VLSVJg8qX/CyYChN+NEoN5gNDFjS0NdP5Fe2BXvs042Wc9BsL9PMJyZPzSB7GjeYzPdWyY3fiLqhdBU8T9Q8RCcpzHuDpO3mk1ON/pWrNYA/jfMBtx1mtFYczALdrfkbapIn/ZEk1j/BjYK1n5UJFiuwr61XVNDfn7eQTfc08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789188034; c=relaxed/simple;
	bh=NRu9Fn7xRKtqnUVC+Mi9X4slpWJpUjn5u7Nw99C/Di4=;
	h=To:Subject:From:Message-Id:Date; b=WhoLvlUPkCxr8dYanVtCJF4vq9hUgZuvqe2cqy4Szjcf0lQt4Hghy9mUBpfiBimBnrCjdjkP9/A3tGMvTySyD4DoD+37Pjvh9G7hhpxpXhlmviE5LnKK0qw1ML4f9QEXni3QT6TjYyxkquICeQcFD+rtksT10e37F/JZ9AYrtEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3/SLoX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3/SLoX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A47C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789188033;
	bh=NRu9Fn7xRKtqnUVC+Mi9X4slpWJpUjn5u7Nw99C/Di4=;
	h=To:Subject:From:Date:From;
	b=d3/SLoX4/66GFFICnBMgjq6VuQOEXB/Hher1LhB5MATXZapQN7WOY/yFaTUHYAGWZ
	 py3qZMRoH89ExEkownfr8L5Y6+gJjMnqSX3pk5EI9f/V6XKWT+ZrDTU7ZD1G/IawSA
	 HB6JzK/DmAXJo0DxgOAAHmMugZ2Hz3vdERePAE7VuPSVZuWMio5Wl8JbJhIRAme6gI
	 KJVaqxHzFRKVVpqj6fKc4ihXMMhpmzEmYCLQPYPmntLL4heQRBpiXhZF8ja2ahEPGV
	 Kt4vyTUtIs+oSEgZiD53fi4DTFb4qps0jmif/m/e2bjYbyGLLgU0nHfzKcgh8TYqo8
	 UsWT+Lumc/Exg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16E8C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918803370.21562.13414603283681425529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c5c66b72821b84366e856f9775a30794dec7997d819667cdeda178b8546878
Date: Sat, 12 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789188033
