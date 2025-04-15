Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530B31F4629
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744720194; cv=none; b=XLNmbtMg08TeuOrfuWTJY+ogYPlT8c2iX7q3iotznkJP73YXntFE7cxqytsNapGT1YxpasDDzlNqxr7+WXLzYZ1pgvo5hUXpjJlWXTrbvhGDHVdgt67kPVumHmd83vtxkgJIhQiaMVnMKSje7QBlJENKlrSh6pgOPgwQMJ/sWQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744720194; c=relaxed/simple;
	bh=t2IpirUUT4WQ3x7J+4zPC4UptrKPiqMO1YbmtIc/vIo=;
	h=To:Subject:From:Message-Id:Date; b=YifR5OTahsnet38GG8Hvx2aMkZGux/muMPioYGbwnecMf0kkLMExkXhsFXbOe37SyuxU0c+Y7pMlPE1o6PLpRJa5lKUM35pXMMXud0NRxQ6OKXXTCOOxljD8cXKAaM+ealKsbQkbk2nKDRkp1bivqww4xxwsmsFjuAlJlnldOWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrF4JanU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrF4JanU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9BFC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744720193;
	bh=t2IpirUUT4WQ3x7J+4zPC4UptrKPiqMO1YbmtIc/vIo=;
	h=To:Subject:From:Date:From;
	b=XrF4JanUIIG7jCmpMRid3l53AWgOiCyhAYsTCqZGd1yI1rDIqjeMW8JJ93v0j5zsP
	 M/APNcEh+Jl5Ng76peSTGXuVOk1ubYow/pnD5NFdAjivNO2D5lyX8ZqeEQZXtNYyer
	 RptejqcciNiPWJAe4/yFFdsB6MBPX6YF3mD8YtUoxxZ7fbrjNxIBGz48nKpCHf/Y+t
	 ZZsXn/02d1cNpxg79+M9BHBNFQmYD3vAbf2nLQ4cJaLJevrDmRA2LoCX4qNt+E0qRv
	 nZLIxDINrig1V7SQ78tQ/uGtMnXO7VIUlemW57uuKxnB/rlTTJV7jrU+Ly99r3PKpB
	 uQchXor4VJM4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953AFC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472019359.32279.6474802404720067827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f142d47eb9e930839ab93004aa6375476d054bf6b7c5237fae65b3e601268f
Date: Tue, 15 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744720193
