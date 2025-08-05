Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E26238177
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754398194; cv=none; b=Bl6IPlNg8zPvf8T43XLOutnuDQ69qO6InXix7zw5u99ALrMomjmDNojF7K5LCc360Z4W9WhG3vIDwQz1U0Itfm9EPAw2bzyPNgXxlNElh8xWl7sqItxr+kCDqyoeMx850jmyh+KdHCQYRPLoJuRF9DJRkEcb9bNq7YyMFnAT7ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754398194; c=relaxed/simple;
	bh=QA17AiHixNWIOrPndTFKcTKKwjLI8zK8HZ7dCkj6o4Y=;
	h=To:Subject:From:Message-Id:Date; b=lcz+kP8nWNHPj0OiB84gU+TwN0auelGraw3XTCfVYKtSW56TVdzvzdLqKOSlRbmLv1gdxLg23ic3nP/wo/vC8iOilH9C4+r0LmCQswVpF+s9QM1VU+g9WAAALOL4mE+3dJm0VUpLGUoUbSmMhiROObr96Etp2Zt/IeWhsMYW3ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2fsGbI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2fsGbI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EC0C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754398193;
	bh=QA17AiHixNWIOrPndTFKcTKKwjLI8zK8HZ7dCkj6o4Y=;
	h=To:Subject:From:Date:From;
	b=R2fsGbI78LhPlcweCLBo1TlVObVlzYF/+EMXfioDPa9D/UwmxYw59gtsn9Eam8uTR
	 MriMD1Ls7edS2oVDJpbAVNLEr7B1nFgrCrpMTu1TK13PhNWlpJCmCBDapkorRbjReA
	 amErgkMWWM0fFQbIwaA11NhIOs26K7EwIfdqEbjr2EpjaINFVkuBqLeF8UoiugmK14
	 EojMz9eYzVTLt6/B5l+Yaumgy2RHXNdSpBR4awiavDvNPqDoKY8wJ3S3UYXGJFUf9X
	 LF/VhOZhsVdHa0owHNlpI3fiqMCsTSNWOiipy873icOChdDgthagnFYZzvS8YzrF7b
	 uKgE+Kb3KJQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A4C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439819359.23105.9327334384304780134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fad9e02505ccc47fa8c31ec6fd4a149803119124eca2d6aad625ae1f2e6009
Date: Tue, 05 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754398193
