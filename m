Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F6222D4C3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776914254; cv=none; b=RSuqGOCn6jmIW01tOILWFYeDa3IhWzAq92sn75huE6/IJIDjbEtYkAFWvYSctJMVZM3CBgPSUVTiTykvZq71RWClckJ5ew/7IKZIb7IfqMXzUDIhJnSaFdJwnhFKxeVfuG87OeOjwsNyYlNzakhV+vu3wWxtvpaZoEUX64Sa9QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776914254; c=relaxed/simple;
	bh=YL8lFGqokm+adzAr3sGmjmtmYPgWlAWxl1lJtO3siEE=;
	h=To:Subject:From:Message-Id:Date; b=uJDK3IAhGmk8F4BRLMRIYgkeJFXzfjJJe+yo/kLfeyHshq2vFwnSdC8a7RLN+wprfSjSyAvK86XTSItCwZnpqp1e2L8B1DLtmjEiz9Vxz6lZhBbI5RmHR/QNY1h+ZGCvpaXzUmWS+KgcAwNfJ+F48uhVg/CVcrnV0BJ+78+Dbkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHlRpUEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHlRpUEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B04C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776914253;
	bh=YL8lFGqokm+adzAr3sGmjmtmYPgWlAWxl1lJtO3siEE=;
	h=To:Subject:From:Date:From;
	b=rHlRpUEN3TvfOL/Z1ZQXle8zninn8ayUBFB3jzEHuptqBndN5Z6Ec167lV5FHCnK+
	 AoXO6DFp9K1+FWqqsD92JagY4+IKxRsdwoUPH2aMXrVYkCGCfngeGah2oEJAcJHRZt
	 wG02crPLrNc845KketayjUmXfIz/eA8okvXJ7l15jON2sxuOgL6w3uVnrOeb2iKI7/
	 QFGn2amDl2PkSJL9mhPJDBBR79Sjxnzol4uwgzc+0NVg0zrqhYvzQZAr1XsO/+tCrg
	 3Y8+zoeglq+R0dYAn+n6rG3utoSBNU4wdF/Rr5e04kTTHZ1hXfmBsPmkb70V+tzgBh
	 fiZZCLrHGGbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0681FAD3E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691425368.6258.14385785448006294824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b0f5d1daa638b5232181a8e74e3e759e73713d8f58a517d1d5456b47cc601b
Date: Thu, 23 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776914253
