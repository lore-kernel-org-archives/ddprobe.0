Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED48DDDA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713693023; cv=none; b=uNlZkjbK7rveVNceBpbo/Zp/8PFaVYry/IdRHJCu/v4zxPAAo5vIBVaLp/W+b6zx2rJuwc9h/wm0OjNKkfkC4TeopdLgbzx9EwOs25/ghe+Y7vPNxqdRmWeEb1JXhy6wO7SMKYH/BKc6lWeI/XbLXm6Ura+2ylURBG/RrreOIRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713693023; c=relaxed/simple;
	bh=EMQUcKjvmtG++fs8chdPf83GalKCKxFGq6prnepNSJo=;
	h=To:Subject:From:Message-Id:Date; b=rSSVkQLLEXH48qIv3VowWnt3O/yKcff6S0qqZkHEqiUq2LTZm9+YOfhvV5NgbArJRr/s7gS5POcBRW5wXOVOsqRrIp9K2+LeFMbVoyBH2zgSBZhyA3Y7vQXLfqgpMxqEpfz/tMfExazUBmuodyuPUttac5ylTym0FrvWdzu47yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1j7Wljd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1j7Wljd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC282C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713693023;
	bh=EMQUcKjvmtG++fs8chdPf83GalKCKxFGq6prnepNSJo=;
	h=To:Subject:From:Date:From;
	b=c1j7WljdxVAIqBSrRKm8uhc8hXLKm1/GDDjzbPkW+F/725yh0KY6hDy6fiQfyYMYb
	 QfUCTd3s6HlIyfVyipK0loew4FKR1PKLeJDrhzhVfF/TOsby4J6/RG0wrEuxHhSVwS
	 isO7OWFCNNfHtwLn0u4A1viw1fMVaDQhtcJoAXMzsg/iOigm7TfFTPaohtyUV7gBkY
	 GB4Ba6RRwY07RKiXl2FcJemvdwzKRf4CrHhrQWUOH0+c+V7L6KGkCpVZ1u1lthGIwe
	 CQ/4QeiUw8PLDMcSpCduIc0goNp1hSLA41w7Nvl7v5uVW/U738ERNf3XS0LeSNdhsf
	 kw4cT7gXyoBMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02D3C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369302278.4594.4325552264280335772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d9a6324993a2db5bbb573919e823e4f06b4ee13221b660961b1aa0c76dd8c2
Date: Sun, 21 Apr 2024 09:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713693022
