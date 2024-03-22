Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002A965C
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711071497; cv=none; b=UjtNgYzfWJgkzLFIRlzNqSb77ixEvwNZbrsR39GAqc6kaZgGv6zbHHFq5h86ORRKFvBWXRBwAVud82DnGfUo/BjSQbiCxGu3scEQijlMzCUh4vEj36qx8ocrRUtPiEePCq5FWVPyFo/2OKoTLeddJ+cORif949zynAV4VhY0pkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711071497; c=relaxed/simple;
	bh=+l7pzTB+mdfTs3JFMdCx0MN72P+oxq5YosSpYutfAh0=;
	h=To:Subject:From:Message-Id:Date; b=ng1+34AHbpYqWGqdctqSBthh7YfKC2QvbiSr7yiNBRQvoAQAj9FPlTilh853UgAS2MW/6qCGsG8Pz/YMTaApL5P6k5zn0BNqJjNQcfQuwD+52DYvcC86c/ApWQpbJi4RFNVzbrPpBnNoizEC9q2Uyz536eUwFY9lokv20+rpKMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eANmGNx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eANmGNx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851BBC433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711071496;
	bh=+l7pzTB+mdfTs3JFMdCx0MN72P+oxq5YosSpYutfAh0=;
	h=To:Subject:From:Date:From;
	b=eANmGNx/xQ0VNIm3LCY4C3kBlnCX905tLj2kyRZ8/RFj2c3AbwHIc/peCirtgdDpH
	 MKWV8oqvOr2I3pEe4pAbu8LvQu14FfJ+yzKNvOUlp1xq2riEJ8US1CrWv0q34ShMmz
	 eWlobiDa5WxbtKwOWa0Tv2x8GRk/6MhQjCoHlNye6BeR1l1zX5YPlgjNMSyJoI88Wt
	 RH8wOjEWQdnhRMGsrVjJgSjsbcTn98+UcmlyDs5CU2Ulof5yZLNK+Y+aVpTSBMxxFb
	 OZpC8VjpPzaoLsA5wrbf1YbUVNEZxQ3f9njqZUXtMrdg+IxiP0JmAz4nkamX3xOvi3
	 5VLFb33dgaPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D9F7C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171107149643.8796.4879678849209651618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a510b7d52ff1e9eb2381961950d0238b0987074e1381bba160b3991ec9ee2e8
Date: Fri, 22 Mar 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711071496
