Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204BC2EB85D
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759906194; cv=none; b=H8pfVCbbI5VvfCMo+6y0WY9qciz792CoXtVoBJts/n9v1K6LyMIGER8p4dW5xvgebbySWSImvsN6+SNOYbFR8KGCZXccZhhQOFqGm02kkWrSYU8PYchjY/VVadEdtaIV1Aj6mFeBcDXCNRD5aLw+EgaQvcfpkLdehU3BxxqRN70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759906194; c=relaxed/simple;
	bh=0DC5I7N3lQeXNnPqJLw74rze7v3NqyciLcXNQ4YqJWY=;
	h=To:Subject:From:Message-Id:Date; b=A9MdgB/L+ALm1Szvt7paHvWK58tqmK4SoJvTRx+Zslv3yp/IpvB+GQDewsUgXAQIAdsBY1VC961H0101lrjlQugtYTJCwVrLjd0NcTlJrk7IDqZUXE97mebYSfK10DN/W4BNuAWE8TnuhWT8QNN/WLsaWwPReqO9QiPLJowq+/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJwww/G1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJwww/G1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ACC4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759906193;
	bh=0DC5I7N3lQeXNnPqJLw74rze7v3NqyciLcXNQ4YqJWY=;
	h=To:Subject:From:Date:From;
	b=XJwww/G1dLolbgL5q8raG4iPQYZOCBwco/0BdNmGZE+TJCE/Jiuj3yQNmFdtc5sbp
	 uN+O4nV/9NgLARJX52JjjeP3161i8BjqMlUIUcdi2/ezE4IOHbErew/S964ea00SUc
	 krnK8mWfr7xpPeJCUkpQqnYAdOq+5JWiUGASZA3fq1HSUzQliuppj6XZp7gkx/2WYw
	 bx0dxhBouG9X1l0aPBB9oAqPYuDoJ3zt8HpRnIvp3p2o6zuvolFoCdz/+hocg5EM4N
	 kzT/YfugFli3ZWmqGz/GneHhwjxYgkYIodHuyZvNEjFKh/aDjqwWps+xTChsFUhCoi
	 b8bmH1SU6k7kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990619357.9745.13780032022966225729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec4c69ad35f989285ea7ed275ffaf1a8960d3835388862822685c31edd9b67d
Date: Wed, 08 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759906193
