Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C208F2F2F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749583793; cv=none; b=kBdHbPuTKpGHOd7kk2DVLMIhzjnoZJVKvyMfGclROo0xs/GF0u5SiImrUqZt+w2EVt03rDJv1MhnD2jmkUoBfaCxK0P6etTe3rhFzdnRSMieBebreXaT3ORJ86YxqHKAN9MfrnhUc7fhT9oiK2m79XcLo9wNWGmIyS+teeZ4NiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749583793; c=relaxed/simple;
	bh=/3ndQ9bYKn++IwvNoEO1uZyjzvNFrGVF0otTwrpSun0=;
	h=To:Subject:From:Message-Id:Date; b=Vqe716tyW37R2QVQlA8mVnefbLMUAuGT2cZ1EuMwwpM5y59VjmlyTGTVNKmkahRazHTl2DFMIfA6vvoLQFL2mPAhoFE2/aOX/tuVvQTwcf5gxb7hcnuOx9KsdNgwlHFZbliDzemeeyoq++hOrYFb0IBczTeckI/9/Rt1QduVfLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5EitoX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5EitoX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A25C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749583793;
	bh=/3ndQ9bYKn++IwvNoEO1uZyjzvNFrGVF0otTwrpSun0=;
	h=To:Subject:From:Date:From;
	b=l5EitoX3ztLj6K39jw+36ZFYrvP3B3h1Gl4MTccxzgH+tiukuE6U2uloZM4flulxF
	 3Es6ZPfpMVvJBA04Ktlsi762y40yAtMMYW5gr8ZdTImFBF478+z1aoN1mPOVGcCUrT
	 zt2mgZZUplJA6ht61cSP6GyunG858elerKJwHl+WnDT7frUHOCMBvjtFjuj94Ju2H3
	 L9t34BnQqn5WAIn2ENXEnNdGbjchs/8cqGMlYr9QZGJGYE9ems+qtVhnDdigN3M/qz
	 AdrQm0COB2lcvL9U1IDxpgqvCnTbipX0P7uY87ghCnnBXJMsRdZOBVfIE0mZQVkJ+U
	 B0kZHxfnVNvWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92246C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958379357.29807.1809927054610901653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe42f2b32d294ca93aa2cd59aecba1afff1790d14aa5462bb0768368acc203b
Date: Tue, 10 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749583793
