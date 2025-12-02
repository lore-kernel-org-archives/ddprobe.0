Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BB12D7DCB
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764648775; cv=none; b=PhRnOQ0GfSyuB6Ci/avS1Li25N6hd4Qb3FN87xyvUWGzisX+h1y0bMJAML7tzHi/jYNlPN/wUFggPBfwQfKVSrQF4Ha8S9I2XxgKEvfYE9H/hymcJjCRZNAbcbRmI1BVcDqHCHmMtEGFjQzKt0Pzbl3pqdbVILRr3vg9Ux6Wj9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764648775; c=relaxed/simple;
	bh=GYEjIsdWmUJIBDbKq9pYKvYBCyWAkoNh/h3mzAFkKJ8=;
	h=To:Subject:From:Message-Id:Date; b=de4dwxVZYH6WF/HeLsFfTr54oj8q5ModdR1ESuDtdB7+bHqaxSvaifkYjhSVl5lsQoQSBR6OeNSnPTLRw5rijbF2iy4KE48kI3OAeMHkXaJNW6l1dhk/tFdqWpYzLDecgtLHpWmpbFU9y2TqCIFSaKvr9hAv1jymkD7toNxrMl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXi35dZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXi35dZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56CCC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764648773;
	bh=GYEjIsdWmUJIBDbKq9pYKvYBCyWAkoNh/h3mzAFkKJ8=;
	h=To:Subject:From:Date:From;
	b=tXi35dZMq0Isbv48MFtT+ftxz3EwtqbPMpTDprs28CdlmIkiTMvX7kzyPu2KyJCaE
	 TlVpXlViDOagApIoClJge88VIZWB5hQisDYkHJOylLCtxrzdyauByAt2Sk5c+YBrzK
	 lNlA7Bi09iZXBWb3zq/k/tOS8GfydqAWsUHLQIDa+5ibQ3XvAb/3AqDJ7dPjd0SD/a
	 cSZKQWwZcb2g+BNvp4BPiJzM+FfUprESRBZPRgrk4xNYvdY6AGY7HJLdOThNFY4OiU
	 fgYr+igsNYNEV/TxSX4X5TJbFw4wvPsRhW3mgrQbyXi0Vo2hcUVG/uREsJreBB4Upb
	 fq+WRRfygFfqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D44CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464877363.11171.6871650520255667088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d094bc9c055a07255ad64ca1793726a3b1ddb9b86c61caf9b9d286035c4d96b
Date: Tue, 02 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764648773
