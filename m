Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C98388366
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773519294; cv=none; b=m0YMsUP7v5IK1phOUxdv/vomqLtuWWQ1ZY8BegjPggLkC/XDTNUvpIBY4b8SzNfomMgkUzCb5enowrAmtDawd6egSQz+eSkiImUGX5tqgX4V5NdWNA9Yq0TL1cZxV+fYj8KAvphbfzPRz59R+qg+QJRh6+Jfs/hJftVO5z/qiP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773519294; c=relaxed/simple;
	bh=jZ+QTJhxU6QQVJJPt2DoUzYfjVIHFWOaqVdTjHA98Go=;
	h=To:Subject:From:Message-Id:Date; b=iJYI5n1N97L0yzK2yOn/4jt4Va1sMdmcdWB3LWjPcmiOjGClaqicepz0Vkp8IWfy2jXTAMN528VvXqyduvJhjWtkGhGQoMTwM3tyDdn6qUKbg7gtLxXGzp5/RCta0/j2OZ894a2aUK54+uIzKiIcn0v4CYzJhXJ/vhvvPwkkMJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc66Knsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc66Knsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07E24C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773519294;
	bh=jZ+QTJhxU6QQVJJPt2DoUzYfjVIHFWOaqVdTjHA98Go=;
	h=To:Subject:From:Date:From;
	b=bc66KnshoV+mYNks0/8yIL0sW+1yeV8d8R3HUQalLvpiuYH27Xgv9qV1FZqmbc1mf
	 7f2DpOnkXezBPaBqFzGaAqXZ/x51SsmuGBE+RH5dvRKGuqR/sVDuf+Ba8TPWKPiWxc
	 RijkUc/uQps7SIowbNp+EybTfwu9vzhIdH396nCshVaAaMH5rcV2So+zoGSZQBG1Fb
	 OI+TUdIoVNidjwYvwPhLAAGsNWSDLoNQ2Ln4BLj7aqMipPVi+CseG9AepEP2pfBYZe
	 zqTxNbHm6yZ53jEWovg8gmVbbJO2By3LRK0wTPSuj7p2LLbEFhBi3ijbhZoifBaHKt
	 +LBIJwxULpFAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7C7106ACF9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351929360.19751.17683932754565032762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a481f87d48ca745ce17ed946e320a73c261f911e66a3c188dbe601f6b4ea68f1
Date: Sat, 14 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773519293
