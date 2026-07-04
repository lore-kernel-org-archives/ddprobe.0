Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5723E225403
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783132714; cv=none; b=mrWzvnBwXj/tuQwDgWzH3LNNVuW03qr07mBQnc57K4+Zj3/yGr//4tqKc9p/vC8RNZyqFIT8L4k3bKy7GUCcDPt/BsuCKcNNSNI/0unNKld+ClvpUW0I8WXKRBbPbYrWmaAPQRuwbZ8LoQJbCzG/apP3xdj0xJ5/B3KoUMYxoyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783132714; c=relaxed/simple;
	bh=A75kqyL0jAp+P060ZP1vgIeVfsksVgCeDAr++QtTXQI=;
	h=To:Subject:From:Message-Id:Date; b=B3O2nk4UBCXE9DJp8867oM2LhfrbW2oo56vmhWrq0Kef7ZAHDcC5K0mWw5OLZKfVWIHznlT0iInO1LthJveaEvRyeZ4fOFRn1snNXP2bAchG5gFeVlKzwk1QJVVtF/tT7qXuXQ8C9zy3CF2QBSc+Hl6+7W2UOuN+44P++nO2C6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiFbIEnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiFbIEnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0020C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783132713;
	bh=A75kqyL0jAp+P060ZP1vgIeVfsksVgCeDAr++QtTXQI=;
	h=To:Subject:From:Date:From;
	b=YiFbIEnVbveuIbOOdA7HD4GBerJldmn6MxVo2eS/sP0Z3sGn+mRk23NRoCpaMDKCU
	 A02JqLQOyj9st3aR8NMc6YSzLkmBMqoOxLTmby82Bm8YCr1tv/Ql1bJtvyILwFeF1c
	 gJqi9Tr+gZmOb7JfYh3UWG4wZ1BEcS58CcFNQDvYG4BHIOp4mZLJ41KAm26i7yx1n1
	 FTnoVs6cndtgP4nRHCc+OareFOrWrmB8dp2xxzB69akIOeiO3czIYLqWv+XvSn06Rg
	 ZxElR0tmHsDUbwShhmpYYROCssQFsvQnlj3Nv3Dof6DiWUaobyf3zbXeT2QcyZ/wD0
	 kA769xeuYL8+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD16C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313271368.27465.5479573536831385007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc029a6180cffd4e8861e4ba3f87902d42a1c63923bbf072b22e246cee79a7b
Date: Sat, 04 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783132713
