Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A362F619A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764657774; cv=none; b=rvhquUMKC5Oqqb+Ax2yeVCv9zDyZbNUvFNswl2Je7rZhOlaONBQYVPaqQHsGuMm9ii7opLRue0bKtryq814ToNEcf88vn8VSOJKSej8gwHCSarbBoYs38CwqfhEF0StVJL7fcOVKRPxtcUtJzkCk4XvbsOnBRZc16jXNZu8E4c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764657774; c=relaxed/simple;
	bh=eiGAiUEyLf62y8zStqRdbvgF7xbHoCx+TV2YmXMjBus=;
	h=To:Subject:From:Message-Id:Date; b=ZCP1W0X9zaFXdPTlLulTdbKfd0HajmngKknws3YZa0MzvM7pXU1EKy5vB/wtbQ758TtnJ6aNWZBGCIQVJJRMcALG5fWIYh8k/pqPVuCfjsq7+fcFd4hMwvJErLO2J5ocgrP1cXCpNgPqqUBkXR56cJ6Kxd4mwp9TZMBw71o5R0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAVGNEDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAVGNEDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94C5C116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764657773;
	bh=eiGAiUEyLf62y8zStqRdbvgF7xbHoCx+TV2YmXMjBus=;
	h=To:Subject:From:Date:From;
	b=MAVGNEDQMzrWMdPUsTkuol2I2WUzZ7aX2pUKbw5niD8y5v2N7giZ8xmTDm10G1bxH
	 N4BZktvo5HNwusiYysu+llxqcw9R8ZeTNUD7ZldASvfLtVzo9MhhfGkwSrb7IboDRT
	 1BrdlHskI4tY9JOzuILgBWOytShzM8akPCWjuwE700EKnK9cKw7toIjxqABj6ohTT1
	 qpV08Yb7+CJbHlfBp2E0X1eOqNo/KFkqNVqNA8A0EjBUTEcaqv+V9+Bd+dWph8m1el
	 zP0TRGa2SKxZVFnvOUDGpWWaOTq0AXt5vOC79rNQE9WjFoeBbs028ySt24cOQljBNR
	 NCHtcP62MHWzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA9CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465777358.14810.2088252878592096168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc4cd8e1819200a53e64920dc063016fe7a27f60361e0907ce795e6d4c3226c
Date: Tue, 02 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764657773
