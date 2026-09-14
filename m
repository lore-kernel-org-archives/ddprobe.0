Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E9B3A8FE6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789370434; cv=none; b=Uaif0GoKDrC3g5qUIvhjTVrJ1IFxh/wTppiHYgw+cU03WXzU6waAglk7IMdLmlBWF+QmZWDpBpQrVffC497iG+CwcxA9wdG/jd1Ur8OhvOU4fFjiJAMMthWOXNF3o/UXjh6Tk4gbZQMR7HEW18dqkoO+yynlWX4ArSggQ2lVhZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789370434; c=relaxed/simple;
	bh=lVItvI64FyiRVG2E02T6y/E360xMkou5uv1Wgk4y1NU=;
	h=To:Subject:From:Message-Id:Date; b=XGpEG37Yfb+c64Yyz1cuuZpJikm5gcH9vd9gdHmau1CCS+JDhg5KKLHgkplJ59Tq3PM9VyKy7d61BkBUw4hd4hcJd2+ox8/prs8YpOrIHx3hEnS8ZrhfUxzTD9obGwqyIpBxDnNZlqkB+ApkTUqxeq0tKekMxP4ZM6pxXwU5r98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZSxe2G7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZSxe2G7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE83C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789370433;
	bh=lVItvI64FyiRVG2E02T6y/E360xMkou5uv1Wgk4y1NU=;
	h=To:Subject:From:Date:From;
	b=lZSxe2G7Rkv+PwRT3KBeRh1+Q9NNtKNBRh+ykZ/uqSHMFRLFuF/JS/YUzaRLHQnFr
	 7fTYOk/Gy+tLvF82pu2aQC2bCRW/kU2xTHJ3Dv5oXTn4u02jJPzbYtpFtU3cdhBS1P
	 MIiAs3MeTJYtLFcKINCuiyVvv5IRK6G4NY3dfcwyciBo015k+VUihixn4GzQEg7BMd
	 SRoesmCg5aw6g4/o9/P3ZkvFkIlzL8dhc/r+/lLWblgNChPiARX6ZamUDQ1J9Vlxaj
	 KBmjRi94DrbacI7hi3dFunc/jXTnqVH9oA06fRePznrpxIUbiLL36Z8ukawnC4pFa6
	 wxk9bo+UekIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB7C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937043368.7140.3250787591853761311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3946966e0d89e93764850f2a6e078fd3c2b33df5b94750f564e8f602ec590b7a
Date: Mon, 14 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789370433
