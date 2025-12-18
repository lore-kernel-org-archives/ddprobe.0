Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2A33570B9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766071434; cv=none; b=WOMNxA/xbfQq8brXdXG1PH+XbNAyCiOpkYSUA6ikV/ddBbHhaBcDYxHsnqldGxcrg/mDNBV8dliZI/bgqhpYZflOZoa4mf9tWkNofWr6qFSLffS2rVOu0cUr7VJjlhiYNJbawdKhwXIUxrz19E+G2zIxF/K9adiMYz4e1WC0SN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766071434; c=relaxed/simple;
	bh=14lHvuVdW6LM9umAsL8FBt4FnT31AWalzWL5IQ9CwMM=;
	h=To:Subject:From:Message-Id:Date; b=qfk1DB80EKNiThhikh08I3MRzyM9O8SYg+l7Z30zVIU4jJCL6HBu0AOarRKqQ/eWX4XclJDh0CoCD5XMqVJYTHBlelDKBrIgV8ofO9hU5/USr40G/h5VtNccqVhnQU/Wy/zm2m9EuLINN5CB15a5lpcZioxyY6Ik75cm1kIekVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKgn0mNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKgn0mNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1C6C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766071433;
	bh=14lHvuVdW6LM9umAsL8FBt4FnT31AWalzWL5IQ9CwMM=;
	h=To:Subject:From:Date:From;
	b=lKgn0mNJoRnA1RRvREFhga4bKIBe+TtgX2o9jFeE5gFsQ4IvV162xoTj6HqqYjBvg
	 hQdapxLu6v7h28BaCP4yorpkW3Fq73GDO+a1qW9YwTIuLQQGaRmfChmA1ZIiIQjSXk
	 x0WPt5CHhawPQBkEP69/KZmE2Saq8ZLgbIavjcHtbRyRhyhJw+JoYkP/BpW6jDP9X2
	 NGEmzUyzbBoInC7u+BvV6AU+vOiAcBGPWbvfNsqQ1ubFm8a2znOYH59yK5BssD9G9z
	 qlYmaPvVQFIqv5YlPmQEHIUogvR93tBOmSbSTW/EsxHPrmAXJ5ygbmQCTfchXCKdUn
	 cebKGp5jRnHGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF3D6D234
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607143358.7654.8452396062838020114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824effc7a0ea20ff0ee4c1c98ee2dc513185828f0bccb65d68cdb5f5fe71b54e
Date: Thu, 18 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766071433
