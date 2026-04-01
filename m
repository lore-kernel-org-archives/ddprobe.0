Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74353AA4EB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775031334; cv=none; b=ksaWGvH4zfUR7TimMwYMfm7GNQ9Ijjy1w4QrHLYnb+Z661QkDypV0ttvh/2eopN/zUoBuSklt+V+ynI0xd79omRv+d0BzVAlk/flMcK7w3PykH4x3t3jpPBAeP6AP25M43M7XYj6DGNw2Y0CcDABRXQqMd9AFal5R1ymMqlFOXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775031334; c=relaxed/simple;
	bh=9HGEjfk1EQkHyyj3qa9WyI2rftHPpu7ew8kZFec8lt0=;
	h=To:Subject:From:Message-Id:Date; b=PHMoQgRZFLtsSmo7ctaCqb/5L+OMYZMHssz+AsZhX4Unab2TYZQXy6x61IiOkB63A32O+k5Xzx5bdP44lg9wDj8U3hvKqXB0EToijwE1evMeZI6PEqjCHury1kXEhwK5ItU69ys46sT8U+xt42Upby206qZI+IK2PW3/sT4wBi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNXqq9eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNXqq9eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11C0C2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775031333;
	bh=9HGEjfk1EQkHyyj3qa9WyI2rftHPpu7ew8kZFec8lt0=;
	h=To:Subject:From:Date:From;
	b=ZNXqq9eZF0G0FvcrXSooselu6dgnqZZpJhJ1Ol9+R6eESMx2ys3lgqHY18QukBpfC
	 BmfR4BPntfz9uPcCAm+/McNojt6TmIL0wSUassspwRux0ghusqJ82WNnqhrvae9PSa
	 NeZSPJDnOp9sewm8jQc+NRyQnwcyjKVFcv/cdmsg+GdpdNRdi3LvRpWX2CGZT+VuD2
	 DMwPqen6iRxQE+upb70fuI/2fS+J/rsL7VBJ8V86sGM+i/bkgjBSbsqAgfEumFHJYt
	 IjLWuV2CnTH+2lIxf7koCKd90EFeIGaoLf220j7UPHe+aQf0DULVnZr2t1hxCB7kHP
	 /QnEHR0p8Vlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07C3D3515A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503133371.12024.14531407270495003016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84782d678225b07dac597257d4da9a56261abfcde46d608beb7a6af4f34519b
Date: Wed, 01 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775031333
