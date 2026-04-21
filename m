Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F84A28C869
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776755254; cv=none; b=EJUld0TFJRLM1OcevxotXozU1e42uWwtmWwGEOKoLqEOiqE1UAd2QuV9SbeV1ZfjiGtCzPV3G74mh4BCBni+7KHbFXuoiA1YLST9UDYP4/plrqhf3sTzJJRlHNbLOdRtqj1qlvODVSe1ti2fQoCVWYEFEddLMOgNtoGBed/R0AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776755254; c=relaxed/simple;
	bh=DF5iHy3zZra8VVrl1xwq8KVGu2rn8mcGzeFQHIxQTE4=;
	h=To:Subject:From:Message-Id:Date; b=enM+h0CgT9VeiyZ4J91V5MmhJZHRJyv7/v6g13B9I+RuTUNRm4B/SDmNe/i3U3uLlXTrTxHRtuM4ZjtAAZOteajWOK4C0ziXUW/KwN+Iv8SRMvMRh89Byzd/c0T2LN6AzXCRKhdXxpohd6TwizpU3dVNORXOlN4vSCWMZZn6xZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWTcgpkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWTcgpkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9D7C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776755253;
	bh=DF5iHy3zZra8VVrl1xwq8KVGu2rn8mcGzeFQHIxQTE4=;
	h=To:Subject:From:Date:From;
	b=eWTcgpkzMPg25detlgGSv0cXxqXXvAVNNsSggD91IptvyfsalxYbeY1GDJfyGLBQc
	 cRpf5c24pXUVwgn4FoPXdd9JhGVC+HNgKCL8Bcmvf9YD3H/d3Umj9EngD0WsD+7UDP
	 6EuADWwrzXc4QNP4w9ZRbxyQhxXJZaMlSpbzP3hSKOsQyCZ6UOqpz28EyVL2znL9b2
	 9Sm4XW35mc+MdrC1W/VSbQcPJubgXOhUGZNVjBd+B3ZhaqfW3ID6rXhRQ31362NK+o
	 XK29xWJdIHqtG8hMkRZlITVPtlOD96bDtGwoalu0Ugxmd2KnlVOqar0Bhx5tbtWrHy
	 hdbxITAYSqJ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DAF327B2
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675525368.31753.5211806566624817317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8338179c9062234e671f0be26a6f622cb910b60c86932bd468e04589043b901
Date: Tue, 21 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776755253
