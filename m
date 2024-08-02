Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432DE1C693
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722610554; cv=none; b=CAuGpkpYgNKgWFo6mNtyKVGvi1Vy4Cfr63nVKmTkyOU4dv4yR6OBjNA2A9+3DuLMhjHQmcaIpuxtClkF7S3G/l8313BqsZi85Jhe8MpghHcuAST+doUWexYLzfitvtptoSlsw4TNQwapK7R/c/QHUNatbuW3XvkOa799Efsl9S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722610554; c=relaxed/simple;
	bh=Mm1IkWmc38X8Ii0f++rrmI3he+atE3E09k4CSwiaqOw=;
	h=To:Subject:From:Message-Id:Date; b=JIfIL33eEakn6gU6nSnncupWooVtOhn3eIwssz0W9N+A2KZsD16GSyUm2d4LJqmx8pf9kaYUwsZ10P1AZe7QbbKdCke7ZCNRAvBJy1EDpy3zzAyYJGDj7tojWEK0lpcYyvFXwk+yGTtYfYBP1nY9Xxja0AP+gbdzySGMTpKFGzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKfUKVoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKfUKVoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19CAC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722610553;
	bh=Mm1IkWmc38X8Ii0f++rrmI3he+atE3E09k4CSwiaqOw=;
	h=To:Subject:From:Date:From;
	b=bKfUKVoq9Oa6VtZlImMXp4ZRzZSljA/uTNnXrQgOUwnkT+n9kRdJA70GW3LFqOUAm
	 5h1sgRFPrK9/6MF1fIwDxKP2ZPvSRHcms7a5sNwx4eZkbyfgnEIBdjkYv8HR9efgvc
	 URW1eI0qdycXroug/mWicB+gfCJu3T8VTZUFIEqTDJViqiVxOzOSZiVG/gjHCJ7fZP
	 +kNuYemoNtWboBmsXDMDSJW6PuZzDSwQnlwehYqvBgYmz9+cO1G2Kmnpx2LTkPINqU
	 8sfpHZ3wRnVaQ7Dl0KeH47NuYHSKU73/neKSB50RK90hZ7m2Msw9eCWesi2LcD/26h
	 YKiQNueLGCKFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9801AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261055361.25465.9384459258736299989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6af42de183fd778ae54a90365eff020684c45a81feb73dda0d589d69cf73e56
Date: Fri, 02 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722610553
