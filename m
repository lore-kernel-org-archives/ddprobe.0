Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6833C38
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758070794; cv=none; b=gzDhOjDopRYhq8QGaHieMMX8GbjHxLIh1w0kqa14RwC2SwiX4JyxB+bq5Fy1WmLxIB0RHndLx2cs6wm8qE/7eGB0ceFyptVD+9Zbpk2zq2laa/FXQdR8Z5EoPKFu19sWxxicinSkbiZFwbaKCcS1YcH0TlQRcHsZo4aDJGgCsb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758070794; c=relaxed/simple;
	bh=nYv1HycIJVjcI6OfdXkqL+ckDZvOzRhitdGO8eYR+uw=;
	h=To:Subject:From:Message-Id:Date; b=NfvQaUoRQ5igKBphuOJ41xk4IzoYTgyTN+MT3hN8OopFKpTmUiR1r7Jr9Zo2l9/yHpSnUFXTobWUjJmXOkPs/Ok0MBRmThCJqeYqvWNIx0WVdz2PkBHdlhqLD9+7pWqONkXZKFuzaqLNp5GOEyJlIrgtcPlO30VZUO47Cp30PG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwoGKJ8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwoGKJ8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758070793;
	bh=nYv1HycIJVjcI6OfdXkqL+ckDZvOzRhitdGO8eYR+uw=;
	h=To:Subject:From:Date:From;
	b=YwoGKJ8itblWAswMyfoBi8GRkd/WbStQD7AYQ5/d2thKeBnfTtXzkthqBzLZAxeGU
	 005k+zD3ar3/qUaKaIjtSehQ/lJjnvZgbzfdDlfbIVg4NOAxIL8cHWI/FDwl80iU6i
	 qrlqd1STDFqEg4Lau7V7WlHu37sT4ihX7U9/yJTqDVsm7Vl7Ij24O9xDNZwK36rYyS
	 5imMXJwbGou7zlYQZcA+iKzDUsRBnIIPnyhuhyFxcVJEM4eBfI+UOKGGxgAjp1b1dy
	 4U5irRGk6ubp7r7+EG6neDXok74RKpH32Yl6coCe1P+uNVLcEHyZlFR5AwZC8Vjshv
	 vsfw85IABFCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C4ECAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807079357.25282.3468381355943021900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7597a8cea018f1d5c5beeb6b9b78bba9687a7b30c71e4245a6425c59c7c3dcdd
Date: Wed, 17 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758070793
