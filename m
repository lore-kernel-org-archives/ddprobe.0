Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5142F79F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735427754; cv=none; b=SHeKD0JJXKC4fLcEdRT2FpyyehfcYppe3sb3nhYboboWBQa10ApcATkqvxcstCOZ/9jWoSFs+o5mmBolS5Rf/DAB2/XXil30AHSI3M11ZcuEBesN9wsAjZ2QsYB/n4MucpTrA/OcxJ2+jKq/KHhx0ookO3PGcbF3hL5VoHb2A7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735427754; c=relaxed/simple;
	bh=AGwon9dX2ehWy0szB+UF+HDZF95LkdQ3Y/RKBPCHU7I=;
	h=To:Subject:From:Message-Id:Date; b=tKWPaNYxm8Uy7J5o3cjMjefw920+7/SPKwdTFdbfwX0ad7c1p/hJ9O5AHhlzHpomx9r+zLSWTlrd/mobRI3I4xfUGQgyOUBx+NUGYkEUxK9I+yhimVgdoSmF102eOwMOqEO+EM+psaZM6g7sO61W1JDRFnreEHOoNQn6mu+VGU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHSpFtqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHSpFtqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF382C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735427753;
	bh=AGwon9dX2ehWy0szB+UF+HDZF95LkdQ3Y/RKBPCHU7I=;
	h=To:Subject:From:Date:From;
	b=tHSpFtqOOz1v1qZZp6PmiyxNWQtOBGR6V+9OKQfGK0Jc3/opeBXP3xs+PaUID4dry
	 UY7H3TCqZx+QfAQUAwiFdH8+lWClrFgw2qNOI3Rk1+EbEOeUtX59ybCgwGAPPX8CwS
	 UYuLrkxVLQEv4gcgSVyt4+v20BOQlbpRgp9VbLNEkJAfEAimhS2yznmsxFAoaMkI48
	 5ELsFJnbjLGSuDVACO+n8fBjxjMcXBByV/vwjwEY4H1J8ZUwCyvhBafpjy7AH4Vbbg
	 nEpryswr+UOXui6S9D1NlzOL6qtQIlaiQfdsMfeOKANAuWRUKfU3uSGtBA1m+jouPI
	 SsnYJOdzQGxrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981EFE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542775358.29745.9408134063939950414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c956696b42f563a3896157432090fa854464ea24fbc1ddd4486d960457b60e7d
Date: Sat, 28 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735427753
