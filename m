Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EAD9443
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751037594; cv=none; b=ZLfQESzctx/MqGDRpds2X+2UeNf9pAWkgRsrkK2+KlSXyePaxVpPiUVLzb7H0d/R0fnilYwEJI9FinYw9pbrxaEUsjFBXxoZziY04gYrlKshsti3uH/BOLIyeTq1pE+1H/3k5PbPDEkTNBy4fZhu/WMKXxhoQ5Tlp7YMtwli90Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751037594; c=relaxed/simple;
	bh=V0gr5o4/A6dWfLCMHQCYj4XEHvf/GpyESou0tL9hnlQ=;
	h=To:Subject:From:Message-Id:Date; b=K8WBnBUVakNwj3y0B/pZvEl3LPRQL9OD48Wfqp/j5N+vw8hFE9pFUhgR+zoCZZQw0U+ds5n3+Fh9//0kJIS9lptnxwql3cQ47M7Yk8qLdW1Q3mMO564cNFeP5CjPuLEQY7u2X1NFaItQkmVSRqy/8SD5VMCKbS407FxOsAHl7KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNGcdLkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNGcdLkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E71BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751037593;
	bh=V0gr5o4/A6dWfLCMHQCYj4XEHvf/GpyESou0tL9hnlQ=;
	h=To:Subject:From:Date:From;
	b=NNGcdLkJPVD6KlnFys/LkfIi2XyWeJ/RCjb1SrujdL95ubnnKi0UWmMdBBiWIGXC7
	 TG4/+4TIkWAE69FGjrAJpBe7h4u96OBQcSh1BNbz12y90o1zfRYzcMVkDw8cHJlLjy
	 pg9bMe9F/BBwoJohvs793XAHUWvXzgHyt4+uq3nsSsFIPQ7YJ3rhW2j9KIYS6dPJ/S
	 v+NA0xBRv1Gg2EOGlW6PrOnaQ7Bx0binP6ntdF9y7e1zribQ2ctI1msrI++ujsmGn7
	 3XMmOjGrp2SFyYP5+9RtTE1zCRHAISASYDLo2IeOnphf7HI0Me7X6oAMY6MXJw/E+l
	 0xZnagbMhiXmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE7C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103759358.12369.2413621697842857042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8a13dbd9b5f97aa2f556b9ce6ba2d45b9a5afc688f93a60f47f06eeba0706b
Date: Fri, 27 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751037593
