Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFD42D46D9
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771094694; cv=none; b=IHzXId6QCKDbYYwqf2VH1Ay1FPCEDCr3mkzBc+OpIbSgiCyp9Rk+qKjNi33kk2iVaCq45/4ESLlYFVfRI3bKgZpZ47uYgZy/ynKsxMm47AODO3jxTrKvK4NK8n/W7r68xSYK0NzkqoeD3G9DRJgdIJLiw/blss8gJVG5Fy3sh9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771094694; c=relaxed/simple;
	bh=499z6A3IgPatr7kqbF5znERWVsG5bmYvrkL8zEKfnu0=;
	h=To:Subject:From:Message-Id:Date; b=m68l1TowW0UxCc2wWsehyeoWDVUWGdYHSpbsyGN+1CToTbESUIiBsw+9t+8nEKQX927HSqfsiaULwLWsGReeXpQ2EPdRes1nzs9ldoT7T5az6SKBazQcmT2PulM+CXmooRcXjO6vPB8Y80o+PqHXqfnEcWvJ90isT2jZ+BGrZ7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuEA8V33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuEA8V33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBE0C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771094693;
	bh=499z6A3IgPatr7kqbF5znERWVsG5bmYvrkL8zEKfnu0=;
	h=To:Subject:From:Date:From;
	b=MuEA8V33a3apwgzdamEDcxtzSOZErwHrPcQetYUSb3GdEHBMKvh3GUO5IXeKMGPwG
	 zPm+7iSFfWSxcfUB9ZJJWn+H5cHXQ6uck3+jZ2a/IETmQnhdODSZqnkmpTySQeAKOM
	 zyEX0mjPJ0wQNZns+r2Uzsq/MDeMoeW+skslgQMkZDuNTRPW1S/d5mDIYPuzB/ke8S
	 LGpHJ6xk6SEKWFkYe/GZ5S0VIICDpXltnEPtkTxDI3QdwDqXck7yXB4GgNn+P8+Nfq
	 T/Vp/7a0hpAeYbpLJ2PxJfRfzfrRQNpoX/+A4RDRe7/ggVyCOJ16Jsd0CDpAj+Y8/a
	 0kLvWQMZCHnTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B36EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109469360.23508.2990456143481829672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af33e9bf7ec41573d05ef8e32d4828a73ffc823526025eaa22ebf81ffbd199ff
Date: Sat, 14 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771094693
