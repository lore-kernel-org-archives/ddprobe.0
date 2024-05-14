Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F9DB653
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715656943; cv=none; b=WhNqCRy5csCfM76T/9JPCHgIR6t9knpAbQZ2uLa0uD01ATH7hOA7zP16ZyEClKXUJM5hGEjvK21/NeU9diM8BdAOANBtW9/XeLWvcD/BUWOR8dQt5aNHCuf/R04p8C29oW8SWwL7WciPQuVF6+j9gkL678Nl+n/F7IkrxNBJy1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715656943; c=relaxed/simple;
	bh=73C0DHVdt7u4+RgRV7dOhPcPYJaiaF+nQOA0NMQeta4=;
	h=To:Subject:From:Message-Id:Date; b=agOSEk+miw8DdwyGj8dkPgAtZkvCKsk70/iLq91WFTWwurtcqDvN5gI5VM8Pb3TU3xr2XWpuNDiRltPJUXdkfSSQQxqpNJtEPN+aOubqFsvoh7qUUlpaynbISmSCgBrFJssOTS82QmyJMvI690cpx30uF38P+GpUkbLQ4k4vCyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF7DudQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kF7DudQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03F9C113CC
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715656942;
	bh=73C0DHVdt7u4+RgRV7dOhPcPYJaiaF+nQOA0NMQeta4=;
	h=To:Subject:From:Date:From;
	b=kF7DudQr8JC/H9TkxpE2EfJHEgeb9w2SYD64LfDLhz523oS9NkEGOpdcqBpw9Fnpm
	 vV1VWVhtN1ZClTgn7rviMvDWohNpZizTY8DwbRWjnDyNE0Yh/rm58V98b6mCOJ/MOL
	 Nrr2qbe55ZRBXQ7jESRkT59IsVysHDyXbpYJvkSF+KJwpPRZ+5E4D883SgX8ioUKOy
	 n6dghKynqtZu9WGbA5uouhpY6fsCZiOVN1MO7LRTabgPzr+lcZeWKQF30ZPJqCYUUW
	 KcyIsx/jxA4ujuI8WK2nf98JcriVs9yMy8I6Rv9eShOLk0XoxKSggInaazE1SkAhRY
	 MpGsqXen0FQ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70C4C25B78
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171565694280.28228.8302671147160984695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193ebb4ced1b40980c8a38b732c2e72a31a83dbadb6dd405f0d8bdbe4d10fef4
Date: Tue, 14 May 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715656942
