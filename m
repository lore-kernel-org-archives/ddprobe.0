Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0966886352
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773500094; cv=none; b=R3+wxRKrGImGqmEe1DbgbnN/+N36deQTCBP2akdqkYgSFKSJvrdPXt2kbEr8avBXfoPiGMm68R1zLWANP54c8FkNrCCTLYMMFGFZOKJx4+4RltnieOxg7DBLotENUaXDH/llIzbjUs6CHurg4U9yZluShJy2H8P88/Wk8A9d5tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773500094; c=relaxed/simple;
	bh=rCdDnZXuJPgqxMRw4ROqa+2F4hekyYdMZlDtWmV4Aro=;
	h=To:Subject:From:Message-Id:Date; b=UArdeReobl1rv2XIuYrkIiidOjDt/ufGSFVWepdNmTeGvx/+EKRflFPvkmHn5DrX+i18L83xBowwnpmSaFdULeAYwerLNFyi1Jy398SNr+LG9OkMlZrLXZyl2Y2leV+jfRufS4DNokHeA1WfmfNtZp5SLCimiP+KFeWzHTGuspA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJUThx8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJUThx8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AE6C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773500093;
	bh=rCdDnZXuJPgqxMRw4ROqa+2F4hekyYdMZlDtWmV4Aro=;
	h=To:Subject:From:Date:From;
	b=bJUThx8Zf/KBH3ZCJP7A+R0jys7Uykz5PsSsgdHeoAWp1fHtBSOAXdKC1Vip4ZwsM
	 JZ0qlGfV8xIahiQ2IqYDVeQTH8YlIk5HoqtzjuxwFGkgC8YaadzEp7xdkfMYu55fnm
	 IqgMLC35cXEfq011DjgKHLlRIhn/lcPhSEy4EXVxdP/aeaBI6OCNq5cIddFU0Hp8w7
	 dgS9j5Qj3sRURAAWeZut4/b8F5OAWMgy/EhKniGlI3vOJRagunQeagLJMy+ccpoYwj
	 EuEyFhvmG+S3/DY+T1YHNDdWPktXrvvKPXMD/74BI+foZ6kMmP7+iqKX+5QfQEMFWW
	 u6bBO38Kz6Jgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407210706DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350009358.18987.7361766422505841707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a10d2be73d1e0d20daae70efa4b8aa2810a780032701211a1dd1c4973e4e2ef
Date: Sat, 14 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773500093
