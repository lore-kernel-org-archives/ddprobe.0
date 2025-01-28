Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58460768FC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738044354; cv=none; b=Suylg1Li9a8n1x6398CP8vcr5009wuzpPUA9be1l8sIimdKsCQD2vM7YgLouwoIrVLdTX2zPqYP+I6kCD7gF4jxiipFCb3GHZIIk2aveKBrfUsTD2IoBpHYAHWHjqVgyxgTeLk/D+9Ag8t8w/V94KF+HYMe9klh8Dy4W8XQfT3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738044354; c=relaxed/simple;
	bh=no8oP5//5t+Qd/HqVrJuA4/qcXiy2M6DdPCDJvoOb0g=;
	h=To:Subject:From:Message-Id:Date; b=A1V6Q8C1agmbTcZxwLuA3tMipFC60QKVeKoExyZVafppIONFhVqNZtzx8JSgZhc31Zi8B9fvOV4FpMabTKVfVL8NArgJHP2M86gXepLxLS4U2nV07Vd5JxKxpXQOcOzEcGpeV/0h3V4Z3Q8Vjv0QwQF/hdc/6I8R0LkKW6xxE28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUXijBZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUXijBZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76C4C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738044353;
	bh=no8oP5//5t+Qd/HqVrJuA4/qcXiy2M6DdPCDJvoOb0g=;
	h=To:Subject:From:Date:From;
	b=tUXijBZ8RXA2sdqnFfPxUzP9jH3D4hV2yfP9WmzelYGbZkrp6/ir4wHMS67PnEyK2
	 EZx4zjRB2KxoIrTKsfvQnpfsBmlOlivTQEXrsCTC6gIRi9Ib7X4kaisfIMv8F06SCk
	 WU4yqJM00+D787MG6+ZH4/y985aNozPZ+gR3UHGd8Mk66XMV7Zq1jekpYjkOBO0u4O
	 2O9wpO2fD+tfXOPSG2IPgg7wjqQk1V5CvQR6DTf4ASOlPwzNE/zYhgcAV5gXRKkmpE
	 MKfj/iywqy3hLLfprvM7kd3COwVNSdskcUmbONS+dInPMrzAS4yVdZh642pShnx5KN
	 iq9a8JT8WNdbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF31C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173804435360.10449.16410285271300412552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b21e51a17b47f7dbee0f857ac88afa26406162454fda134a649e15810b18d2
Date: Tue, 28 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738044353
