Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B0E280338
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758926394; cv=none; b=eklyDxPJJRovhBwhz5cA3hviawBXFscm3bd2lGz1ZDdUhIH2n3GQXyZxzHIhgsLkgwnM4qhMSFcYt4mRfdb0jTqYYzPjUSBhAUxBQqL6hb8Y3sqWZhumTt+ofAoB+mwsN519Vh5y00M9c2T5hdqgsbRKS7Z11IOAv9wOqVgvccc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758926394; c=relaxed/simple;
	bh=bJGtmdL4vQnTyPfnVUR3HMtauzPGkUmVesn3bO7dptg=;
	h=To:Subject:From:Message-Id:Date; b=P05+5sQpn3DfNmPgY3er6yw+Nkjm6u5xZ631oR4IqmEQGpErnLe8zJO1+LMOnHvodUVkON9eMLFuc3xVge9E/9vQgVu1eEVa5uuiIHYJSf33CbqfmHWFgNmzTeiHtNsYeQQwxV/y325Bj7okipQ9yWY2YuZTDMhXkJTCxdJN//E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ciy055D+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ciy055D+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2560C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758926393;
	bh=bJGtmdL4vQnTyPfnVUR3HMtauzPGkUmVesn3bO7dptg=;
	h=To:Subject:From:Date:From;
	b=Ciy055D+Hh5Hx5vzYrxCDPXQp5x9p3lSX8wEf5KRjFmNTZLiWAgthw0mJPuUfqPzJ
	 jQHeX5YuBroSFLPYehMaTW4ILQLdKuchUzW7PwN4DpNm/ssT56WiSFnb+yFJCP1vxt
	 aUNmFl1da84/i4tvtEu2MU9OF21Y3sgnUvbFhfjj6x9O1PQXGRhxciIxgFMgz2hZHI
	 UsrXbroq9ZuWjpvKKuBghC9Sjaet0/8cDjVLzVMzsPdMabNP/8gkwI/hrUX4H+8ERJ
	 dlCetXe2ieGjkSGBu3KV9NHYOSYGqLouxY75TxBXFmYKBkrOxnugiJlSJHbS/XSN+u
	 xObhfrE6a1h2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A7CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892639358.885.13327653033017355590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7204bc1a2f9800a76b0e4fcf7908ca47e99a3bfbf4a2c70de9111400555c81e3
Date: Fri, 26 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758926393
