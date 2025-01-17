Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5CE7083E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737105354; cv=none; b=VFdUGLovmuw2FdJtI9RC4r2bBzGDcdQskmxCEI2q3rxibOcSVQMvUPS2RJWsysUXmRVKH/7rhvkBpj7KSitb5qvDHb5unIMV7pkS9KWQa31/myoyEosfoSh8qhqmaGGyqItGbg0nujtyixHp/qX3l9JBhOY2BbWoovx+m6YCvPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737105354; c=relaxed/simple;
	bh=8wBhYMWnnfN1xlxT9KtGWmCWkRuRkj4Pkio9oKG4yK4=;
	h=To:Subject:From:Message-Id:Date; b=Sa1YXu6mAEr9wDCzAMZmgolNXCX8l9k8ai6nnm+Au/ZxxvLZE+La7Zu6O1JK+Mtz+ELsyHSJsxJdYmIMnlaKECSfvmccg5b5snce6o9yuIMsB2NGAoETQDP8nWrAAbiYCsvHWdEq3xEEQiP003k8I1OakV/5cmUZIHyvQu/qUY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lv+bXRd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lv+bXRd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA628C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737105353;
	bh=8wBhYMWnnfN1xlxT9KtGWmCWkRuRkj4Pkio9oKG4yK4=;
	h=To:Subject:From:Date:From;
	b=lv+bXRd0q7z/nwaQJuU6Zz9wwX0fX4n1E41lGBouk9GMrO9VCmalOpj8ZG62Z4sCl
	 y4VLt2xtnEvkFp1ddncMhHyMrIPCwW9qO9rw6xajYxqiFL4Csaz+k1lmhvZtOydXtS
	 GgFscv1nh8jysKKbOqGH85l+8J4AyblYH6u9YX62+/kQjCa4D/+8/9cnNMxGnmfPLQ
	 XqJbpcSOa0jXqYKMiJ+ZyqbSXJqdLkVrBPWGQ33Uv1S48Z+q7SDHM3jJ/tu/kWKl8C
	 N/g3/inERjw8mtC3rpzgnUIiQuYZz4JieZDnY0T9O+G2NmnTLNqLksrw+2zA+iYIsR
	 YXyG41hzI5gHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931AEC02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710535359.21327.7465946166016874132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5764fbc04e90b9199377b5f8cc4109e13426b32a6efd79c4d55d27bcd1afc8
Date: Fri, 17 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737105353
