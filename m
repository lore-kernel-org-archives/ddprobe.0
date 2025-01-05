Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C88913E02E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736109954; cv=none; b=H9VUC5VHMGOZPUEYqH8ik8FheVXeUkFT7xVX3RKTwim5TQ+Z5zXtPepnsbP73oBw4AuRQXmC8fU8IBNWpsETqSr+0UYcbGOUUsTXYEiSgFR02gckdewBSiFMrjIGtu9S3GWXJgfpRoYINuHUqrSIRFQcmYK4PtG1I06j0+9JkXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736109954; c=relaxed/simple;
	bh=LySeEye0KrUE1C/r7bMqSHFBXLNkyb95bTxw9DCGCww=;
	h=To:Subject:From:Message-Id:Date; b=SXXsxifEmlyjefocnbW6Q3AHTuLvM1UjroQbfrrLkGn9bp58CpQUs6/MfqPJs0750VbUasJQJMUE16dt5UkyLPTcQslJrjPCmW37RHEABDNKCxx3/PF3GQdvMp8YzTFKU5co51mdFCJpsH/1Sz+WgBBecqtCKqF7+M7AkOPM76s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+nOWcpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+nOWcpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B372EC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736109953;
	bh=LySeEye0KrUE1C/r7bMqSHFBXLNkyb95bTxw9DCGCww=;
	h=To:Subject:From:Date:From;
	b=l+nOWcpMX0XIC7YUSJzICDnn2JXGItRjzoQltTtLuY4E1XloLKdNOKGcRVtBoZfZc
	 kIyzkM6WcT01bg2BlcXrraCfOVMSs+GcVdUlyCd8DOS8jQC6QXcr8aKqZVQaZhxTUZ
	 K9+RWOSfWucZZ1dn9AsBaGNd7Hsw5Oqy8jkTFQwYA1HMmVybbwJ+28nlGgyEyT4iyk
	 sgTmuegjCe+VvY7aFY6vkGYvtRGc1dM7OAWOJAQMdDbpJBEd6+gifWZ8sMQIkHLG1h
	 CDmfBJeTTlF1iOatKgPH5hr0R+4AMJlgAD8UgZjWvnHwOdRu3NbfMpoZJJN46LzS8f
	 EcTkWQ2YL9Oqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC98E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610995363.31379.2506077625367341073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec7fea13a4b5b196f73d27caf6c64f2087a70d7816e7fa4279a566aa9e44a76
Date: Sun, 05 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736109953
