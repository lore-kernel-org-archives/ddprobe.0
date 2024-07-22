Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC4D4C6E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721607354; cv=none; b=SAzYEuLI7x6sgauLoXA2ZqEcHUwjD2RhsyTrKmxcX2GDIvi7muVdAjH0Wsx92lc/6O1WbbsW+pAJt22xqQOvjb8Gle4ahtjNAPndAB+ypE9cPWqsvClF+VVexTs1pFHOR6JYWWfKbaLR5WY3Scm+uhHX7lK8iAkMyC3AovFzxQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721607354; c=relaxed/simple;
	bh=l9FXlaTTUP3qL372OSCbcbhBJgn5mx9i1pp3lZRVxPo=;
	h=To:Subject:From:Message-Id:Date; b=rxBdGzpGHo4Nl19uyqM+uceeM71bMc+mgFr+7y9n2PXZMubf7/Ckfp8fvv3kj5uHbVuiimP7t4ZgJgvAglQbZHXe+iYhubSteJcQP4IQ82aBox9X8B/XsuD3rSXIUNJwsxB9nyGN43yloQED5lPAHf6XBJD5LqB8x8EqhQvJZ3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8bx0HUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8bx0HUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5385C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721607353;
	bh=l9FXlaTTUP3qL372OSCbcbhBJgn5mx9i1pp3lZRVxPo=;
	h=To:Subject:From:Date:From;
	b=i8bx0HUlcpY1ypqc0pghvpRdf2IoahlI7YfKyobj15+9f0omUPPjaiAwoDUPjWFZZ
	 dmQugWiw0B9lt8a8vQN2EwrUSUAB/ShKq/5wz7seUVfc+VMuuuiKDjvIHXFZOxiGAf
	 QQkNODIB+CNfk4Er8kCb7+Ih2sb04DJ97IWWGvU2l+SUdum2MqeD55n6zVxXgN2hn2
	 GBdk7Plbg2JZxVRnG/er0iLebtGS4MRcNnbwmb2q3VHdIQ4FaYiGAgmej+jwZHG3Zq
	 jRMd0jKKTOE8wFyZK5rfmVMjN6y4sd6wfKfccFXyRra3RyUHr9Ev1o6EFqLULOPUCP
	 zLjfjSwUC60KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55CC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172160735358.25413.3370819077094298999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ab83689c034358883da9f88bac5a781df192d3970d4af400c6cca6a39b75e1
Date: Mon, 22 Jul 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721607353
