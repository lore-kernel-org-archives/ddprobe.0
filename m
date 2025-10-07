Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D3E2E1F04
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759848594; cv=none; b=B8SFuCYDvpZcPRjO6vAY3gcTtscnJc177BnElM0NOAbCeciCeQzfv4glzJzPAULZMb6zvkTB/BcOGUvu+vS6+UXmaeqfPa5kMrKCIfanPmpfOM5YgfiWiZINcXGeImxyUhDxDRa9uNop35IDxw/NhDm/VNvXEdYTf+a6Zd0azEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759848594; c=relaxed/simple;
	bh=ZwHoqnMLBN4jMqGyvfO3GLTHTTrnj9OKOveAfJnTvTQ=;
	h=To:Subject:From:Message-Id:Date; b=ht5EzlEdaQ1Lckkr90/5RJ7WEnA5oj5m5eJgJZzqO6bcgven2U/7KV8X7zFiqLKJgj77QD6OBP36iCdntqoOWuDvHXyn3sXMWhtmhrN9830j4V1XTuIuG7PmDjY94gUIh8ElSp0QgjEZ8dixB7icpXzGfqWDTKk5PBzqWfNRiEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEyNsYq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEyNsYq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3797C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759848593;
	bh=ZwHoqnMLBN4jMqGyvfO3GLTHTTrnj9OKOveAfJnTvTQ=;
	h=To:Subject:From:Date:From;
	b=WEyNsYq32U+9NvtXp5YHVYS8Ua56oDDwrOxKhCniBOOVjvgfYuw634l2TBiPNFxtw
	 WvahE8OEp6hQOVD0vbGBrWh/Kd4g027//1iukVuQ8ZOhyAAvs+HEg3nAyvkIor4Ber
	 uaqhSTvleIKJfON+nIdw992vduWgB+n6K35M1Q2JYcGh3EYNO8IxpeU4X84EwIgJql
	 7D4BZ+PjXtvgPOzJ772mkcdLc/ciWV/DDdbIBhIq8S0r0R57NOAKhsk46mhM/ZasYO
	 1uDoE0l7X++d2z5F9h2F4QGVcaGofhQKxH6TRaxviCwf3QdDVaMknUyh65HYUsPgaN
	 TjDgVfpgHFSjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90055CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984859358.10497.12345856952602497158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08c0be99b7f9373ee4b5438e43981416213d0014f0d58fc7c304510146ee4c5
Date: Tue, 07 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759848593
