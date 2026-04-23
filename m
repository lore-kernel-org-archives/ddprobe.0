Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA863DB634
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776916655; cv=none; b=LHE3Ix2ByLGSYk1454JqN7VqcfUGQNOBSMDFDa68rXx/qXDERuqFNClb36tiuRsbVJGAj7ldkVthZsMS1Cy1+loqz0r0cppeBK0Jax5AcXfBoWdbASGVqwTuhSR11jDmvelRzmR9DH81vSQz8bd0/nQRQvq1CBveyEPT/6mGkOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776916655; c=relaxed/simple;
	bh=+s4s+EK56aINsj67CQbJ6R/4aFmCisCDLe534kdj2ew=;
	h=To:Subject:From:Message-Id:Date; b=ibROShuhKy3VtjpBSJ5RUt1LAPKZSQnwuk6XTQaIbvGDEIF8MDiSZzqcMtPAkGwSnmTI1yXmVkr9OtPgd5TlYvE+/1rh+eIVso6JaVF3h0sVwVhXKERpjUEeyE+H3wSgfGSYbm9Q69A25W2pjaPsjMvuL5AZ0sufMiUo0epkwWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HadaQsNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HadaQsNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 244A4C4AF0F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776916654;
	bh=+s4s+EK56aINsj67CQbJ6R/4aFmCisCDLe534kdj2ew=;
	h=To:Subject:From:Date:From;
	b=HadaQsNddceyWI41aCQwvBC2a1Hm+UxZlMB13BEekIxsUewzhH4b3J0lGEtLpA/05
	 iBTw4GJ0guQ4aWs+0hwrp+h/SN7HjxneTOeh9YhsCGIW+Xn5A6rCICZ2Qy1iALezpE
	 LVEI41heHjg+sWwgpGRg3/+vAa4kKnoHk75bSKcQxKMrr+EfAHsBwbHFx5R1yjNMpz
	 ijsAYwvB+4+e5H3o0fNUUS5FKHS/rw5ae/IqTNONylJlI62FB79OpP2uMX2zwdaEvv
	 ymGOAhESd2Nk/GK4g7UaWLbQtlZIhpw6XD5b3ofmroArYC+VA2SXpqU3w1W3J82Hcm
	 yFjoNN2vI3MlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5A3FAD3FA
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691665375.5177.11343688803631313482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1a34a2806d617d3b91e6f7ea2194ff48e0198d355bcdc7e65b565135ac3797
Date: Thu, 23 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776916653
