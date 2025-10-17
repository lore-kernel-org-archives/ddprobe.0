Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E64F25BEF2
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760687994; cv=none; b=QJqNUncvIfpj8oOljXmyM3RWvd4zXTaWPMXFm/Ac9ehXa/g34SY3vBpmHqOIxEyVsN4cu7S0peLDO7T4jU66nuT7BdBVKznLM3vh4kcnpggY+yT1KIscU2FGfYFFSRFfiRiTGztilUGFKgAnLOoHM5y3VE6s9o4nnJHY4qyXao4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760687994; c=relaxed/simple;
	bh=HZxYWJJeo++DdXRkKFD40jmxuPlT3OPz5hh47e9cRLw=;
	h=To:Subject:From:Message-Id:Date; b=fW+im8x7zaVwhlMIvoA98uiiDtORVfD/AMTgKRHUz02Fn4XRgZX/igDnxDlSoXS6jU2Ye8uiKBXu+0ztflYXeVELtT+w29Was5twIsBcAB+zkCHCcxePgOnyHyga9pQnN5lpVzy9uvF/7F+k8S5Arteec3+bUYG2PY7HT3iPadU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnK/tuv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnK/tuv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B1C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760687993;
	bh=HZxYWJJeo++DdXRkKFD40jmxuPlT3OPz5hh47e9cRLw=;
	h=To:Subject:From:Date:From;
	b=LnK/tuv0BkErfNXfc4WpTMG9TecKFQeW3XNLudGcP51HHapUPzew1Rrm4lkIyhiuG
	 P8it2qTChp0Bm7Wcb1ehcJFjx/bPb84CG24kGlfhakbk7vowGvC+fnnFL+IilL8mKK
	 q4zc8aWNme7I9VcYk4I0heibVrx8MwEIigo2Dyt9ZHNRbXykx1yrHGXPp7/g1Aqu3P
	 3M5OR/XnzHvWXsAfwHqbt5t9XdMPD80pWl/kMwLtnOK4MRS/RFxk6r+DYXJM+bEpmS
	 7JuvNadMlx/Bq2DTYpSSOA8K0gFN9WBHUHp6fOGJm/DcGql08a5GSFL18k6jfcpfvM
	 69CtHRfaDhyVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E781CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068799357.22320.645050065598526917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5122c52ec9921f7178f3bd737067321ea42ebc7592c31087b6995f9380026f6b
Date: Fri, 17 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760687993
