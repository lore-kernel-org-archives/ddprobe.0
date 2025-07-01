Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC0C276038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751378394; cv=none; b=GD7x18kM/EBG754lPuEFWlWHhq0RndAGRKrZ1/Lu4Xx670yxaZsOImZXSXJpzEBxl7attxJSvVgqGzuQX08M8oAOAYaBwqhhzKbX9AbsZaj3T1Tyd8iM2qWot1KhTGOn2gfvFVwNhN1kp+QgvExF2IOhMmSG0AxCznkqJUChOmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751378394; c=relaxed/simple;
	bh=f0gaQAaghjadCdw6cLGZstt7DzHAh52HZ0p37BziAtE=;
	h=To:Subject:From:Message-Id:Date; b=IRGHxp4x+sXM76gVqC9j8XuK9LvQt4HllK2dgrprnv2s4JbJ0c0oHz5/6oOqmSDnA8bWT64A/1fEl++enbA6XPC4gl5lOlaEFCqzhDOK0Y6ag/HFLcmilnIWYc0rzciFDXsvyaLwFzaVDe+6cu4VfojFI598JrnzBmzfKZPOVFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXbiZl5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXbiZl5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC42C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751378393;
	bh=f0gaQAaghjadCdw6cLGZstt7DzHAh52HZ0p37BziAtE=;
	h=To:Subject:From:Date:From;
	b=uXbiZl5ZIoKhLnjjaJY69wuiQxOcpBT8/BluTUG2gYyZ89jl94TQMZiep6foi7lxW
	 rNzd3nZ7zdybet8Kg74CLR++hw4YnngzSel6F8Xuxz/UNV7s5XRpuWw3jHkkOjavi9
	 /VgQBM4Mk7PkAdoLls3Yygg/dzwpn+QB1qvNVEGMLX0p4aGwzrnyfsIxQ/y8l9/2pb
	 2+PhMXgmMcT+hTS1niA1bQ3Dv2c1jYBZen5qU8atWh3ggfPlpMu+Um7FVmqCagjMhW
	 smbstZl7txLkDwXryr7iq7e+w0ROh/fUrcvm9X0K/DKpQq+J+Mr2OwVs/lIyaKB8JO
	 2/gYo4k8fRj5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F442C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137839357.26042.15505804320182096256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30f21bbf4d3e7c3b28977789c0216ec12df4e38749cb96840579a5aa4f55513
Date: Tue, 01 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751378393
