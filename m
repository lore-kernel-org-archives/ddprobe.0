Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C342920B7
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748006994; cv=none; b=u0AXe5tJcJ27wCThmSZCZh+GgDinOi4PgOx1rN47O0o/pzP5Z3SVwwznboS6FG8cc9JIf+qGTFL52bKbo0vBhvd0Y0vUF1mg6wGunon5pyPCz5I9N3pMigZjj7ILwnW5liFML4yWLjnPsQcTt2bFUvQMuMDQAP+TWhbGHY8PsuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748006994; c=relaxed/simple;
	bh=xnYi1DMJIxe+Z5BtFlwsnRtMk8pUMmY8rvchE++X8D8=;
	h=To:Subject:From:Message-Id:Date; b=K/iZLdgD9w3eYdRh7tboIcJmTzlEtmefMdqkDLuo2D/YxKraqPNwkKs1pS6Zx19yd/FbIsbnOIiAHcNgzJ0Nazq/J2NUjrBFcJLvI+EWQYojrOkur+XCsujxeQmlKh7YkhGNgig65d6RTC5/rkUu8Xnz7aSzYWVaO9sXhmsjoUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xku/p8Id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xku/p8Id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748006993;
	bh=xnYi1DMJIxe+Z5BtFlwsnRtMk8pUMmY8rvchE++X8D8=;
	h=To:Subject:From:Date:From;
	b=Xku/p8Idh7JFvvQHwOUF7pMbUEOwaA7OgFMHQfEuJI05SHgPK6k4LwSfvzAqdGKjD
	 X8v8cfzJrSoNIqiEWO/HVq1EXP7nxpTm0mvz9/MnEoBm9ImKDApy2RAmCWaWoyej39
	 ZiEAxWGNjLs4HuJlypnIqoRy7cwforTvN8nWxtAVrZ8KJcoYCyHA/La2mZ7tGHJRE+
	 amsWo4cf5ClHhFRnqiDxlsVGdip5BRvEwOXPEI17u6pB8UDA3/c0FqjXuVP0cR7FCj
	 Hj9pPVp6F+gCQCd41sNL6i/e4paUqXVkYyQ2GJLDPPy0aUpNtVJW3LTu/zPEEL12pd
	 6ExfXqcMZh4iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA75C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800699357.32017.14143263406483607248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff0114ec856bc69dea9ecb6abc3f53a2ba91dec1da2c3a8c2ff34a01f2ecc2a
Date: Fri, 23 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748006993
