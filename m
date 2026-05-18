Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98C1286415
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779145234; cv=none; b=W/b4N8rm+crazsutKi2OCvtfFXFYgVfucB+EGhXdS/VBtxlw3AP1OydPvztLsikYZijWKhfuJ1qpXO8Ubc5SKAIsFiMRnALGHKG7ipGjpE4g5btj8xvf5gbRGwD0CSa8Ie4eDfj++aozGdYfwnYYBXcfKbKgjyvuo2xJF7v3BSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779145234; c=relaxed/simple;
	bh=uJadYIsDnlcodTz//BSwL/wVSyyyy7+dN5hnqSzW7eA=;
	h=To:Subject:From:Message-Id:Date; b=QI/qjURYJnY4FBhA/AUV6Z3VekYOzyXnpiOB79Bu68L9VcJdpJIdAnJiLCIfYy9pHPBlKrWboWHG+zk2fGFyzA78Xn72jLcM/i2qaKxEQoy5LNBrmw+bdjNcWUN+IkBXk6QI9gCKx1WyJWoYgCha2XoN+iACXrp+QsTucxyRssg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAbTmJzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAbTmJzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7E4C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779145233;
	bh=uJadYIsDnlcodTz//BSwL/wVSyyyy7+dN5hnqSzW7eA=;
	h=To:Subject:From:Date:From;
	b=eAbTmJzbBUMDDYMaJUNjDP+mstDXJYSd1d5qI50NIriM7HSYJl7ePDutQ9JfgiYeW
	 iDW6+Mf8486F9EYbEsWOixae2hg1YfSmvEVZJsFSm/jcLmg4xguDK3k82BpK6OJ9J8
	 KyymM0T8Y2wfeBvxiCvyrQGISNUhhBlafoaiiJgz5DcU2UiDa9enTpVOzQbfzIe7fd
	 2SQZLFVS32P1LtGWBatNyzms0jn+GScmZ4HWAQL+zMtMfoAhMbwo/iTQcS8e2hjf/b
	 0KkgSzeLPXtD1ZbQXKqVqLnInjTQVHyuIROjW0d2U6C4OTFNUTD11Ot4Yq1hzi0FxM
	 Jfbl8g5hCLrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA98ACD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914523374.8208.21732592562810266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0aede462d7c32f9e17f88215066c2258f9dae3eba6f2709ec048536f6b2ad98
Date: Mon, 18 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779145233
