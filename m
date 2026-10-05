Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBAA3CB56D
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791239434; cv=none; b=hgsqS1+AvkhrRIamQW3UO+wM6we1wbHGL3ut0MlGJvn77h8u0CEfRkFk8u5NraV47uj1jUgD0lujWJuzRSaiFAhzgtSk57bv5DeXzQYSH0aMFHgE5z/p1Alyx2q375CdLiPRj/bl1PKKz3ugEsZMZiGRmbecZtZQULFXPyT8MLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791239434; c=relaxed/simple;
	bh=wFrfTmpYPeINlMBhaz3DsFVKd5CG7noXmWYZCuklBm8=;
	h=To:Subject:From:Message-Id:Date; b=XEhSWvbQdnzRwLZW4XUVOnKKcmAsR6jgmCLxhiHem6ehdST60BFwCPtxHTrPROXgQLMD2JhsxUJmaXjpBrKNUYQ3UE2XnB1yGyZnhH6ZJIQ7cuqdBY80hQxhYYu3blm9nK4/+ffsgVAfwKERFixsrv04ohT3LrQQjPFVRrvNsKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZu2kxd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZu2kxd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8581C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791239433;
	bh=wFrfTmpYPeINlMBhaz3DsFVKd5CG7noXmWYZCuklBm8=;
	h=To:Subject:From:Date:From;
	b=HZu2kxd8P0iYXShZLFvHCQ3rdVacuJ4sEb2DCu46ooBZzslvyMfDjyx4bY4+do09S
	 52A8jUglDl+Vkqde+CB7dakHysQmltIWtLXdJF7mIZUBaHedxkga0qmM5xED4UTsAb
	 jfasvYsjQsbnmRnMkqcoMDssRi/DTWINsi6TEDs+eF4tiuSTmCnxFqKgr6uukkRFNH
	 WJjfD/8A84TU0V+lo5xytH99GiNPM+kVZK+f/fmln5o0gByrVXnaUTHY9HKfi1iutV
	 Pgk07YD6vJv2GeQ/qwOQyarKOcXAPLgG6hFBYT4xqtmBpmMYdJ6GjZ3uPlI/1XDvYD
	 mvQK6xZInXKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95ADCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123943374.4789.12763176616096291609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5f7baab6830f24b91947d4d6106506fce6053ed1cd0b7230f024f5b442575c
Date: Mon, 05 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791239433
