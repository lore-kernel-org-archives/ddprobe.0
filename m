Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ED61CCEFD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731546954; cv=none; b=YSQk9tk0KZqhhfirZm/j+ubk2zEynTq291de9EeOBbZ1ta83EO5BKfDyMXbNkjSKowB+De+TO38Kp09x4GYeV7xA3Vlv7P/P2mHRLsoUcGKiHMxQbsyA0go+WGiV7ce6H+ImSuj+QVKcxil+Iqp8ho4LOVbdv5MmgEB0zfx+FE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731546954; c=relaxed/simple;
	bh=JkFfxudwiBgNedoR2N5R85GMiW+GyiwFa21E1vuVIpU=;
	h=To:Subject:From:Message-Id:Date; b=p/0VxFI61zoAwHinmc6YEnYfrLapQ1ympgLfZG1l7lN7BD7pCU53Oxih/M7bne58hfCaulMdCh6Uc/px4RhyytXA2+Bcaca3BvFQ2uS1aCH6F4ECruGgCgRh1k/Z9/PQd7l14IdbvVedijLfxtDGSNR+kzpnqdHKU06HABUYEb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duqsDTor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duqsDTor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E18C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731546953;
	bh=JkFfxudwiBgNedoR2N5R85GMiW+GyiwFa21E1vuVIpU=;
	h=To:Subject:From:Date:From;
	b=duqsDTorLZKQu2Uu6szWj8dmcFc75FLD44+PZM16FQ0CoCsvx3GIzAayUKDDdmqPm
	 90M6CyIG06J3VvMQBRwQ2mhyNDJgBNwYwzTKhSXoxeBsQybxCMnSjS6ZOAsDIIoOsi
	 9zOtsN6MoRw/tjRtd4Gtfh7LKmvJLC/zuICnMgny4DUM6AyrcLJeERqUP1vi8pW0Et
	 pSKIjvrHfu1Wx1bI240wZ2n1LkJ3EkIeVR9USa8G5k8TRwBYRsfZDBgVGUAAoHRCji
	 +GfW4KDkV3xqi/fVa3XS0b2vptCIJvBXVvPwhEFwWukl1CXzr9ZUb2/LXTLrX7KUfH
	 ogOzwZ+sUZr7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D5AD637CF
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173154695359.24234.8178250509769651329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debb6ca4e84919411022d3af965687a4657f5f72e06e37f00c35c00ef2aa2e41
Date: Thu, 14 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731546953
