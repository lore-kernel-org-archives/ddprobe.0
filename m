Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD9417BB35
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765787574; cv=none; b=e5DZMTXXOqUEaMicAORu1v+sVlVty6gvscqxY3LvyxYMqjyRFS/uKSg0OgPHOwyypDSop53d5jsblVV+xHd4mZlP4DjU64Zh+Nqc3mNxH0zLGL/Jb/dToyWubMUSULsM2oTW+GezDTPP3bO8oPE11MDP9PIuJEEa6TsVwLx62bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765787574; c=relaxed/simple;
	bh=ArOB1wTSnJq9u1Crje4sVwubFryUAWV9PX2WjDc3GTI=;
	h=To:Subject:From:Message-Id:Date; b=sCA4YfS4EFLrF0PNgrmV/6aYZ1unn0ZY5h9zvCSCvZRcz3NTJg27ap2zRwu+VCaXrvFK0MNy5lDydaOP1DYNvnnGJAnuXdroREEOESUgOnLFTsuA+9dErY+b/ntbfqk0CwxmOQCa8Dfyd16ngvyZfvBZosWM7Fc86DyqXwR+JZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sp+IjTdT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sp+IjTdT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C8DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765787573;
	bh=ArOB1wTSnJq9u1Crje4sVwubFryUAWV9PX2WjDc3GTI=;
	h=To:Subject:From:Date:From;
	b=Sp+IjTdTVCsE15BQTItWJo77oaagARd2rkNhTimXRC0Bg19g7uDc6Ga2SeKbEiL8M
	 AdezjxGoDXqXEI2g0RaWcovPYKjWRVnYIddpjQVy5RdV2ozqtJBYx4NUbO4Q5jL+NA
	 9heZe7RK0tol678+ChCgY8WiyNSCTrtdHo+g8TgOqQDoFJ2Xvlan1oHrbNCd2SzWCX
	 QpEO0qCkBNChCdtZalWQcdxMNO0zR5ITIfvEUFV2yri1P+QQBbXSWh62/mslCAp0hd
	 UhO7r12yNBFUyv3JMBOUoDUQ/Ht2gT8Upts0UIl4i8vp/V8m0axd3Iv4JLnHYDuLtK
	 cipg1RgPYwt4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3648D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578757363.337.2076082523449858076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beff4a73fa2e3bb1b735bb70151486cf1650c2c592762606f90e3401022b4f5a
Date: Mon, 15 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765787573
