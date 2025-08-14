Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286E41DE8BF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755164994; cv=none; b=uvdEBCYPEnFc1UYG1V7e8krhR20hDmVDvGDWJ5Fpeak3FWcd2Z3fDPm1Z5XmDrxM2Cbbvc3brPfktcIPKF5biNTscm/M94vmuFQxla3xLz3YRmW4ihDSVQj9w76OPuByBBxWwGAn/XZ1tQE9TEUft7zVWPgXnrGxBO3qtdZS4Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755164994; c=relaxed/simple;
	bh=/TevmwXztlN+gZktkzHIwrw5p8FWGZBHzgxC1tDDQgw=;
	h=To:Subject:From:Message-Id:Date; b=Sk2r23dybXt0Rsvv8qd0JR7SK7PzpYdlsYql+jJboEvVnbV6d7xxcwMm0I/cqop3k1+0TcJ1n0TnaMkeo/liWeicLNMvtk8Ke35zwmxYQJmg4ivVa4OR4D+ItkgZc0LeUkl3J3Rb2p3I6E66I/T4O3vfni5M4cLbzkfsk1v9Fv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0Bb7Zl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0Bb7Zl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2279C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755164993;
	bh=/TevmwXztlN+gZktkzHIwrw5p8FWGZBHzgxC1tDDQgw=;
	h=To:Subject:From:Date:From;
	b=j0Bb7Zl8dOIyIcgCsC0YrzXFXgsFbWnAo11FbuZ0EFGN6OjhMf6xOeQl0AFhHUBE7
	 5uHo36Y1augRb+tTZF18zgIvbJntmOGrqYBaj7gBKUEaZG9u2YbwdMgg5xP6Vnargi
	 1KY/b9LmallhkR/2182xWa8xxbp5sXsBSscPg/YwnZdln7bOZ/f0ZpWKg0jssNbn2f
	 I5EbH8avOjssPxtCbl8iV3lYXPoV4XjIszK1FMDqg+YnoZAbteXYw5KuahirZstD+d
	 LlX/wZoVcD0hoPjfB54Kpl04Kd+naUuCQNn51A7rFmaT47LbwVARug24dUd37g0nVH
	 jensDizn59d9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FDCA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516499357.25937.6353682442246262487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c5ce9d2420e09833dc6bdcd609f8b2ddb5ab90f94808e0ce60049e75e68250
Date: Thu, 14 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755164993
