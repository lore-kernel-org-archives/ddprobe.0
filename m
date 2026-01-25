Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245CD25771
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769370234; cv=none; b=M7TL7j/Z307LcGvSsBeXKA4AJh+qwx4CY88Fcwr4XLA/Mm1aiX4F00L38NTtXPAQSCXo0NshvfDqVtJnYWiguxXCu2esmWfGWKhRjwWDT7pmmyF94qdIdd1eDCQLrjhfsy73AscI1IqIue6OIWa7HWp0jSsEslUcDSILQ3xvdc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769370234; c=relaxed/simple;
	bh=adnmS4IYlISNuLAtLkuB7VBGchpUvBbjaNmwFrgGOB0=;
	h=To:Subject:From:Message-Id:Date; b=EdFNhTyLfs7R5Cb+ev98/vpV7LZX8T0cOGJ+fMANvDrRSEdRD+4IXIcQJu8DPW1PL+GK/2Hyg6IKWfpgbOfj3Y811QIAW946bblHobtOzUWqyYcTWRs7Hm3bHlSQNJGNdnMlr/xylQpWjtUxfJFfi2VIhG5Phd7W30SHc1ORsP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOLRRUmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOLRRUmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6859C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769370233;
	bh=adnmS4IYlISNuLAtLkuB7VBGchpUvBbjaNmwFrgGOB0=;
	h=To:Subject:From:Date:From;
	b=rOLRRUmQPmvfE9a0zDY15pQWpND1ANEjoxKit90E3NZ/erCan01S0lqO4ISwNzuPq
	 cV4CsWWg37toZbzhhUEgLa20/W3qVj1Ztc0kr1+DIsZEcacTC7E/YDhAaGlZtQ6Ftj
	 j9Uf9a8xV4VS4p2lufE1WCHWleuAxsbZIMKkVRPna+YyZPysAhTub6tRkNYazfUP5y
	 R7F/hyoUMSuSSstInrs2uzF1L8wHMV2DvkTMvQhmZiD1WAPhpOPViD5Zh5sE8dOYix
	 DRjEAdmayUo/VltBpRrcRh1VmbySIQscVDVTh7GSSOoZU1Jhc9msyEqieoxX5g0E3V
	 P82u+/eCw3X6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95989E63CBF
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937023357.23102.7742795206115327774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f044b08df5581bc6279efc9cffe60b8c50e9ba89bc60136da531bff50bd54f6f
Date: Sun, 25 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769370233
