Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277E11624D5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769827434; cv=none; b=sIWD4CsC38kZEz4Sxz4U6LXTX7JNGg0FkMsP/oV4s6Q82Ncuy+fWDbOXgODCIEAuulYwdZQztxFWuy4pHQclOHSIwa7EuQCPXRv9fCJHxYq5/X6JrpKQqC3WBSi/QUlkWvXaNUFsCRn4gEwjxgzVjaelkKExtdWHcGPihTQjb/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769827434; c=relaxed/simple;
	bh=3WJAFQF+vHWpIr05UxnWL75iAEAm29keadKKLdkXHLU=;
	h=To:Subject:From:Message-Id:Date; b=rBOkH7LY0s/TAiZr3OmTmggZDS2JyN9B7dMdoCQxm7o6vCUSvE/BclOKYDO9UWLDyLWxp9qYL5u7zdFwSqfr5e+r4W7ZRYNBxcXBqPSoGd+RD8QNZPW/J5+AiiiHh/mGjuyFFRZaTa805EjR+u0Z/giZNCq37EQj66h7G8dn4VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ts6GZRgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ts6GZRgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA81C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769827433;
	bh=3WJAFQF+vHWpIr05UxnWL75iAEAm29keadKKLdkXHLU=;
	h=To:Subject:From:Date:From;
	b=Ts6GZRgUHkhbrWZ3l9e3bIfYSdFXnRkGKCc00EgEOE0Vw+lQJMkb2Ef3Ccru+uUMh
	 CZf07Mf5N283o2kum9K4kxZKHGReB+KqNA7nrthWE6a3Iqut7ss5+waTYFdcMiUA8V
	 6+1PCYvF+/22JSKl4LYloK0oPzsoudx7EJeXnX5MvoYml95qUG+qBygar2uZoIs9bH
	 7hZ/doErcbY3kDtf+C4EiV+d/DYHUqjlDWvxp3cf4itrriYSAkqcqyhpstaTg86Le5
	 8QCQL7ADLIAi2ZDM43FeXS1+uRdiJIOgQsAnVT6IzWxNx7ZG3zATdDSJ8fcsL/+JrP
	 78i1+75XC9XPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9592BE6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982743359.2207.3249458494820613625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00976f0d4c9a8145d1f88df67d74d24bb252e8beafe774595e7533d7df87dfc9
Date: Sat, 31 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769827433
