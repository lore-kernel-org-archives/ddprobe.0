Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7BF27281D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769816034; cv=none; b=IX3PPx91sME2U0nwkEYdIc6e6Zj4PzGExALU5jN6qWn7q/omO/o+fuamsL8KKr8k08RU9QCV4RsNOXZSRKYZ5JzMsTCdoFJ15EihUhoPxiRP6F1g0ZIMItFQ2ST7Zh8iZkES58qJI1s1TOBPEYqrpYDwfysuPHNKN/lOWDQyn5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769816034; c=relaxed/simple;
	bh=aXHVyCz3HcTpMbm3na2dNUt+17QeBtjLLtx/qgOrkLg=;
	h=To:Subject:From:Message-Id:Date; b=ZCVjJPSW9mjPvEF0UwjklPnimWtXo0+DOKzFtGvwQbmdrldxX6cCoKv6wXBz25htDAsvtX4DX7oUn8KJkSjO4hei+7vrzb41PocAXWDY8jMjACAz7yEjQQry4D06ojW9eHjOi68xo4Z5UKP1V9iezKZI0nVeqJTeGo/JgEUw4Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4Qlq1S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4Qlq1S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A14C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769816033;
	bh=aXHVyCz3HcTpMbm3na2dNUt+17QeBtjLLtx/qgOrkLg=;
	h=To:Subject:From:Date:From;
	b=Z4Qlq1S7mRWk7u12yHmh174JF4bvnOW9HwYZvn1BgjxP+pOMjUL/L9oXT/D20YDef
	 adbE/fDK+g6REd5aj9zqee56mh2NJdIFp7jsSt11AK5SS1BhRposqpwKpLPLvLGBiu
	 fH1DLfM/eta5JT9w8zSbgo+V4XaJCljtNQypD0J6MyDF1tpyEd5afuMyxdxt2K91o7
	 0QD0bVXjinhVsSt2oS3OjnWx/Fka+5ZwNMXLWV4whl7uI0zA7WPZnJxvVkCJM5vCaZ
	 zUaN7jGZHC5EvdZVxGcwh8Dj9aCxzUGyBdu7w3xRAO5AbDEa6vEpGCzDgHDJWy+Wdm
	 F06WvQ1xfSMmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9010DD49C97
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981603358.13217.6385595343428078412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86407b4968d153ea325542d3268ae82c508e3e2c0baf02bf1324f982fe1b807e
Date: Fri, 30 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769816033
