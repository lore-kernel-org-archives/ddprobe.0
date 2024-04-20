Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF5242044
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713655223; cv=none; b=UpxHDwDUNU6H6uBNFk8MlT2NWZeYrxcPpI7bNHqZyinrnOxlCQia+O0nLN41qVdbw/LeTsjIGG1PH1HTaKYaFJJ0Y51mHJncJpnxto3F6Jm7uJKEbj0iq3AEtvm5qI0qDWhuQiIGfTJasbTTab/VTuS6PnlWNHWXTZkj6EtvvBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713655223; c=relaxed/simple;
	bh=7voFdPHGFhp8gGeU4FJgno3KyfWqC/Bpk3DqlMUE1gU=;
	h=To:Subject:From:Message-Id:Date; b=cyCFkGDQ5jLO5BMEDQ45pqe2riZAPg+IvIj70ES4udT0MHZ4+YBIQUQj9h5hZ1QcgPn4zAWCHm47xy1yZ94akkQVK4Sx1z7JidPBgaCQHpx6/KYK0hSbTMjmd0rdhQ3Hmkjhu6Yro5tywEa4dL+bs75DlEcS3IS6nUa69ra1HHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nV8Q1lif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nV8Q1lif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF95BC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713655222;
	bh=7voFdPHGFhp8gGeU4FJgno3KyfWqC/Bpk3DqlMUE1gU=;
	h=To:Subject:From:Date:From;
	b=nV8Q1lifMos9r8fzCqdEZiUROA9NM8fFyiuncssfjBGBWwy2t5+eJEwtvBgADMlnC
	 JUepwisTcPDCqRpq7HqPmwMhOtMmz01Zy58nQghoa1vDOKnwosp+/uNLEe/63Lk5aC
	 U22biHrytVHY2cYL4nzyBBZNy/JxVwolvfCy3ue/OO1RvQRY5JogK5R6ts0a0tycvv
	 Mu3fKQ+JP93i3xLc2OrsZMqd35W+3KXMb72hDYGNxT6pYxUyXOsGGESrRJS+HHXNl3
	 0wvjLyyJVUmEG9iiHc/CXLl/26hTmAk3OvILQ2jfvd5iJlPcb2h/nhGgIzPlnL1Rsj
	 tFf6k6fB0VYuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC975C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365522282.8313.689037805683153379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248febf91c1ffa663759d0633a30ad2c5741ddc54255932f2599b7294b2f9222
Date: Sat, 20 Apr 2024 23:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713655222
