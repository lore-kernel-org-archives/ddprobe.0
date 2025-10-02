Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05509224F6
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759364995; cv=none; b=RaFDlzt9rUyLEZwsjeZDchPgg9p87SZ8sNYib4sWUuzQ0CBo1LaXxqnHxEbhNP0DsQf+H6xfJeBbk/6QcWGHR8fad8Go78xFdfDfmkCXuBEcNQr3UhpIAFQpUvGKQUG3/8WTpwI7CsDtueklbuzpkuMvHgpx0MDBNFBB+PI7V5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759364995; c=relaxed/simple;
	bh=yxKAWthuKxZDj0uqTGwOi16RyYDgmwm96vCFV1R6+xY=;
	h=To:Subject:From:Message-Id:Date; b=pvx+Ybndd/H2qlxupWUIeu60qaQxE8SPdbPCXepayjSy++GN3lQbRG2SnTK7YA8QReNxbCQZtqJ495xx567CAMYanqX6/HEJobXHMCsJRO3+QujThGwLwlKCXZQwpR+L+GFBvNjAqwY9nkoHTDANnZgqG1yEy10HY27SRkMAgMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM9yw0Gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM9yw0Gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2441C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759364993;
	bh=yxKAWthuKxZDj0uqTGwOi16RyYDgmwm96vCFV1R6+xY=;
	h=To:Subject:From:Date:From;
	b=sM9yw0GzElB3pLWu1X6SHF8Wb7XXf+Lp1JUx2Exmcfk+K7XJ5QttAKk5upiueOlQG
	 QKVV5TJFCP1VE8qc8zsXsxF5CDmkLAMeTA2RwUGIwy7F7nz0C6ghigDVORbx2NCDeN
	 elW+zcU/uRHo5VrHlNmu/qWjqyqZfOb0bTUT8AsMIg1wswULhce8/b+7u/0CGrK/4r
	 rhU6e+22Fv9BC42pGkHUY+sMlXJmmUAbNjZ0FPQFEClvWntgyLWQbOC1fdmdbFacY1
	 cdZ+u2hG38Hd8tOsV1Ae5UYIDYNC+N1KfaE98engJOEgKVkrJA+8933/8X28FRwWg0
	 07/RI2OgXEzpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20CCAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936499357.30156.11853397912193469991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fcbdd6d1634c4a684fb410cbef684dd19b898707febab8c7ccdf4ea8ea4ea7
Date: Thu, 02 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759364993
