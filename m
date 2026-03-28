Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2013C40DFDE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774722894; cv=none; b=mmA05a+XznPHfz8PzxipJ0c4euCwYMRluRs6WVRn8u4hjF0nIrzJs/7Ge7G5FvWgKu3PIL8iTLctZsipWH4ARmEAN90FjbAnnr2NNoWjk1fXPhOS3XUd0yYPH04X5bNeYOoZqUCZstqgCd4K06ZgED4UXk6Udwp3umRFA6qy+2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774722894; c=relaxed/simple;
	bh=KHbjZCsnuUAFWpvPa58rMEEAnCt0sNMfT5qp8+kPMNg=;
	h=To:Subject:From:Message-Id:Date; b=N1ZOtTQg/9oT2V4Xl/cLcx8FB0akQuQJM49pkNriqs5CbVrfs6LIF2cTNchqZO4zYJdzEpJE4Vu/AA8ol+e4JU0kgmMJzVdoi5UhPPLaR4WIp85erl70PXj8m7u9e5MQ8GnjzFZ3EZJ57wW61qBFwwLafdV+DRMuQahBMOUPvgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oX+kyoq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oX+kyoq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F8BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774722893;
	bh=KHbjZCsnuUAFWpvPa58rMEEAnCt0sNMfT5qp8+kPMNg=;
	h=To:Subject:From:Date:From;
	b=oX+kyoq+orMklKPhXkkSSHALeNP7huJBe+u/m1iLSKcmi7vA/KYvIaVu5cr39TZoF
	 IdABNzOLDA9AgyPEg7Rg7IL7FsyTQXXFnAoftWduZ+APDxUgL+SzBj08JwhkFEnYlj
	 WUBx87TxyKHMeP404OBvR/5GNgOdGFaN8gIuaPGtY3BZEL9z/beAZBVKFs/TqNMkfR
	 0WSjF3YBr9U4pSzq0dKJHr226LdK69yohp74kSeNKqwnVpJ8NiQqB16pqj3kmcT1ME
	 mzvFw67k1c1zqyw0hLwwknnEx8ggo4RtPwwEhdV/hCNOvRebkF0vqPJmFkheiW99ON
	 mW/WnqNfpuNCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E110F3DF2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472289358.13915.17497830964080977974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0fbb82ba2995a41f42598cde533a5d1cf99774055d26f3b72efec01a3f4a7e
Date: Sat, 28 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774722893
