Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3163E42A82
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752829194; cv=none; b=UFfP6vg2ovgdS99AVPOU3GBK7EVq14w6QxScayF41NLRuRy/m5o75ALCf7cdXtJ7naTrLtT2S0wh+D5LrkPGUZaEa+8wqy8PSpMstjDc4VTtIEVl5sVyRFZdkFPSak7Y3WZNPdEJO4RWZ2I82ZvGN0UuyFH1CLSCes3wlGk/qCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752829194; c=relaxed/simple;
	bh=OoanNLCqZobnTlSPJfSMpvu2IoLDd2LvmTdCZBnwqJg=;
	h=To:Subject:From:Message-Id:Date; b=fKajBnjWdIkAaDpf/MIq+ONdQEq7eR8eVcy8bjyd9/AzL57HEliqQ2EQqE3wauOWQIHBqUGYJkrKv6z1qV0AGgLTrVrNKqedbS+maBmxN8XWuhDbJicZODXFcB5ILWu/ARqN4yiXq+gOMBYP74MjTuIvYQvdiCGe50pI1DPiAMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OP4c+kf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OP4c+kf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EC8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752829193;
	bh=OoanNLCqZobnTlSPJfSMpvu2IoLDd2LvmTdCZBnwqJg=;
	h=To:Subject:From:Date:From;
	b=OP4c+kf2qxKf9SJk6TN7SPP0DYMka0Y7XM5671MssT58uP4dLt3l3zPzseY7QiCQ0
	 N4LtnHnvWziK8meKHEefwOgxmqeScN1+lEdCpj3w0cnYVRuwk+Uy6pFpdyC5Jlgob2
	 hRt2IB/2mckgg0HlwEInR1NddLY4XQRhCn39QO6OmxAzZYxp4ZWQID0uzOv/D0B45f
	 XZgysHFbg7WG+n0dJZ+JMZeWACMHqF/xReSeP1IitNlFhRnRyw9rqHNzTbpGtyDofd
	 OfwEnVtHviIbtSshJ+o0bCuybdnUnXOBbAqeuPGkDij815vGlFfLjw1vz+YfP69e/y
	 wXA8FnjI6pIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE4C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282919358.23936.1944442430926073837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bd717b08ea998bf3a77e2bd24fd00d8ecc9756d1de93ce2178a599c42868cc
Date: Fri, 18 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752829193
