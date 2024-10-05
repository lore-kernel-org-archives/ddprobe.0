Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383D1211C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728124554; cv=none; b=nrzGguixEwAqLvuJc4XPiV/oWu0PSw2HfM4xLtrGG1FzONsuaLaVlWE99jweSfaaFqunmiGw73xDGIJ4d3njP+Vd3IxR3zQiAsM9sJdMKVibOFi+jPC7rRB9wgsa64b/9yM0GhjHOkJDQEuPzvhhd0L9n95ufOI4N+AOfBDi1xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728124554; c=relaxed/simple;
	bh=2uRwFnICJxTf292ib4G+fvrE7pQk0Z+ep+DG230rwNY=;
	h=To:Subject:From:Message-Id:Date; b=UdM2kOeWOE2bnrwa88DcEaLRyAAwq7XSBmmOuTDmooNAFUNzkvXKiwgIPEM86lc/o0qqvJNCYURRtbayVhNfwTX95m5CkpAa826kOur/a8BehoQiA2qxx3kVr/Py+yQHTs9B1Pt1qn4eIgVo4o5FI2v/n3dVsMwyKl5anZom1AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/YW+tgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/YW+tgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED78C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728124553;
	bh=2uRwFnICJxTf292ib4G+fvrE7pQk0Z+ep+DG230rwNY=;
	h=To:Subject:From:Date:From;
	b=m/YW+tgSCvuQyVmgYPpbi5L7FGFRaoTqe16wIJZn0zHSubu0fMEZHmIV52M/magV4
	 o/q+0MEoFAc/vgdM5F+5QHVaxWj3A/5B/K2yyJ9RIpx3Z/4Dm0DiYcn0EA56fQvusr
	 5AJhdalWhunvGsjFouJlTIJW8bi6f+I+qkBBe2ZPLU5aCcIB2sGMRvg4Uzvlzdh20+
	 cLzgLvSSgiK1rX6e/tTZr996kIX2+Ef22zqfZRLBZG+wbKsM5lnQy0dx1ymCxL4EeM
	 et5NAYvJrTPrPJ36ThUcMXraHMLaZ3JGwU6lolWqlgvh2obOT9Cx4wFqWf/payE/qI
	 D1QVCmnBFAKJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7F6CF8878
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812455362.18453.326907233512208338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df6b5b05296be63c22a72378c0e151d871312c516d0c5d2274397e76b43ff69
Date: Sat, 05 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728124553
