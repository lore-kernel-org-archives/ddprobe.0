Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC00B37F316
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789296034; cv=none; b=t4LtnKzEVFIw30ZXD7OZg9g01Df/PDLlu1xSqRXr4IJig4VtaReJiPPwzDZjuqG/csv8T4Rat15sfWS4biLsiI3q3XjqZ+UDB85IJNL+/bP7jpKIS7MozeNzboEkkFycs2CwFM6/RTc9pN6ZPm4+k6qjr7ieglpIo68NggcMtO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789296034; c=relaxed/simple;
	bh=VcDGCk09Sd+0z5vKsKgWg0I0nHS69uMMKSB4OJS8UFQ=;
	h=To:Subject:From:Message-Id:Date; b=Pz/ingG1ql8BrloGWsjIE1j/1Y3cK8HhymX4VbwlBfV+8BhqTDYu1qdY4KxDme00jvx6sH8bwRsUGLRV9Kvhvo7F8Kk0bVO8nDVdeHzUK5/H+xoLYh3NDtr9BGzkmVJ1PbZLjGXRmieNV5Kn1TiODIqFd2p/WpU5EC1oLrjv+7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sl6RqUku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sl6RqUku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5488C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789296033;
	bh=VcDGCk09Sd+0z5vKsKgWg0I0nHS69uMMKSB4OJS8UFQ=;
	h=To:Subject:From:Date:From;
	b=sl6RqUkuWerKeR+aLNx9A3/ALecoGDAhR7XaH4RYy5v937C3RV3GjCcPGIBIzcK36
	 QTQOb750Ta0nf5nHU3pSIKRFQ1u0o8zaF6YSOK7f4pO2te0SPQPgYuykp1aDFGdlPo
	 K5EryC3SFVQ8XW5s/nF+bvJZkMTGB1bj7BDfUw7S9OAO+HK13FuJrfasuFTFdyC1f0
	 PjqPxo2P4FI6fS9eL77e+9mvEbGmuGZVOEPfSiBQLH621uzpUtYTd9VoBQpL5qUpLZ
	 sFsyxyE/CkH/AUjpg9zS9bAQxUlc5XAYc2JU8MVvpZsmtdX4i0rlgFTsX8DXdKzrZr
	 B8s6Wpnc6dLPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0578C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929603368.25005.6045556948226417800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4276d257986f37406781eebcafd17978b9b34813316e6e46f665630530f18d26
Date: Sun, 13 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789296033
