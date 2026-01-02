Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1700542AB7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767360234; cv=none; b=WY6CxUTfpqpEgXp5YBMVkzcbw9Dw8d8F9gBmU/raBFELjrq+myrXiAuZEcKfmEMo9PlDARc0WHx0FHLi9pwC/eaBc7trDDcHk1snti3BQA7IN26mKHamsdRdHnUzpLBhmzUMtE/mhHP82TiJFnFqkKLU7drYRoTOWSkMHnvdMzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767360234; c=relaxed/simple;
	bh=+itbyS/yVU6kCdIq6p1dVd6JzbmGEkYMFy1i1Tv8CdQ=;
	h=To:Subject:From:Message-Id:Date; b=s2g8/6JILq1tRDaa8BJkME+GPlOyDMjHirSXX79KwYx7tNVYMiYSpuTlzP4wm/zdjICOx+VWWlXWyQ0Gz1vw/zbjnUrOTn6RoY0bUfvyw02EDEIYd1A7eiDyuQHedZSLqyIJxCTJIP14RlYfPfWG0I9zTMVo+c8IqHPywHm0AfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KocvRreq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KocvRreq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A726EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767360233;
	bh=+itbyS/yVU6kCdIq6p1dVd6JzbmGEkYMFy1i1Tv8CdQ=;
	h=To:Subject:From:Date:From;
	b=KocvRreqQwinPammy96TRGzK2bDlydlzO/On00uLASEjaT6og0kXli91ICgZoQZeh
	 7V+S9jE3ULXCOgPy3ZTBll9aGMGQAH+L5E5z1/QY6UQKOgO4hxj7qiG8MkEt5UR6IC
	 1YuntwHc/7dVBx1EOYciah6zMHP6BSeAMq5xwA0Go3PHxq8EeW2/M3yBgGqlnghFPd
	 br0N/tsEXE0EK21pjaBP+exCiurryLV2psWb05ejKTxDG6ldfgaKMGy6kYTMtxgDO3
	 hplUXF/hhEUe6nwjVyO5q55eo/GsQzTWP311ug6eXVtUiuOysXwJVpUEx4p28IT3ur
	 1aaUJ9kMlrajQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DEFA3741
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736023357.1898.6130702263213708007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17c0193731c12828a997d239ad2c1b053a1fd7eeacd2d0874a1b15256526fa7
Date: Fri, 02 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767360233
