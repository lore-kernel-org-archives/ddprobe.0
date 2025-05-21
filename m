Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9D922D4F2
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747804195; cv=none; b=BmyiXR2vqaLVEjOlck3RjtYNmNGK21095T8sl6MTNcJsKalRM5EPbkNtIFIK8ZGbRBgqy1O/W11Ua6FtLOcQpXO5SomfLXpMI3hgYrth4O09lV5jhScfmy3hSm8Vel+PzmVwJ7FEUbJYoxP3p6/Gz88e8Xs4LV6ei3wlLYT1zdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747804195; c=relaxed/simple;
	bh=pnYgjw6gY6dzDr0wwY8bntgbMS1MRI6hKRJ8hktTI30=;
	h=To:Subject:From:Message-Id:Date; b=OupcPYLjH19PRRKOJQiT48cfXz2YIscgYhQCii9lDmav77BMEO/FF9xRMlI6T52xn7fp0TLYQ/Y4AQEeRKB19G0I9LAbimdWZjfRaXkzMfxyBp2TJiMcNUMN0Gt++3dn4Vn+DeWdhfIoxiobRgnKU8+kwVMGQ9bSjlA9/FI4E8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edjeWk4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edjeWk4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E51C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747804193;
	bh=pnYgjw6gY6dzDr0wwY8bntgbMS1MRI6hKRJ8hktTI30=;
	h=To:Subject:From:Date:From;
	b=edjeWk4++KgRQEygfngavhn4KDBN5DxIs7unL+tfXonjMdr3CbyfmBbZiMOp9gHa3
	 4XA4k4bcQISNwzruHrQZq0xtMmuvSUZocr7ZTZhqBe48UxPzQxsTZPMUIDQteGOD9j
	 h7geS/vmkmoIK7FRyo9TaX75WereWH5P2Buw/AptIkUMreUBx7n7cVuZFfTRfAx+kl
	 Z6eL8Wc16GUNudaBU6sNUWtO31Dq9KasOA9O/TuPTSA5KqZ7W+Lh81uh78oMeQbUw5
	 2DWknjvt5sNEw5xifUlFDTz4jsnDQl+ORtQX5Blo7lil/C0Xh/qGYNNWTJPLrMR23q
	 thaVyE3RO3dYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F63C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780419357.14949.9714371190445182940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d582817443c7d772f27a00eef46f5c9cfcace9e011d8fd1458e74c5ac654344
Date: Wed, 21 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747804193
