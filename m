Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3062F17C2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733111154; cv=none; b=qMxbpx/huT0bqie5MUaycNazp/pboDRgxme7yk3I2RUEg2OisxUmfQXTLn/TWToIosogytkUNH3g1jd7V5s3v7iWdhRwW8vIn7grZnZ4Ffx0gi4lgjvRKiQbT5U/EQIwVnS55nnOI62SXve3COLbv7/gBjZVJUIQGsKxOUj3wm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733111154; c=relaxed/simple;
	bh=08eHLYFHxFDMqjhjL9zAcDFSW158gPVs7Q0mkzVdPY4=;
	h=To:Subject:From:Message-Id:Date; b=RzJI+ELWKpgaiFKYPjsbJdx6STdzox6rBRetR3SQfnxFEQh8jCeHyJzpdWVLiom5JBGKscJpnobSsUcr5X8tNHGiCML6HCUhd+BzWhSU3UiGtgDqqgUep4KE9pCsfExR3i4UTJ3J4NVYTGpzlKS7dQWqDhcUmFpXzN4G0IdGLbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHBPmNNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHBPmNNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27F3C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733111153;
	bh=08eHLYFHxFDMqjhjL9zAcDFSW158gPVs7Q0mkzVdPY4=;
	h=To:Subject:From:Date:From;
	b=JHBPmNNtexEvq5MgkX1hBxA1QrfRNIoreTl2G4HOAg235IWhdliqWzPYz4M2kRuTI
	 HaG2HMsfol8jPsc3pI+bMGrnxlj7PnZnhrTT1dLGxqbLqa5W6o8TBjMT4rxkniyKrA
	 RibqXHlz4GKNQzj1ZfkmtDmwkuHgM9QPX4bHf9QOG5eve46Wdrwei3TVGfEfT+uRra
	 6b8fL9Zn+Xq5tGy8Kla9j1nxvh2ASz/t5XcSfCQKMauHPeFiOqSTBIr2q/xmhCe9Qz
	 O68AzgZrRHqAdLBGJHIdBi3R7gi6TGLz9lJt10CeTGu8OYctujaAFunuKaS5eoUiZy
	 1NeuH/BC7sQBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D39D49798
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173311115359.19297.744361876497311419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a83afe24207273f761779c478b7e810ec1aebbe7d2ca74274fea001abab6c9
Date: Mon, 02 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733111153
