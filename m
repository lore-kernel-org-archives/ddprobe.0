Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5832EA920
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728187554; cv=none; b=heF7wu5BFXh9jZ4fmY51pJnWKlFqjFAqfBPNFhLrCKVkRJ0wDikwRXlfgQ88FDBo8STDlHPKMM+2lt6hAuTHp7WVvghMyddXdoiR8E5Q/oiz+xI+54mkGwgHlnoHUvJra44KqSyBm2bd4jd2WyfwYtkcMwVGhvz9QKbGmKXpJQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728187554; c=relaxed/simple;
	bh=K1168jRPsS/xM9eDAuygX6H2CSL4ufsJU2rQVd8fb9g=;
	h=To:Subject:From:Message-Id:Date; b=Mi3SKV9fxZGp60FbfqcCmqbvrFBCFpkWDS8/0gbovl15GdRyqlwwMo84wEjm4MILmZrOpjquZrZniYEzH1mKo11Jp2xJlJncIe65aySpS5QA6WEw6lFiFVKRRSdiA0vwsIF4NfzRoYRjGIopaMl4hggk44G/liLAjcz/4Ju1R1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1eDcwzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1eDcwzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8050C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728187553;
	bh=K1168jRPsS/xM9eDAuygX6H2CSL4ufsJU2rQVd8fb9g=;
	h=To:Subject:From:Date:From;
	b=e1eDcwzZrkswyAAaZ7EevVy+nZwlLnJy5NhuPWroROAyUCGwJfG/k9KuOy7ZxLkfi
	 S6pUefZRNUcshTIOseJCuz5XEWtX6IrG0dpHLRVhlg/mN02jB/qyNSxdVTuOosSo2V
	 /PQMzbPKKVl9k/WGPDqECEqP/2qv1xHxzkNfR9IP6jkXe00/fx6P3w1VSFLB9SofET
	 uwmHKF9hspLngr4CDRT8V5ak68Gt84MrIUi2R+eeoAwp04W8fMs+gQTVfy3w0HnXMe
	 cUx4URxSmEkBSQPB5m/dDKRzpilLnjaX0PFaiV9A8MuCBHEPbnbNJxe/17JX6q4dK6
	 U5CEnlDlSC2LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B301CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172818755359.23396.10007835577961544314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c69d26cc25ac8ba9c03a77c809347564f77e4700c37d61716a910564a046b0
Date: Sun, 06 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728187553
