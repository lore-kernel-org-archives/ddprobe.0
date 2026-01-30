Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2392DF6E3
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769757234; cv=none; b=j1UH+BtEEJyKrO5E7fn53Upc4lvTEUzv8YWQIzEKhskZ/P9B7n/SyfRxt4kPWYzIlI6FE0u0wVWN/gZDsDVXtxi/02HFQ4OEO4ajIgkPm9I1PyH3qDKq3zP7M1LvC+PU9V2oWNk9i4Y2af/hjoL4Ipz2R58cc5SgE2uM/a7997Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769757234; c=relaxed/simple;
	bh=z0lsqiWf61KWlkmXlwOU6asOoiMHK5qofYn6zw7rdAA=;
	h=To:Subject:From:Message-Id:Date; b=c/ONjXVgEvhh6rS+18HNsxsyKJRzz4dmKq9PhUkj+kdDiLu544kD1kFak3QYNs/gYsOpIIRkVcCvMSg0zS+yEZiN0PA3paBVyCJ/mcxaIAuWzx9ia8iSMgU0I0aXRoCciu3lQyyBOtz2UOxLB4XJ3ooXr50wrsLltqgdMCITsA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjSdEjMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjSdEjMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FDDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769757233;
	bh=z0lsqiWf61KWlkmXlwOU6asOoiMHK5qofYn6zw7rdAA=;
	h=To:Subject:From:Date:From;
	b=ZjSdEjMhY96o76sdWC4k6N0DTWWjOZMLXx6yhj0mJqZhuSefCGfh5KkfZFef97VBO
	 mdjp3zd2BMd8eJSqj0Cp6eIGBWDnGX/BIQJ5cQQlmvP6UbxLBfKUu0ktr6AjHE3Ajl
	 B9qNqlVdqU9kZI0nd3vHlV6ogmBR8GitYOymgH+27V48JBXK1B5NAnIzhmiFYCiQ0U
	 8CfCDl69EYvoK3SoKK/Dg6gv/agx80k3vTy6XtZ1X7CdwNjF0GwOdhkSb3TXafQSny
	 iJmKGO8ejDUSD21TZ73JeLOLoWY8Ozcl9SLZiGkmgQqY7HRyqlU0CVrQGR0Cp3G8pG
	 56copaqBzct9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9789AD49C60
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975723358.26682.17436313262083385183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0adf77ff81362e826965bebc433a5f4a7ad13c9b20b6586187176e0eb735be
Date: Fri, 30 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769757233
