Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2528D3321A2
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778865034; cv=none; b=pMNdEyoT7KRehmakG29IyeaootHwlJMkYz3V1uWVZiXu2aIJfKfkJGjskZA2Gs3WFsjg95Zz53oc0oibGlfAUxnMtoQaWUXCsAOXPHqxDp8TEbTw+NEkfTkJ58bhirMKsmv1BYLemda6ZuR4ZyYa9p6WMO6JtJzEn0dXL719oWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778865034; c=relaxed/simple;
	bh=gBfp1pZYWRPhJKa5EKs1gcSfPP3IqchJUey0ANSlAUo=;
	h=To:Subject:From:Message-Id:Date; b=ubMVn5kgttuUxyFxnrY2bGDrGZAkHWU19ubvgGt/yY2vu8TeLZl2zCqX9V/L2+R5FnGmveLtGn/F7x5HZWTd4NKjgQOkGTW3EcINcslL/T9otV70fC+2nZ+15YMYOZDi6EOAeG0Crj/x7BATzGwNLN8v60j3dUxVkfay1vVybOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9pW5wCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9pW5wCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77D2C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778865033;
	bh=gBfp1pZYWRPhJKa5EKs1gcSfPP3IqchJUey0ANSlAUo=;
	h=To:Subject:From:Date:From;
	b=M9pW5wCBDQr9OUXQTU6D3/vGMkyB25PNnIvL8ENVaK1ZgeysrcSEUIJqcFsAT2R+x
	 Lg+HHvlEA0DPTiCi13El4W6Qw5z2vFZOzpfqE8hEfyI3tMJNE6+yXVOV7RiRYDH14P
	 F2VHQo82WV6DsJXjC2XI5UVdKDwfTyVBI3paKc2NOCek4lq03pet6ceoVykjPUfGFh
	 XaFnmJJPvbcl/8ZByDX4QlW1i3cJ6iUi5EgyO8PMvvf5CmpgK2TVHB7hUT8LvhfexB
	 4Bscrg5lI7SCa3vwD5x6EM37qPOck8SO71m7nqbB7/rlqFM/vp0kFWdqhkpyarmiCK
	 5PIJs9/2/dHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BB0CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886503372.25996.16473277319564409197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356fbb9e247d9e484035cc4ce219ea1c98e9595c37e33ca8ca4bd8c660e8f16d
Date: Fri, 15 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778865033
