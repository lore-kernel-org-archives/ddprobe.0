Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4BF1A315C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750511394; cv=none; b=XLcoaomsNDTHW5ZcWtxhzk7AcbZWLCSYG1oYoa5JIqO+b16l4pdL2apuQX7Jq9ayEkOkn0jCL++jeGPZLgvQ4oIZWi2rv2CygkB0pjP1eeqE+L7cbdkojO8n2gTfUhzmeKclKZH3o/SxCyja2HEFW4GcnrYkrsaZvUJ3hU9gTzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750511394; c=relaxed/simple;
	bh=KQa9JOtTXFed+WBfs5MT5Rn22HIKVm/yvGtyROj8TQc=;
	h=To:Subject:From:Message-Id:Date; b=JdWjotctRvm384fmwnHEDcttCcUFMSnxT5Sn9cXhslVLiuIR1HbJEhsfFcOdz70NuMxWDMcRZnHOpaKY5Qh2UXUs6/QZ4uW2qPLbJBGPC1xQRtrWVnH16hwlU9DeDAdwqvhj3y48ofiG7hJMriB5giTYeGBHbaSZYnyVRa9tHF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSvMNS3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSvMNS3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DBDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750511393;
	bh=KQa9JOtTXFed+WBfs5MT5Rn22HIKVm/yvGtyROj8TQc=;
	h=To:Subject:From:Date:From;
	b=TSvMNS3++HueFO3hEbgmznprBwVsdZs4Lp9zc9LTXEKFV7eieXNMDHe/n6/ach/IW
	 JTRIhWZWuSgRxhNPoRlNj/BldZj+UKB1giyrdUCPD0EiUl0J8Ywwxe7mh97qoCn16P
	 rc8rLOeAjYU52iJaqQJ/5XagZVFVI4C9kgbNVkx7L1R8rsH2OQHh6n0XvsEr+x/KFl
	 91JbRj2TAP8hyxj5jc4FX/+Y6GaMJGtryNqoaaeK1fFZWN821f1M3Q/fC7vk1L/5MJ
	 AQERxZ0pC7JQ5JRsdpNK/oyCOVk9XzXUDhnIwJZQ2mJEhmCUVbh3DlTGSJm2Gl/Jd5
	 mNuDy+Jt0BlEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909AEC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051139357.19034.17426544024653151608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9611339bb5ab67d2c10c1c4787dd924641fcb9ffe3694dbbea0cde5b74a16fb
Date: Sat, 21 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750511393
