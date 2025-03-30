Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A00C320F
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743313196; cv=none; b=hpHGGy2zR8n1PWhtRhL0KdL59pCBrZ1QM14Se/oyNOTXxuB3kwV3VDqkgUbjaSL8pJjMEMkBygzUHAyD8kREeB9JuJXFc+ZBa60944kJlbOi1y7ZYvh5ih0u9e67eM1fp+FUucWgL2d0gsLPUBIwhhbUpcriUmSvEUQRnO7K8Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743313196; c=relaxed/simple;
	bh=NQ114nX35k5u2sifV5JkHJroCmucAuFZ3iCmtyNla5M=;
	h=To:Subject:From:Message-Id:Date; b=hziNXzarIHC+Vq0O5QJspEyeS0DodVvzh//OCH0Z+6NLu+tv83Uf4ewsYXfZ3Te2sWWSaoGXDp5RSu9AL3jFVAyEiyrZoN5e+HOP/v+VU+D5VePUsj5iV2v9hhX4F7lI1/x1oESSAn3jX6jb+lYIBF1u/4OsMQU2xwBXDQRffeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nImdXDS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nImdXDS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8DCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743313193;
	bh=NQ114nX35k5u2sifV5JkHJroCmucAuFZ3iCmtyNla5M=;
	h=To:Subject:From:Date:From;
	b=nImdXDS6dxevLuj5fvi20s7tD/dzqDJoflHl8VAaiRjno0X+MbVqvT37BsDRIHCB6
	 +tX8RpB28n5xwLabSs9ZeplpCspZnl7DCnwcWzvJiHh6OeF3rvM7tHfuwlaooE3xb4
	 f/Gf+7GaYnx69RB0JCIviuNWBQt7XROv3RLvVj4mb+Afkpeg5HMzkACnXeqXuZeuCr
	 N3JsMbjOA0CVKoeNcjYVWov9KkUnx3wcEXJu0xN0zMawYLJ6zZLnKUmzLPmCoMnsy6
	 T9rBXQNcbB+WlWf1IjIJdmBD3uhgXNHwJuUqoJ0+V9fNfuVJu/MgGD0nofluwcKSU1
	 kjcE/gDb4vRqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA4C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331319358.26131.3939949544239158062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e62a19fd91f2fbb9e5d97f38750c7fd68232b2513ceac443f227f6e3bca912
Date: Sun, 30 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743313193
