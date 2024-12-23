Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B00913FEE
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734969354; cv=none; b=S5u3koR/AsyGN4Zt/cIuyKhRcHVa2LoMQcTOASqD62V9NRd8FVvx61E9eXNZbGKy9WwvkZ8ugcT8YGjxYZg5dd72ozA9Xpdw0OYwGz/gAahgrcf/8UZ0SK/+ENqRVhRRIVYp5kmqcB3966aKJ1c5koRDWAc1ZScXo14Ecd3NoZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734969354; c=relaxed/simple;
	bh=5E7+A8sfInyX8v/uAA0QWG7QiSjnm5BN7GlJNTdnyNs=;
	h=To:Subject:From:Message-Id:Date; b=j6KKsd9SVyAvk8JCOWNzAFHj7ooBJrL31bTnEBolwGvCULYI3+g+vDoh/JaQqB5VYiI/EG0pjvJgpd8h0tkBifAbQbo7FG5Wt8LApyV0vZuehyDaJVV84edg6Ce2on0z2+BKDtYNxljipO3LY1CP6U2IEXBE6jeLvkIryWeq7W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNas+mNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNas+mNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B21C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734969353;
	bh=5E7+A8sfInyX8v/uAA0QWG7QiSjnm5BN7GlJNTdnyNs=;
	h=To:Subject:From:Date:From;
	b=PNas+mNlHQ0Y4zJBBc5Ib2xbuWWV/klSXv77eyJV9aYK0QkNkgSBXtdVL6Yw8gExn
	 aB8MgrmKIqpIdgCIOlMpLly1P9ADAwCj5jY2Hb9JGSOyE2Up1faN5GOki26D/byOkr
	 hoDxkfMRRryLxGEIjb+R/NceOHM5+jEUYxkuPEOUpXnIZNiYu8+BpMYvox2EQfx6Ft
	 l3LWQMgGm4QUOnl2GqkEQwmUtY4LN52UZrxMOZvFqfFydsU/XVIHiRW04gcvTEy27e
	 0cRYQY1ClWV+BAhy+ZkICPgVFEKGWFXXsyxRz4l6niFrOYg2XajbkBirDy7cTrxFOd
	 mpcDqkVDsuhQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99962E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173496935361.958.453089733257231943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8029ab3a89e2be179c2e3cdf309b103dfa3081e9bcc6de4dd75b4249e0c91f4c
Date: Mon, 23 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734969353
