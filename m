Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A9D15B13E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717011263; cv=none; b=NypW6h6+LRRQ93GTgT1qXepe+tRmK2RzSfSaYPupKx3hQwmKPuiV345YKPQZ0KBuYXC94HPmfBkQ664DbACeHsRBklv4lWShQ+OZonlT5XPCMawIgpWtxiXs96aUxgEE6IBZP8tc25L1N0xswghvNCb8/kNvL12/zu5JRha7x1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717011263; c=relaxed/simple;
	bh=83BStvtbJB0hYWI5R5nZtLUemvYDhLzlKD016BGg+JU=;
	h=To:Subject:From:Message-Id:Date; b=afbseb0AcgGijkDUyC/2LOT2yjv15e1LOcD3asyC4z9Sz2B76ossDc0gi2FwacBlYCQQFVODdkyjgtxlsyasjDmc4XlNFEE9yg3poMcb661cQJyfH0a/NQR0tMm5//MClnLRojvbb9QiOtqw4GE2M6Nfy+kEJiAfM+0TXpLey+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVtffDfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVtffDfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F41C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717011262;
	bh=83BStvtbJB0hYWI5R5nZtLUemvYDhLzlKD016BGg+JU=;
	h=To:Subject:From:Date:From;
	b=uVtffDfkn7P+R1PRzZsXiXWgSNO56ADW1/2+JYmVsoPM6PVlTLxarhUJgZB5+xY9C
	 +zZFITNEmyN+Ze6C31Rhj3505WqxJD39mb44cXUpHXOInQkxBOMVqxitf0wsk9ePfW
	 h0+hpdXUwlNBOJ/aMoF3VVyHHqQUX1PWej17ytyhO4L9Rkx1/LJtaCl0A+iKgE5q90
	 wefL4XB8JbAdux1jFiOnIrXMwHmpbLJMWeSIn5bD/Q3KCG4dK8hCereptDZmUvoj21
	 ym0GcYM0dw0zI/LVSLbaHvcfgEEhB+8LUy9GRo7NMiIyx2Z9vTYq10tdWN95NSfkF9
	 Zx4uHcWqgqVlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA4CC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701126279.3910.12503355996786673990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f1b9bf38f9c58aaf0d985041db55a54e70531c232cbe1f53ef672a1ab09c7e
Date: Wed, 29 May 2024 19:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717011262
