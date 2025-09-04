Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157B828934F
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756973994; cv=none; b=kXy/P445/c0JL3ZCnShZQsf3AVS8tBS30FGA/lxWHSkzGT26EapR1uwjTgKMhH+zFNd6AeIl6j+5IBvCWZhUnTGcXuanbp8lCwlGuqVK/s1ujdo3O9rv3f5vUnGo61y76789axVHoME/mcGugH99yRv2ucp5XxcBNru1/MnKRiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756973994; c=relaxed/simple;
	bh=Dfx3BDCxTI73pEgA37Zhv0ZJ72p+bvPwzHA5af9i1xk=;
	h=To:Subject:From:Message-Id:Date; b=fxAQcdgumIbxHJnjRrLJga/67q96NWV+fhSo5yrWqX+GLY5+P9RthzmOr5u5BEv7NSuUJ5ic9S1DjW/TD1BKQTMTvtp/6oydRMl+e9HakeI6M7Ackcbuzsx9FqUI/tmGoKFsCCbnXFycnQQRG9rzxV0yT8alEDjAigul0ImXIXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfo3SVg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfo3SVg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5A4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756973993;
	bh=Dfx3BDCxTI73pEgA37Zhv0ZJ72p+bvPwzHA5af9i1xk=;
	h=To:Subject:From:Date:From;
	b=sfo3SVg45SCBMMtlENmJe6gqUQSawOrkSRu7L86IFTPbrg+X8CzYxoQDYW+loSlQ9
	 q4obWsekaFfMDDUMpX/4QDJfS5JqgmVz0VvQPbMv7hKq7Et9LPLTJPOAhImcu9TOjR
	 HbZOf5GzKS/7S8iZAQXJduDw580VYmxqbpJnzOSQjaodiZQTj2YzjB9JDyVH2IVnfT
	 LUWnXPNcJWrkZMxeHxcpbUvYAkFVd8vYMVqNwcuWK8clDMpY+Y55YFtrFXvwKcm0uU
	 I+7KPQswcPJBLVp8iV9zexVV9FtsUpKVB/gHWDeoVlPYUTExvd2n8RmXZ2koFqQR26
	 TdVVTNqqZpEbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8CCA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697399358.32503.4368427319774572010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91cc39436357d811099ea8d1794d73f5faef3edca559fc8313c3f06772f48ca0
Date: Thu, 04 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756973993
