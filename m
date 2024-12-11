Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139E51422A8
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733882154; cv=none; b=AfOv1wgkYUYRUHkhEdH5uTvreHZWL0qDUkGBINWsA7RFrN3Ua31eCNFqaapHBpEgkqjXFcHgnYDdYKdzc4fob6ErCPtJ0xsz4kUnCUCqGJHkKJkL3s/vytM2oaX2q0+iRE9zNYo3501cmrHzCnUlb+EXw+Z6M/P0EBkAX5mQ9K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733882154; c=relaxed/simple;
	bh=bNPcuxScQy2aUFUFebZHnGBb6zDDbwpgfzs/F6DSElA=;
	h=To:Subject:From:Message-Id:Date; b=tnM5YC++af4SSM4t4S4EQdMXFbvrPVSI/2/9Jt7z8BQyhHSgzXGKIDOChHaAJnwZhV9VrrqDkHoLjfsZ2yqEU/ZpyonxYebThsdjOlYs3SBX55IeYRPF2HeTpTPUYY61UZsObSLp9Kx9GaO8w3BS7oRjC4VC0GuYqIIIpSLp8Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PT36lla9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PT36lla9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86DFC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733882153;
	bh=bNPcuxScQy2aUFUFebZHnGBb6zDDbwpgfzs/F6DSElA=;
	h=To:Subject:From:Date:From;
	b=PT36lla9xJz8JXZZWZRBGZho7pwgAzc3lQfPo2kXv/KO7D7YtNLuyQRaapPz99URI
	 0FNfjSzS1FRb2LtsonrxhBWj3YnUKyDasQTltUCm2czC+3mO6UZ10kVeaPJ1ORYnmG
	 rNykA4rQpz3Y6e57nWCEsUImKv0ZuRSbJbdjhBqPhGXoGwizLhNljmn37Undifnzfj
	 U0ax42RZX8Cy5oI/RI5dom2ShQpsUd+/d98kt+of24SBHlz4Ko8cyMk2OrWhjRH0ng
	 bhLp/i4yOfCScM6wHjMH5yLth1t2pti2XIi9bg/bwEPBVhcz8U6eI6nRJ7RDidVzF/
	 B4rXfCPPtl41g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3DDE7717F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173388215363.23809.17163677943090972281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0efdc5aa2fba3be095d2e5f7ce1edffe688628a0c5c58e17323ac7ebc478ffe
Date: Wed, 11 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733882153
