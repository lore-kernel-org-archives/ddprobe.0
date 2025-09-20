Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D41EF38E
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758355194; cv=none; b=CVRptv0Kq0BmZ/TPgP80/P9AQqCd+emCL82kIMif1hRkTEiq9qRi66eCgV/3oaTmfti/4n4/vPcu+0OEX/FlDNW1LBBOBjNXi0WTIO88Tuao/2jGGe1q4QBtagqD3rq9LGmSKw5ab5LU3OtqRRgh2Cr06cetXuLaAWCMIcCY3pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758355194; c=relaxed/simple;
	bh=c2dQa7ar5lPWvXJvjPC8AGEkGQgRw0AjlbszoXtSIN8=;
	h=To:Subject:From:Message-Id:Date; b=A9rTqYXjVhLQX1u9kjKLkv24GdTpkCN5Di/9n8W8RnYLYP+njvX3FW62Grw7icIsQ1hlWnqN1VD+xalqhMpU1SgOig4kRuFN7ja8+7YmFmoEpITdSjzYlhgXpiNQppJK9KMRwVk1dF1oeSLUFJC0rQB36MCqzCnmnomlL+LN35E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K04dSo1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K04dSo1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5381C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758355193;
	bh=c2dQa7ar5lPWvXJvjPC8AGEkGQgRw0AjlbszoXtSIN8=;
	h=To:Subject:From:Date:From;
	b=K04dSo1QtJB67uS3ermlcp1/Vm1TIZ3LGrKgEvbsW7cwsjNIJUpCtPW7xeP1Uwywx
	 uBl2OgM8CjaBgzX0N0FHBaw3cU5ZtIn27SSUQv0U0H2RVrGWo+U9RqLU7V0sC4Zwho
	 Y7NbaRcInYodnWlxtujY8zPZ2TbXvn6XPdBSIKpimIxnHemDSbalWP59SrbnKRVhuV
	 mxqjkuZFd1K2+QrE47fp9CItjzfeMAiTvZp1AZoWwEy48mi0q4gUUqHHqUOy4FTELb
	 5TtVZ6IKtZYgx2EsuVzX3o7gwbENtmtlRmkhq28JFG48XSn3U52E6tepKLn56AQzKD
	 YejNnNZRfdfWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA3CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835519358.24607.16744827254275576308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94d6e47af88fe6945ef11e08e149db2baa827562943d668e9a576e66e8cfc85
Date: Sat, 20 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758355193
