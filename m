Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450F120D4F6
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742371795; cv=none; b=iJpA72haZc50U3QfbBtBGBWH+6t3sCiYmuu61FTp3Ox501QsTbpGlbdNgBZozmTthdKJXQ/xt9wzI0iPEHHhhKpogBNzy4FsdVylmUcyH/kxk4F3/2zMy3VveaF5iVwUXc0krMT0WuvJ/nwvSLaRzcsBJhXAn2oBogMQBv8dJro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742371795; c=relaxed/simple;
	bh=81Ly+h+itFHC6/hk6WrOWP/hd5W56TqBa+tQnP4N4mI=;
	h=To:Subject:From:Message-Id:Date; b=GkMi6V5pek2bzADdOtIRmJknSEJ+PHMWAZ00Zj9VLxh6gjB1aT5GsA9A5tZSPtcBhZkAxh2vkBozcgGZ3Sm71g4QPDFYg9ba6RLYegAWelz7HFZJ9cBbUTh1lySqF3ulBkb/amKU4dt+xJkMIHd1vu88SoBLSKhie4k9c72HbPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSoD03uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSoD03uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EA9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742371793;
	bh=81Ly+h+itFHC6/hk6WrOWP/hd5W56TqBa+tQnP4N4mI=;
	h=To:Subject:From:Date:From;
	b=qSoD03ujuQKMrDQUckyQK+1pVdLmQEJC1d2EycD54O5+yDrKZvDWxk8jhgaviEiA9
	 r8ZqNXhmvlzw4888oIZcWiK3ucd1OkrddlBwz3MSrjmnDjfad+e7GutziYRrW1z9hH
	 BdFoI+7d3eJ8Xgvf19tniJclqeHEqnzEFqEXT+TF4Oc15s06OixKw7sZOUqAb1M4IH
	 0UbmRyvzXL+wFx9xlhmqFzwPRtvjEZ8hQ4R4/r+EuAbG96vMmSq/lvHyXhEhcDO1Dz
	 1rjjnXD8fTvxqEt2oWEMDwBoRZ610FWOSn1K7JFG9jOHLnsyQwMba8pzSqH0/aJa/W
	 AU3nop116NRwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D540C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237179363.3671.17390510545882839992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edf7ea97501848863e8633d98d27c1b91607a1320e66efea1d7362481b2f9a4
Date: Wed, 19 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742371793
