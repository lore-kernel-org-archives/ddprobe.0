Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3498433CA
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725210954; cv=none; b=cJ7RVfJ62tQlBuRe6SUdxnjCeOUoJil1sG7Z66hjayXn+UC+lljz2fMHx+kvSGFiCopNy/GRzGKx9LH25xmTMd2sk3eUA9bwd7dKFu7sHNKATLMd+LcUUXPxs03R3mwG0od3Y1Ml4QIGWz6eYMULYGziP4DEOghd6dSbrs6HLo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725210954; c=relaxed/simple;
	bh=HpR6MBKLowaQlwBEifhSB1qTLt6OTnk+K+CsJ4Ar29E=;
	h=To:Subject:From:Message-Id:Date; b=qL6Ey+KJqTM/9LvZmaAixjgrN2ugIXmdqSMA8fCP/eU/ZiKG1xD4q8zTLppwEf7Z7p5ZvEs54pzJuc09sNBDItGM9FZ/Xlo7kTQCDItiGHvDtdNLh6Sr+9s7RVRqJRpiZDRf6LvjscnLZ8rS5Ew55v97Cq5capdcUJee1NcqC+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGmtnWZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGmtnWZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82DBC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725210953;
	bh=HpR6MBKLowaQlwBEifhSB1qTLt6OTnk+K+CsJ4Ar29E=;
	h=To:Subject:From:Date:From;
	b=EGmtnWZeeBz2mqnwi03UUMFEPi5M5inc+FRvuBeCvC/6DeN+mbaqJUyQ+cqSFrYA7
	 zX0w++6HejAGk+oCr6aIyvt6SJR+HQnrLRIVk61plVvGMRZnewp36QzNdPAsOjfX5p
	 9VWdVmFr9cyXpf+pWlXRGdYwWcdYxMlVtxOmN3RQbw8xDobteL/5MFn33LKuuXy8AO
	 Td7froReumTvl7hrt1EwBtZrJjkufr7eJjwBTPRtYIYQIgtzIm7OtFE7WMomqslGjk
	 gGuteZCP3GdyFbe6768w12HZ4X0+q0gyooNBCtB7eTzILiNfZ60G54lv4EShzwS3g3
	 QyteXXhh3f9vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7D6C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172521095363.19037.515369998984994251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d56219d9e98c4cc2c3a9ccaf4304b6fe15694aa868728abeb7e203d18ac3957
Date: Sun, 01 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725210953
