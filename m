Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCE6339A8
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775983654; cv=none; b=fQMimRYBmsQBS6i+czcALndsfDSZkRsJ+d1TCjpW1h8H96XZL6gsT2NdVgQsmCccv9vlCHt3h1F1GXeKnyxxzXXrGI8/UCsg0gYPRKvfaUFfaUKdP+hFKXDf+PVbYsaPXvs0S63fmoCLIHDNUj2fBPKTrvGrDz+Bk5utMwrCeD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775983654; c=relaxed/simple;
	bh=32e8yl6ntsVb+3SS7OnjQzQiWDf5g+prOFcWIehpkyQ=;
	h=To:Subject:From:Message-Id:Date; b=q3DeYIomY8YdhXp7zdo6HAXU04Vx5Sy5Iog9RRUdDpSyEIIleQfs6TmXcgl14MiDZG4vVJV9odKBRU1k+PuHhj1+uB/n15C6w7KMW74NXk/57lIgm4C4Gzw8BaiWq1gS1zsRd1eNDzUe9Hpa+XWCQfwr5+QraTWSAkxBdyvoPn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlXOwYuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlXOwYuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD9EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775983653;
	bh=32e8yl6ntsVb+3SS7OnjQzQiWDf5g+prOFcWIehpkyQ=;
	h=To:Subject:From:Date:From;
	b=GlXOwYukdZqoowccqeggxklx/z/j8geeW9Fuv1N5RRTVTH2yLft891J5EiTfFxmog
	 zDkg0zXwFMtS/+bzBq6EpbbkeQmaNqeTF1ep6dDxJ/XVyiNoXbcw46i++QQK5Qoide
	 QvDCvL5E23niwoQwvdm7j1Adyv6qoeLSlXvwf4DUrOJVucGZ1dHMwhH8mbQl3DqaRv
	 fU4/VaohurrEKcAA1pXJMYm7F811oV3YQoSCLsfQU9aw2svw+JOjgovI/QI7Kzm3dp
	 RHJtrgouQHSPsEutxFCF/DpJadIAgK7gsSK+UzYdXp6c4S6/uOdAO8UYNjtjvkZt1X
	 7+jD40AY3JgFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9AEE64001
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598365368.30474.14918442338615001036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cc1792da402d71245711143dd7479412a296a693edea29cc5485eddc947227
Date: Sun, 12 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775983653
