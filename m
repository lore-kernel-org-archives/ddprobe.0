Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4594E502B1
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731771354; cv=none; b=NaijMUyuZb0MAKaP5aDLynf53xlKBcdMxHv9W24oQuUHi9EaT7TG28+iLWlmSQHpt+upxZW2Li0Rx0oN6x4DOWeK4NPf8ZKZp38BLKAiZLgcVfhaQDHM3tTbMj0OmDs4pB2QQg5V/tjEFPU5H+v4VFV65RzY+7gw2gKo3o80oCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731771354; c=relaxed/simple;
	bh=rjxOY2QAlVlzNQ7Moq3NfkA54mRZUaPYeB0oMaIxGlo=;
	h=To:Subject:From:Message-Id:Date; b=I7w0YX01YRFwOoqFZAfxui9uZlG7GCDGjppq5VnAjPqHr5fXIJ7v4DkoB5S0FJ7kdqnUzBSacUx9B6UDbEBZlNpLAXSWn7PiBmiWrATWwoJ6451N2JnOzjfecxfrIvg1Hl1j95TnkWh5X0mJfN58nXPc7rzjWrPzZ37IW4YIGeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODKg2uRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODKg2uRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37CBC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731771353;
	bh=rjxOY2QAlVlzNQ7Moq3NfkA54mRZUaPYeB0oMaIxGlo=;
	h=To:Subject:From:Date:From;
	b=ODKg2uRhGh4SVZjQia3vWrX2e3fqcwnUrDxNXladsG/1eCLFwqHeUxRcwbUT3q4te
	 Rq7KH/ZHTMc7m0RhQ4u6tAfxsI/SLMD6cA4VqQZzSGWwrHd6BwfgGUczuu1pLHqBZ4
	 U+BMpeTeLWhO4novhap2jQnJCfp9MJLQLNiHWR4gj4HoZOwGFRP/OYPyadWb6r00Uj
	 PKaBRSnzGzQ3/i7Pspj/gOxtKEJZX+mrdaToGPixm7br/8vQTb0dfDZoUpbe8mZc5M
	 V8a7uS1I3aOtYLMLEZMXuL3DFwv9jrusJ6I+kwAIzYDf/XtvzE+X1YgDeEoxOok7F/
	 zvcrYjVKuN+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE81D68BE7
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173177135362.15422.2505601511512648682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daddf9af1b544d501369a206a0fdfeef1ea4cfff30870f5a73277f12ed528289
Date: Sat, 16 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731771353
