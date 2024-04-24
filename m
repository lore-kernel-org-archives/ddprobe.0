Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6587613A401
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 20:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713991883; cv=none; b=D5gHanJTbhubut+trBMclhLCwlRVoCdu/ga8l7KoX+3LIgesrcjjHU4VD7WaSrD8p05i/olBx3AziZ1spqwZ8plhKAf3pMYcylnGRmzr1S4I/DWIdncZIB32eFMS4l2lSwgFcB1LI6T+i2bj42ZBDGgle+f1EQ86ylh5QabnL9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713991883; c=relaxed/simple;
	bh=BWGdmjnedpUVH2xOyxzWm+fuGMV0xTgw/tSbOvKZt+w=;
	h=To:Subject:From:Message-Id:Date; b=TisyOBqSd/4aHCfeYLvaUOobV+vKh3iP6OutmZyk6YanjB//q/fpLWV92QXqTelIaoXS/O0zkprR4oQaiqQqT6J1zGe78YSfS8dpOUHGIZ2yR5IynNs96pS8zxTylUWcOuHmjQcwd8V4IHP8cFZ2SAt9YCbPhqK912QPHkZs58k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPkDuPll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPkDuPll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A04C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 20:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713991882;
	bh=BWGdmjnedpUVH2xOyxzWm+fuGMV0xTgw/tSbOvKZt+w=;
	h=To:Subject:From:Date:From;
	b=sPkDuPlllxtQMCS1v43jd+TWJcw3PjQD9PEbtV7gep0JqwKeAEICj9hoLG0lHofJa
	 PVdpCwb1fz0Cax5CvKS23e1iB0hrcaH2QMDurEMKuC+oWAmayabOvAp74m1/mCHrYd
	 tqaePUMX0CpO2TUiTJKeuChEpBxcP8Inwz0WHQSHMeCnsbLExKVoCcYCfl/pW5muoU
	 ywSZ2WsUDhHXv27QeVH7dFpgx1ZS/dXDNfxT3Wi92Hw1Wbq3/7r24lOzvNtD2xOfG3
	 wgKk3a1bHoJCWMoi5Ewb/BlT+qp35xPsqnamEaCsGN1Ub2XNz97mhKUYWBEJcUjDJ3
	 eCzjkbcsZe3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE97C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 20:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399188283.1732.5315538366160202195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9561687d23a5fd6e9a82534a31397ff9383ede56f20acb03d0a71ec2a16b0b67
Date: Wed, 24 Apr 2024 20:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713991882
