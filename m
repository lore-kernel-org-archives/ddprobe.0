Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C553AC139
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738599953; cv=none; b=XoVE126X/OoPMJT97dvX/KYR2ZYQALDQ79kNmZtQiXNC1BB3r9rYPWqlsmNYi3yBRcjuu7tG1c88Ne9TuF7cz1ic8qmcJ9/nxRp71tNn3NKRxIRe29sUjm7MbAqzPAjFAtj9Lc7wa9dQjiq7k4JTueIICq5JX/N3G29IbkMf7UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738599953; c=relaxed/simple;
	bh=UmoqZPqny2VK3TKjA607ozaWUn3ThO4qhqAOL7cjtpc=;
	h=To:Subject:From:Message-Id:Date; b=sP2/9fkE/6xmUJHzRgbGwjJD9guZqHBAmctNcEs2Mp4QmPx5tm2A4agwaqiciU60qV8/+JKKFRjpS+R7SG8rs5+BxSzQcdXJ9YRlv3Sd1z2yfi9Bd5p1MM7EsfJw7fsDVT2zc4+IKqMB6KVvT20ahgrSRNM5pkK8CQdv20bd1U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1gI96Kf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1gI96Kf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC00C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738599953;
	bh=UmoqZPqny2VK3TKjA607ozaWUn3ThO4qhqAOL7cjtpc=;
	h=To:Subject:From:Date:From;
	b=o1gI96Kff1eJXMeTW1UUcDiJKXaEVM1Mw+3AJFehfMq+MFmqIBpADs7in8TgBptcn
	 SNC0Gq1dImNejNjOxTircK3YtJbTKajRjcvb+Cv69tl4MGEVks3XoMrpQLlSA+Xwgw
	 Io4oUmPgAKPWDrBMvWXG0+09wt6olfGZqEQLW6/j075OCoAqY2dVVLn8A4IujERk9h
	 TpZwkEKU6QGlOpdRPJVs3lNUwOrX/zhS3viW5ROwcAv54yprZgWZXIKr7d3Nb8q0nr
	 UOMlCwiBkuX3Ah18zrsiwq6+SYNreBqunRXWLQaKLTruXLt27br0yj+iMwTH9L3gka
	 +Ygocv5qDnPVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92271C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173859995358.24398.8705723054636842738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf89367ec28490d530e158191c96c2596c14576bd7e475586b5b4403980cd1a0
Date: Mon, 03 Feb 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738599953
