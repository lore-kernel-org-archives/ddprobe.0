Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1824A22B598
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750336794; cv=none; b=WtDHgvxyb/Y+mRG4WxH93X5q+PSpkOGOUUoNxhysr+kcdjap8gNMrcLJpt141d4V13+sC/vvdblqh6z5Djd/51dKaamkZ562UxYQL+MGKpd2yn5/lvLBcxXeVfBi16fv/atzgxmD8vpSjUEBD4Z1PtxnfoxauUdA72thPqxHMcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750336794; c=relaxed/simple;
	bh=nU6CSHKlIxIckLWcnPuMkASCey6UYR8o+bxrmiv65MM=;
	h=To:Subject:From:Message-Id:Date; b=BBlsyoXS9KzYjh0TJXX+vdn6u73OC1jx0SoQDp8r/lIrpGHN9noOXMntCilAybfAKfpWJPDKxkPPGxD+b13HKe1ImWn/J+A51CJnI8ENG+zYcTMzUjpA4gKV+N8Ci9GAzDyIo783WVHNp7lZNQBEuUiMQh49otElsCM9W2W/73M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHju9ykw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHju9ykw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A253AC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750336793;
	bh=nU6CSHKlIxIckLWcnPuMkASCey6UYR8o+bxrmiv65MM=;
	h=To:Subject:From:Date:From;
	b=iHju9ykwO+ouwCuXn6kOS7upgNRILfw0dBNgtjUo3muTgG6BdpMd/03J4xvIia9kp
	 8iuUtgL3uM3JnGFH+46Bk8SqAxVkgIdXJ6DfWuSgf3gswZ/g5347paxoesxdJ6YsOs
	 Qs5NM79zKtdKjmisT/8WWBmvRGncqpRiKulB6ncXvDogc41UwZO3HlnW2hVaeczTUi
	 Z8eKB4+EKPi1p+Ruqq5l6TTxl6lepN/Sn764K0NKIuMAt/8T65Yy5I4dHGD7AGfkQB
	 L0cKILYZNrgnosfB9h7pxRix7FuqFJxYPuj7Woej85nGGGw1UV+IiBk6wWafPVmXTc
	 ByJZsDUwHFmOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CDC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033679358.18970.3388543932644692812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d11cac04e42584ea4b5b65c0ed3742f488fe5c01a1372717e284e035e158349
Date: Thu, 19 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750336793
