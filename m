Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195CC33993
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754275194; cv=none; b=doD/tStG7MOtGYgcTRPx8uOgV2X5QrCYuqQiMc4mA+LE8eiy17WLRiddwCh+XhQpcmrfNGc+o7IdgftbARUk4aIgPx07q5rgjMXnIEsCY3uLZZ1ct7+lgacvLO6CfggjcQl8jVifM9q0m/MV+fzW8K+oBQWA0JPsbq7D3k1qfiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754275194; c=relaxed/simple;
	bh=nOydLbrplcIArUIf/M282jJR/pfzQhQzrU4Ci2wG8Pg=;
	h=To:Subject:From:Message-Id:Date; b=LWBmsgs1l0gXyFkZpWk34b9M0rUm5hE5kDlBbDqlodYJ2/xOx0rDOIfwIc6E0KBzFl8k5e7MVDx1LSoGQRBIb/z3xeQpsjINITeVht37/HE1Wj4Liv9xxzpErtGzuZ+AYFyn8uUZExDNLrhsRkw7ZWRD2SxNPtYk9EabWuCxizo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxu9jLgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxu9jLgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754275193;
	bh=nOydLbrplcIArUIf/M282jJR/pfzQhQzrU4Ci2wG8Pg=;
	h=To:Subject:From:Date:From;
	b=kxu9jLgLdhkLkfCp+FGBei4RDALTkvN39LjKqLVudsn8eVaRsUr7unVc/La0VEA15
	 CXmwCE9NuIRxmwAHaNved128heZTQGe2UAST56jinWSfcuLHc06Omv2iqlOf0Azab1
	 G3GmWswtyaPdID3ACIcKmvmbJvn2BX3QC9SZd3nBKuQrrKZYeLJwMgDfQa0noPwQlV
	 7P5ZxnX7DsJTCjyxhOl1xzYyMIKwP+j6ejKUX/weLuS4kErSM1W1AHfmbo8SeaRt/s
	 fp9+5vNreKWXHGf4RQfXccU3Ox1Rv8vgmYQU2QE29vL+2EbLvv9n61jnvfkOzm8ZNs
	 e03gTdsW9wOHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF23C87FCA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427519358.8803.13586380214267070673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da57945648f217b5cf05686443af110b1c26e602fc6a649f2934f125f9e97a24
Date: Mon, 04 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754275193
