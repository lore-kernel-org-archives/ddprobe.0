Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BBB200C2
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758337794; cv=none; b=HdAEMVoNzv1OkSAYpzP/qtNaWo59xu9NfGq1UrHkNfjOrRzk1X0c7BLCpiSfjjJrB8KXMOBFDD2Vd4v8gAx/kHGwQlLdAFk1CKIyBe9Pdso0swpoDwjf6R2MEw4xPDYojKjD1h0RKFWaPIPgGfGOoNCZBPaC6WPUHzpG9VlQp54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758337794; c=relaxed/simple;
	bh=TKmoow2webSJ7vcIcdN6hD/cVb4nJqg0XNfDN8+3CWM=;
	h=To:Subject:From:Message-Id:Date; b=VhpYzwo7iORJN5w2uCrgVUcX1aDaYWBMzylKXyIvUW+p+hne0D6PiRsni1K8KvMA2m2UVSwTDNpBsWbnaP/+zTJ5B9KWUGA4j2IXM9aVpf7vCBvnKZtPi4SaBQy4APEriaxXTTyeiENH3RCsE6iCVsCXjmHK42y7a4Iz4qPFVW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZ9npLsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZ9npLsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E68EC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758337793;
	bh=TKmoow2webSJ7vcIcdN6hD/cVb4nJqg0XNfDN8+3CWM=;
	h=To:Subject:From:Date:From;
	b=DZ9npLsfLnfdzMv02xGNwTw5aqDtc0vv3LL0yOsyf5KPa+LzO8cqlCteL3pFw41DC
	 o6N20JeBpp5EjJsBXHO6xH0ooT61+uBiK1ZIE9/E+hU97mTR0KhONjkVz19sTRvlpz
	 G9xhiUiAqfhuxfOTukvjEPii8DIOwqMR9B69Sm6SFFSjRhFxyfry5hZGgTVRLUn7Vi
	 5JZlPr+Jz/V1MlEIhyw19C0KzywFFBZOwItl51ATKFcybgCZjeNBKq5mb4PM+YDsJw
	 IkSHBDNw+Rllg7szF1ksVwrumORj7zWKzKOuXvu88W4u+6A+rcWr/Kc0K5kqzqrlO7
	 15cw0c8VnSi/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FBCAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833779357.22028.741191962889233263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5dc7caa93dfa8be81a075f919745f2c23806c2d81ba550eece4048a9f1d1a1f
Date: Sat, 20 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758337793
