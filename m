Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D3913D8B1
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770136434; cv=none; b=uKTyfm0nq9BBuOtXYZmQz0QxUvmpIpPIXHtjErqHro0TKWji8BLh/Vz+Ga7bMsE0GZUpyOsqdCcpoI/4dTI5Z4UZP4lHI60wDg51cHxGwYQZ/uYkjcizDtnPD06WBncbxf1hvKO3geJOCaHysMyfzGvEfVucRm5VydDl87v7A/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770136434; c=relaxed/simple;
	bh=oWLihpzTNhtj8cJcsguGQkfRaJSPjwLtX5q1Fvd2yrI=;
	h=To:Subject:From:Message-Id:Date; b=uNXGlaWWawE8j6O6/n7gaAjCSVGJ4AW6BwVyobtKviOB1n4oDGyvhSVxTCw5S5rPhTvgzU6LjKcU99Skct6kdlCTmCB855OLxe38G/q4F0l32WbmEt2DiDoYLVsYSFis8grK0i48oGqauappqPqMigF3880uv1RD0P5pYmhWz5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBCacBoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBCacBoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E14C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770136433;
	bh=oWLihpzTNhtj8cJcsguGQkfRaJSPjwLtX5q1Fvd2yrI=;
	h=To:Subject:From:Date:From;
	b=aBCacBoJvrq0pqW9EOsLEtcwdsQ+gA6iLl0d2QdDRnAlOdKI+dGk3H4lD+lnwnovX
	 kioi2n9EAT9LPabrTY7/VDIddM36Mrc/St1i/9/we8p7wFAcAkJFvsrmKF+i8dHajE
	 dDb7xIPnnpB8V+Cx6fhiU5/emvCBIEPym1JHnqP5YdVs9HGV8mPxZdMsheEB0fWJak
	 5GynUSTiqgPcs3XDyNEbjxbeR4WgB0BV2jv9Cdn09HycT7vSamnL9kp6PXTpmKCG4j
	 DX6KcQR4dkMVe1bJta3qGPYsCyHcJaXN5wWKwkExEHYliVGemxDpjrhiAFqNR6lvoM
	 yy8yD9Wy0Rs2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA10E87845
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013643363.10295.7299159211832993937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01a9d21235c5280a8d632c5a76fcb40304ca60c46c4eaa8fe41bc30bfe6cc61
Date: Tue, 03 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770136433
