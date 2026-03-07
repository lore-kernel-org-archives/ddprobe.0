Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C0419AD8B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772900694; cv=none; b=cNrdTOkpL1ahQksX8ArI7npu/8ec6anoU+UbKX93Aaup/pdJStGMA/9WJd5n8YRQ/pXkHSkeWTvjmvi01kbOU2/TAHs/HrDvLBXAzi1kWkCZRazM8u0bKs5dPLfVgAELGEITs+iGKBt23XgIlZSR5aoq6juGTHwvr2MTce/JKPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772900694; c=relaxed/simple;
	bh=o15yxvlhjKubVL44iH8uIt398LVfbMld6P2bXy/KI60=;
	h=To:Subject:From:Message-Id:Date; b=gC97mOkSvAofnXMc05UtfwNdbQPOTHuFsDY0t8h32dfyL6G3TPCW3BRLEYNBEROjZ8Jn3mzQTwRakHK2/b0SwbOurrincLX6sk3MhfoDYd6rgfuyXsRp6eyDauuOTNefs0Wc3LmR5bBaSoc2mdjx6xjYLCMIUc0E+xgAe6ixWyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfybFIUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfybFIUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF45C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772900693;
	bh=o15yxvlhjKubVL44iH8uIt398LVfbMld6P2bXy/KI60=;
	h=To:Subject:From:Date:From;
	b=RfybFIUxkiIpYrbxlSAr13CxJcbMfsNoJ+CdaheU9DEUbRRv7dkrZBkBTmU8WkXT0
	 KFpL3UfPgDUxSjXyDrGruc8cPsX5DyhqEl8CIuishgGBLH+1ztYKuECayfW97Y8fze
	 Pb1NfT8xOL2DVtJgGR4CyZhAXYpGVCtS2NzFP+LkIkulir3DXwjlB31SgjOkYVAlF6
	 pZvof1BEc45bsdDvHZVwYI0jwYHzzB8fJBURfduK2DXqNoQTYjxr6YNgk+IJR9lZjg
	 R51i+g01OyjIpvvKgIpiaayd5F2F/bFVoDOJ9WWNbq6GldxRUVC6Xhly5JYKQ+qRuW
	 mCcEcjrSD9MBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A6AF55101
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290069359.16447.17897500576404316600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6b43b9201f2bf36e42df9a3df27dbfb655c18c5d59e386c5405cb4814c6e9f
Date: Sat, 07 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772900693
