Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F75A2AD17
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732529754; cv=none; b=GQIfEug7xXv4LRea6kCCdWefnv5X6jX/mwLcMe9y7fvVg/+NhHAE8mlTm0VYQkAhcgE7irr8+Ii1iYJ8VCFoTB091Knb1pcAHL2IxFbQmGqLnmXjBwSXvE6CuWGcnHrrlwU8V3yQt6aJPXiEgvCorvAUFVBWf40ZXM6OepeY5No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732529754; c=relaxed/simple;
	bh=RiPDvy8Uw/WedUSnXQbgYHcNoAFLncrkGde8dBceG7w=;
	h=To:Subject:From:Message-Id:Date; b=jNux7pnknawR+u8+4K7gsixuuYT2yOchjbySGfRf5eOXq64OhHRijzXD8oR+qEOrwiYyw7Ew4qJyFMl4TRhrogIg/CbcqmDDb3zGBhodn9L3FC3GlLd8eyYSSUVWDuvgZJ0c/sjNKR3QQfKivlmJdETJXlqO9why9zEbUPJxvlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOh1oqm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOh1oqm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B1FC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732529753;
	bh=RiPDvy8Uw/WedUSnXQbgYHcNoAFLncrkGde8dBceG7w=;
	h=To:Subject:From:Date:From;
	b=aOh1oqm35Y9R7sZhU9rImyShk0jf0Oo4t80cS5FertS51ITK8OKfgO/D8eydj3cBc
	 Sn347s47UHKpUTu8ZmfX3i0zQOtIKpgW5ryOgYGIUjcksGzxY6XJslTPaqNlVHKkxu
	 4oGgca9Rd4nF1Y7gozQaMFuKhtE99NRu77qgX6pV/EvsBJBXzc4Sa5GsuhT7pAJ/cF
	 37bxe2xzKtSmsbuaeymDzaARvEyeuch7HjiBfNiW+1Y6izMif4YRzBvtO+ncpa5M7a
	 U+hfSnacnXykJbWID976z3ftQ0WcTJiKzVAKKnrsueGmquKi6rk9+8zCVKZ+ZUBvzR
	 U1/wwMAyLZQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA96D3B7F6
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173252975361.1925.11746735971801459297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef99da59512d34ce5599681461a835b686950d682fba08d82d770cc2864319a5
Date: Mon, 25 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732529753
