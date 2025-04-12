Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536C7F4ED
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744494594; cv=none; b=olUpO274eoogFVetm3SVpsCgwTjzw+slxee8wOAHkeN0ml3OSMyiCuPTOeQ+KIMBTd3ZwdmtNj/NjnBWVZs4+5yththi+dktb3aBcKb++nktW8fEa2mGpiu6wY3GfubOQxZUn881W7454hK2hqIrpQxs5jUI4qHm6N7OLKET5dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744494594; c=relaxed/simple;
	bh=bJnSfVfyg7NScw3XPIn8KJ4qP4LWLIU3b9JTjgiLQ5U=;
	h=To:Subject:From:Message-Id:Date; b=DnHldu/3SBoE+7N4gTEfL3XPuXdvRQjwKDlaP7fqiqxAzxXz9Nl3cBIclkFwrt4MhAe3AaEAptI5WZU02/B1nARo+0SXFGMDdLIWk6am96A+kzHgc8D46hrQxYMIXV7qQeUxK63K9xa4NWMU4fnN6HZkx71qzBt8fsJpPIPRh/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uds9myXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uds9myXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9A2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744494593;
	bh=bJnSfVfyg7NScw3XPIn8KJ4qP4LWLIU3b9JTjgiLQ5U=;
	h=To:Subject:From:Date:From;
	b=uds9myXyntpAIUeTTIbEH/ic5RV8mHoTQlkLEnqM3cJAyoNn6UzNxSygjNW4IN/2t
	 kLyutg24Di45LlilPqO5uA/7RmSi5VvQD3ZoFdTJg14NXkftch3+vLSZopOHEpHh5m
	 dsU+qWZFmEFpmmZoMSS3dtHP1H9gNc+kDFFKeugpPa4o1n7DCZhVT4zqwgdjNLq02s
	 r8yGeMKZpvXhZZiwYhApyH1DSzrJr+Jtc+g88u491WfbfyM6afbJfkeC52QQpwXCvB
	 QIly0gaSgGSNWjegUbP2OuH7sNJtk+6gsRWQTDa+/HsGIFbTfadOiu4igeBqAtQaTE
	 PaTXV6Fl07Apg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AAAC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449459361.29937.16459674451874294775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81f6eb409560491c5f051e446410605e5bd560505a5e822fad583560cd5ede9
Date: Sat, 12 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744494593
