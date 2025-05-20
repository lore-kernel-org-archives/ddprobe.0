Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3BB26A0F9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747736394; cv=none; b=OzdHRrNWfZCnf18wUAz2VIjoO1mtmr8qp31J6bYtkNguA6AeqJenWBhDA4n2twXW0RfcKhRjmV6Idqbc/te4+66smBPfEonit6VQDo12uSdDo+VN33yrh+dXwAjbMJ5aR+S5W4XHP8Uu8bfCek3tO8zX/pSLDmjU4wGl5+Sv0MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747736394; c=relaxed/simple;
	bh=CkO/++/xUiQ5ZU+d1/e5Eed8fKWQ52SvivMTdicwPK0=;
	h=To:Subject:From:Message-Id:Date; b=EgDLxX66tbbQ3K5OdQEKNDDtcEi/bcWjak/TNnHmKdReye5jgxeR50CJR+74cNlb9Pt1zhX69ffSwQ1hQv4bnnNSycqdJGTIrQriSz8dJCevgCrG3UpsUdX+Xb8e2liTi10IubtdNunp0dKdXsS9h6JNfZg9YP/wOzpL2QSuZfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Loxvt+UK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Loxvt+UK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B97C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747736393;
	bh=CkO/++/xUiQ5ZU+d1/e5Eed8fKWQ52SvivMTdicwPK0=;
	h=To:Subject:From:Date:From;
	b=Loxvt+UK/ZvoJLxtfh3OOMZt7CxAOfGMJshC6Q2qTC/6lw2k18jesrzQsbXsqCOsh
	 ToRzE6YsujhTJINR2DADozMUdN2BhZnsIrrG4R7/hl9xhy9IwOuVKydfXDCUvUB2NS
	 U9eV4LamAr0FC5Dgcsg9uBfTTSDlI+vEyK3j6IdOK+GVwRtRuNV/L0rToAjF073Stm
	 L0DxFUxyPsOj0JUaJiZYX0NSKDx597KpXOcwacbw2Nj5zBJMaIRBf0GHr5hNhOEl30
	 5S1uYghXGS6nQvECaUKKPyDDaNzEjWxCDmE5BrxFOROoCcHFX9zCxxinSd0AobHaCE
	 Kkl7hyEfJzgwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB7C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773639357.4462.3759889038626622277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faeb8cc4f3a7df794450c7588688fc9d0fd1c646cc894091a1c88b7f06e65407
Date: Tue, 20 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747736393
