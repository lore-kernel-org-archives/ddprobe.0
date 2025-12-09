Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBA6B640
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765312374; cv=none; b=FpkSk52GcOPm/H6iOhvHYIugNb/4Nr/YKlvGIGJhL0uWJjoM8SOefNMaubCivM376RvOEDVT6/TrTzpoUaWKiYQteb52itg9WCwZpxXYbhSC/Q+Z+35QovSBvUxnkzwZOg2NrCx/x/r/PNgyAkzvi09ErA56/7v+AXCvyU6ltGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765312374; c=relaxed/simple;
	bh=bR7rPxU6UutMGWo0Ny5V2xI23466HqowjONYGAzGdQ0=;
	h=To:Subject:From:Message-Id:Date; b=Kqb4j54oK/u7iJDZHgpw++Ahu7zPWNgkBWCTgMFVhJPh/8IDdObf/6h1YFSsTrI7ippmGqJDJB88jrvvTyBVnuwtTcZcY8KPijiVMh2gEjku5a9QgUOL+WTWrjCVIoSb+I4g1l8ITWnpU0ROcK/Jsayh4NRFqWdcYIO0c/+8DIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgfJTNWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgfJTNWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC89C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765312373;
	bh=bR7rPxU6UutMGWo0Ny5V2xI23466HqowjONYGAzGdQ0=;
	h=To:Subject:From:Date:From;
	b=HgfJTNWkgxr8WJoiGHLIPBG3I44bnT2APKklq2C3aF5Os5ZdNeplfzT4uklSveArD
	 RqP6Ob0JQAPCexfaVsUhsrSibtjuPbY6R0lZcQhhcshqhKmg94t0aNa8LdHzAOyhQI
	 /hH5ApRXyjP1MzkdT7O2C83pOw/9aQpZjgYOZuuxgR1xU3IlaOjype6v8KsIWi6yF2
	 Y4hj/PXkgM3J9sUjT4Di4ZkdnImrvMDO56V2dnpgPBpk+/mUeXjv/mAb7gS05qS7vM
	 VmfZUOlRPrdScDVGDWQuZJQRbM78TccVKx5L700WzDjI9RFPn7DYrI+xbtlHHLMYno
	 UZj2XU5oL+qWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9805BD3B994
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531237361.14936.2373545863824558379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29da7c8f74ce09dcc2c000fd5e4cff6255a4274134edfadf6513147b4a4fdb87
Date: Tue, 09 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765312373
