Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1B01C6FE4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739639334; cv=none; b=iYHcMMxtr1SancenQn3mxTTWThGVB6ccemzI4RTi/z0noWn1jSCzHi+N1O/N7sICOROJdlSQ1cwYeXTUK3bsn/2GNmjwmLOqp0zstwD52Ba2wGwtBXBNbN52OIoKHODOoNktlq0wSQekuusiZJqMrcGMB5Ez5puoG+Y8CW9K988=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739639334; c=relaxed/simple;
	bh=SJUuWO32K1bOwPI0s18wabKzPZv7OA7j7i/DZTb7AiE=;
	h=To:Subject:From:Message-Id:Date; b=ZmmCZ8VXS/8W3WV/mARDTnjPS/woOGqmRa9TzRkj+/4fHuTNRwrLBULPNBenvTrpu0GkFSkTFi/3rmmO7QdCiIWadz6KvsemjRpMl2g4E5dpVJ7sFIFBusKpONcOQnqOF9j8b05xEQDIiAUU1K3kPvv3e4gi39+q4k/NM2TOVYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgp/invM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgp/invM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF41EC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739639333;
	bh=SJUuWO32K1bOwPI0s18wabKzPZv7OA7j7i/DZTb7AiE=;
	h=To:Subject:From:Date:From;
	b=tgp/invMx/KWYxzI3tEhA3nBFtewkErmjOzrmXkV225M80pG+gsZgcQedDNqv/PnJ
	 SCNtKuqWzu58IuSVkVamEFrgH9IgSOIzLHtOTHZQF69Fkf2z8o35uak/PwxCj6Bes+
	 iMR5a2dF1rQ3k6NBqSrmj2QmEd20pGfuRJLpkfWCdji2aL69BgRgnmrxpVden8WfYv
	 PWyHHu+mEaH1JWYFajEwcOePcDAulSfgSg92EU1Is1brOoRa5HrLZJlgN9vs9qIkZF
	 WmY2zlkdwPKyXCaSYTW57z3iV6nmIAKHG9Fx1PWBC3zaVbqb5nbrmccX7xnO0ITLWC
	 2L8Lq0MSGM+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA176C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173963933366.2335.1753949738039680357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1665c40c50700f61d5dd3dfaa18a38ac5cff4237ae0307889ceda8db53251b7
Date: Sat, 15 Feb 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739639333
