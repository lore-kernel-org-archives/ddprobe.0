Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D9A42048
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769277833; cv=none; b=Zf1dGcSACKq3WHqWMwNEI1+VMOEkAzInzIRhZiGxaiaW50UJJgwMoZm5j4fNkake8wH3oh2Gt20DZH2nqe1E8qOnb57NuB1c9jLhIlBbX3DWzh+kgVpYOrYSi3ChGJHGPe12cVj5EDOpxFFWjwc1F8BHAVC3vSkU7trINHrPi+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769277833; c=relaxed/simple;
	bh=fquQH0vdWibZXlYIBwaQeAJDefpjGKwwuAdzGCtEeYc=;
	h=To:Subject:From:Message-Id:Date; b=fbFFFaM/7/pwI46AdU1HWEJWmX1iSMPCCtfqRYG53ETgERdnZirq0T+y7gPjLk3ry9gU2nTiOayeSKPlj+dcrJHdwKIncTgBnlRbaU+qS7FG38creKgauZ1dCy4FX/lKQmzIpXu4eKTsQkDaYfMoBvZFu2r/ynC9sBZOqWL5l5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwjDxFPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwjDxFPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FAFC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769277833;
	bh=fquQH0vdWibZXlYIBwaQeAJDefpjGKwwuAdzGCtEeYc=;
	h=To:Subject:From:Date:From;
	b=JwjDxFPmEwWT9T+EU+mLX+hMgjfopRIw13oeBYaB1MfbJIxTvUkS0FNWrZPS6eIj0
	 gBMGisFBOExDKIJxm4YqL5ApqJKE4dT6oi4pGA4kgtXcWiz1rJg3JdVj1R7cHJVPVf
	 YBgueL2+Sxi6FiAWHwRxSIPAHLYGMJxRnG+VT4sRLVjA7w3mpjLRs5p+l4seOvI05f
	 Dnn7g+/ldTt5P5ZPD/O2p26GBHcJGAYj35EnCm7ycS9t6Y/t8TWday9PEiwT6SXo4D
	 HCQ5OZx6U9xX58B/a5yfiVmaBf8RmqqN8Zhg6KsjA4x1tMi+xA/l1sUXXwc3kcm0sb
	 YNmPOkOesu1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CFDD715E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927783361.15331.18076231598399245289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badbdc1b9fadccfdbfb9ceea606ae8da4eeeb4c987a615efd2147071fa7b9745
Date: Sat, 24 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769277833
