Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277AA328AE2
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751617194; cv=none; b=A+jO7qGyeutjsbe4UuuTbbTjyYZJjWJbBKLq8M9snp0YoAn2zSiYBlqqUHqtD0lDfvd5N9Rjtj7y3oNQ20IEX5jkUhyC7CkFheVSPq4BrVHQKhKCI7FwLl5nrVyOrLdh+PMuy7dBTyj+KxIlTzb9OW/EVQOq6oM5nJiR/qPC/gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751617194; c=relaxed/simple;
	bh=l0g90a8O9QrLmnf8m4rfOsKb7rTZ1HpXAsbu9k7YMwU=;
	h=To:Subject:From:Message-Id:Date; b=Z1rjDf71hJpOwf8haI7Rqgi1cBhf33lrVlsShIWfeNKkxchfDlVKPc11mMn1aakWkh9taXWr/SLTB4zoSkaU46WcPU3AHC9i/ZZdi6hOyxoTwBoRjZJhHvDJGmPe6FMVcgdy05AxJQ9mtzg9b/ntPaIXNXs8XlyV4hkeRU99JqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+Tx7Z8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+Tx7Z8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2659C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751617193;
	bh=l0g90a8O9QrLmnf8m4rfOsKb7rTZ1HpXAsbu9k7YMwU=;
	h=To:Subject:From:Date:From;
	b=s+Tx7Z8H7D81oZoEeWjoNMumWbmvIooGscFxghkmJIaMuEUi8ahooisSSOwQAHJxQ
	 Ej/5NwilxFhUibhIqF1iRUM5jyWnzrPHQTGCKUIuA1G5ZUEAQi1deQB9X2YPUCBGz1
	 mZ2zjuib2n27tn2Gr+Oth9RtUN6rw7NHBDnK6yBfYd/vEmxuzi7u24/67ylc/Fom1c
	 ozNGe9HRKfQwhzXkjEq+C0sGdg7DfTX9hGgUd+LwZonZFYpJRhHH/FbjAAjBfq21wW
	 u0zbGs0jeqGKXz6D1ca2pK0NL9zGarBtimgPmFWmXcpJqAUc1DtPzrM3QzQ+svO1so
	 VemwW24iqRLzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE3C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161719357.14602.2201488817546857719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e7667a54b32485e550a9322a46a113a1f7f692ac2c20a2abdb79c74cba7e0c
Date: Fri, 04 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751617193
