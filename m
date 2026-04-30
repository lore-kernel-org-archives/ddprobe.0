Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F3228851C
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777585054; cv=none; b=qP/KV5ehw4s0eOHPKbLZguI3AMRFi1mcqpVfWgUkI+bnB1LTnHSXL1bNFTYTowdX8qTyAw/n96YbSZnd9iKkPCv95k2tyRtX1eqzTapD1zl6Y/dmQGOs8ZkjHjok+/O9K+oT1LUQ6QeVzwPERaj/zGQo0ae6D3D4Zfbe3NEubCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777585054; c=relaxed/simple;
	bh=iYXbQHyb/m03UufeaaSLdivNAUw1Iue4n4RMd6DFjO0=;
	h=To:Subject:From:Message-Id:Date; b=RD+aKkw4osmF7ajZqISO2CV+gFJvBuC7IDzwOjHIN7glti1W22GKXY7KHZgKQauiJZjw4guSCW3UjwQVrkK58VR9KjremQSlXuFu2GS7VrVTZh07J+WRw3uSVWdOfdCf2t4xhgSIuLtHGdmoCvBOB1YARPtoSCwxWG2UzW8AYuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5akit9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5akit9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB71EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777585053;
	bh=iYXbQHyb/m03UufeaaSLdivNAUw1Iue4n4RMd6DFjO0=;
	h=To:Subject:From:Date:From;
	b=K5akit9LvlkK43ofpfH6vxjjI17H4oNVk2CaEUdjMuYdc8qixrBIPr2HGY8D5AoTq
	 Opgt3e1n+0krWD7gbXCjjCuVhIJm0NZ8BsT0BZaKwCfVCeiht7D5cBCkSBvcJ29Zg2
	 8kVCE/5pieFkHDTErVps+LDnVlCfVSAf8MQtU/AWWcWHzr4MZ1Lq9zvkN/OP9B+YDh
	 nxyWl+QgLigjjEiQ7h3XV96XOTQsjZa2mMT451qNxxwdddLNknPtT+hsTD2GF/1GJq
	 N+pgxQ2Zzcs09M+QMsfFHzQicD3FCAcOqXRsCZFy+JV7P7GdpIs/gXpTWSgF8ugdXQ
	 bRqcLowRAxftw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A55CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758505368.1213.9600819616842124947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d04215c0f9bcee412287762810fd9abd0c9f1241672cfae694e7f7a9fc70320
Date: Thu, 30 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777585053
