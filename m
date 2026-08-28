Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4F43C1405
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787944834; cv=none; b=UNkRPSP2G5jfkhQeDMhG6hRnJ2igN2SehhOmlvU1h7jlavJRKY1nIW9/SEvdxSxteRyW76LzGRax5eVapAnCQZjF1d0eHYGj4YC3uUM5j2AOCGIvvb9mn3eNuR/lLVOWk1Cv+vBE7JL0o6Y/kWL0KewIll6KSEctKDya93CkA80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787944834; c=relaxed/simple;
	bh=Z0mdagmMSQcnBie4NMIfr92bgD30QchOtdTjWU0jGJo=;
	h=To:Subject:From:Message-Id:Date; b=sTIuAZmuTf+c6ZpErYJa4Jzy2pb5RxfW5zEz8Y7gqhM7u4mdBE5gdNIEoQtZ7btrnllxtt1jnE62mU9iFubwfT7nuqTelLN75yf0K+acOkWKysNiKLLP5absCxqWQSIjXTZPwwAuJSik+z5vzKqsnJd1HVoEhvFuUEJ4RnLAsmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZBLPn74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZBLPn74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD30FC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787944833;
	bh=Z0mdagmMSQcnBie4NMIfr92bgD30QchOtdTjWU0jGJo=;
	h=To:Subject:From:Date:From;
	b=HZBLPn74cDMgoMidSz6AySChcEq9FtRMouMyoQJ7tEPwWJTGKIaI9CXeKD00+UFBe
	 bvPbI1urc85Rb6+AbGdXR23228Wk37VKSLadEKwKmuZG4Kmr9Wg+GDxodmtbXDcP8T
	 EEadM8pmPwa+ATYs8j1wUKY24ogY1ldRWe3xtD5Erc5SZPeBecCWYgNL1+HCMeL0OK
	 NwIeDOZwDFjXILMsryxXSqn/ied6lBTOIuGCA+WqHzGTp2kTJ6eCuWLxrjCT1PSTjO
	 k8UkS6Gn0+FMOTKZHG+xe56ztc5P9jspOWncwHmrt99YjcR+KZ16NcLvR7AivEcwcS
	 q4KjdLPcrVHDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD5CC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794483369.5608.14354936582667193301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703cded0833ef446ac67b8b1c5d5ba3d7bdf7f64559b4873edc830fbd7ebd019
Date: Fri, 28 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787944833
