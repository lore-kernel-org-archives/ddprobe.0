Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2466B1A23A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745130594; cv=none; b=UsdePHu+cAq4VB5CS+86EpA/z/rv2z4jHWE6cgoG+a0/5hWIMcMB6A9ajMDlTjYqSvZ2Okir7zyiKSKL0CdrUsUhsG6WELtR7fP6YxK3DKQLUJIqgH8Q8GU5qw8Dw0ffsqqhaY5T50sy5vbE6me2RjcCSRczBpzhKNLW9AhjyEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745130594; c=relaxed/simple;
	bh=e1mzkJBLG0jTCedLckOXskmjOyEg8FdfLSl0wU+W9hM=;
	h=To:Subject:From:Message-Id:Date; b=tii278xpv0tjK7p+HZdkjNT0pM/M07hLtrrKTcRUm3veDZXtaQMghNdosIiZK/qCPRdqnUdZg/nNuzdi4xQYAW5RAtTlfo013iu9lWwqea8rfGp4p+NbTGh9nvcPhT+IWxHbIkIYvNmItxFnWsFdwJSxVYcLT8Y/Ldx2hMJe5AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2LvEUZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2LvEUZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9F7C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745130593;
	bh=e1mzkJBLG0jTCedLckOXskmjOyEg8FdfLSl0wU+W9hM=;
	h=To:Subject:From:Date:From;
	b=D2LvEUZooxH6D3z1icwmWQQrc0bJToQQgXlxzSN+sVT4g9mb7a5L0w/+59JrH8vJj
	 dhhYjwSZtm4o1UspUEnu9D8Mzwh1jOtV8jlGyiL43+hDL0tO0C+iVOCYGnDfzAB75Y
	 d4lctZBceYYEHLzxiUDpPofkZH6W1o/a74BFH/NzWP0eaFAMfCO37ylZ1gXe95Vkhd
	 pZIO7JJ57wHLGmzTA5aD9AP6AtFZnBIeFWZjx78fxiqKFL9mnKby7O+MkSkFWGiffC
	 05TSFNCpWvziEM92Axk0THC2TgVAJuOQ33AV2BhUhySUduVRacNTWCJWyv4GNqX7N1
	 5Btzu/3Im2/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D1C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513059366.22257.15456716135126973869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4d489adca68117e29027365c97745180602f9e8a6710bc15ee7b6351e86100
Date: Sun, 20 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745130593
