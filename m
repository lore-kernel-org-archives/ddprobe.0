Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443E5354AC1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760870394; cv=none; b=Fn4g0+vWimZgLy2IyEMPrBdHIBEPVX6WneRETjEhgc3ZM+Qo5HPRbuigZcXo7zB04QzURGEG1RHnR2nKifYH5whUAEk9cVrSSnCUt0HYq5XeLsyxyLpvIvOtVRdP3ToKfOMbJB74yZvSpC/xNMHr48AeZ/6jmkOm5qu6/Jz2o7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760870394; c=relaxed/simple;
	bh=W+m/k6VGBKJpQ/1OV8tJBbwzab8wFxWeSQhJ4rMxtD4=;
	h=To:Subject:From:Message-Id:Date; b=OPNDguTpsqsyXZ/0Bmfliy4JC9SNn6hhpj/GdSyQJKyjdPNScww8Vk9cgWJbMP346HcVnvzK12XnsaM1tZdcqkOpjcIPy8qmrsgus9P2Nx/IrIODwmqnuXD77WwCnk3S3bWReqDU8RYv3UvgsttJRap2t6Ra7Byadsm3AriD14M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwhl+678; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwhl+678"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760870393;
	bh=W+m/k6VGBKJpQ/1OV8tJBbwzab8wFxWeSQhJ4rMxtD4=;
	h=To:Subject:From:Date:From;
	b=lwhl+678J+STAiSIAHNdFFt1XdlZHYUXqZBz8ZfNMx+hFnqEhv99n89I7UlftjkvW
	 1DuhbB3QiYlp5RPgccfb61Orp4FW9i9gWkoXYp7Xn4gIdRFauwRBin9pFhthYt53SR
	 AXj5dMwaHhU4F/MFH0LQyZwytEVY/OOO5CDFNs1X4KDVH5sxf+jlP6YzoCdewFsmf5
	 Z7BhgNnKaol0zbbt9yjO0tAeXScEsvhBc5+souWZGhoR1FEjn7x0zWHvSZsM0UPuLC
	 6RGyq06k1W9ZtHa4+qPDcNhVl7kpHpAAzwBkVpKJiSqdxISC3l6HR9qJ2M3NuYnvq6
	 2Z+A0eHbaz8kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926CBCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087039357.5624.9400550414787403720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f723c33e241ba090c27eabbe454241bbac9d15aa4af7b51dbaf6dbcb3a0986a
Date: Sun, 19 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760870393
