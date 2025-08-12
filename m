Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE583594E
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754958594; cv=none; b=VHthbf4Pq8994RNVa6tduDeCt9hdoz9ONyT+KF/peXU7bekBzXFFinCSzQF6PS4BU23+H2tfVd1J+vcPp5tc9fn+soRy3hmLM5CHPHVrSLdwoyb947LOYteq22p2Y3WX13sgQf2MdKKjQ/GjhECn4HG7AWo1Zi5kD5KWRUIanDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754958594; c=relaxed/simple;
	bh=k+u15VKU3DMgSA82qamHX8+3YjkBDwhA+Q2heQp/6Jg=;
	h=To:Subject:From:Message-Id:Date; b=ZjQbJ6bVM3HXpl2q6CHSuKlXpEwu/J3WU8Uh0uxKLOHAky+8WTxYrI1l4UPRiuYDeTGgOmyHWFfpjyb7R+Qj0rE/A+8GzgLQ3NsHf5F2ycifi5qx6k3lIpDZcMV4tPHQzkGWebF8iTw+fXSDpUxip8L9oqvfrxsfY1lUZyRXWOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMIHoJ7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMIHoJ7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A64C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754958593;
	bh=k+u15VKU3DMgSA82qamHX8+3YjkBDwhA+Q2heQp/6Jg=;
	h=To:Subject:From:Date:From;
	b=BMIHoJ7I/zvRN/TriTlAkGwRPF8RQVjXV4FzZO4niWaV1idbGwaefOMr68X12op1M
	 FRHrDz4nmXzAo3ElZiIPCsCElUchqMk96sOdzD90qOnd/RimeZzrklPjvcDuqnFqLO
	 MZ0rxtn/kHF6WiUEtYlmCeYMFddEaAVFpDj98s9T8kIV2m3uKcrUB+efiEodAWhSy1
	 WNzn1RSvCFcM+KrQpjub418W80iq5VJHtNAAWYjwHwVK0kZdIU7+kb/8MNw5hGDspC
	 buZqiknLns75b79fZCv/+LM+qmMJft3VkWsgTbFKGgpOYOV4Yzs+xxAYL6kZT7aXM3
	 hTttVhKJPLleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B69CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495859358.18837.15308407035894187854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22beaaef59892c99935b7e23abfc0aa30cdc043539e1968058380e230eb282a0
Date: Tue, 12 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754958593
