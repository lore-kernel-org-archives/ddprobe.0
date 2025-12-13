Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415BA13D891
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765627374; cv=none; b=R9PStWfvNK7VSiT2joy8ma57RPEfNwLJOhpFig9gQJP4EF7vc5QtQG/1/l413r1WANKLQY6DlgrG+NtkEimIHfnvceSrTyleETMrF9r3D6dMhFVWcP+gM7JaGoL7VZ+ipt8+WSmdXN9/JmUD+uOe+rezjWhETNaZ/FnZeVGpbD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765627374; c=relaxed/simple;
	bh=SXlFRpuUgRfbtuGiGfWqbYzQw3E/KqR3blMgr800NHs=;
	h=To:Subject:From:Message-Id:Date; b=CsJw0jq7K7W4GmetudeDBRTzmPvGy1OsoiMT8j8Bej5R4Gcs9pVrlh8IqoqTaSgd6YxrjGrVwuurvDomiKA8OdlnxiKy1xxOGHk9BU9DFqT5zIECle9iI8dX4YgI54OaLljYuc7DtJb6zP4jdCU3jnal1YYEo+ds2FvRIzH4fbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQwzmBMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQwzmBMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC19C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765627373;
	bh=SXlFRpuUgRfbtuGiGfWqbYzQw3E/KqR3blMgr800NHs=;
	h=To:Subject:From:Date:From;
	b=GQwzmBMe640vfPF2zOzY4IRVe/WvjlIgDN2P4k320BeHBnTZyRpKCx9GPN9xvufQd
	 uuOoUMW/COA4+wRaGNpG6bbYOpcGFSH2W8JDhdnH9ri7lN1yQBA/OfVhqral2esU8m
	 6G1RIAlpevfCo8Az3GOUWLrlOA24LF8PeNTK3sMIrlKYFhnXa50oRQNPoMX8Ew7zv+
	 3cRlR46KeDDjRoqh9xI1fEcLXCtL0Tx0rYj7gufKpxKoomTg6emoc4fBZcW4l/XMNp
	 DP4cYdEJyG67phwxkwHc0szYyy0IBikmVC2PjXTA/PDkte+EnVx763pHrG/WMDPguQ
	 5Mq0BnKg2R16w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E56D5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562737358.7306.1352835701390988159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff2bd104c87420813633c51d6ab88d3de429a2fcbb79ea43bc42e8a85d9106e
Date: Sat, 13 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765627373
