Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963D02F7F03
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779116434; cv=none; b=jGuDy3zHoBInT3UEPYeeATiVuQ3D+6+Skr9rxyJJy2YBOP7wTqRbMEK1UY0MECqk/3iu0R1BCB1EgC1iKSVMskGsD4nn9zjjcpHi0PS/haimzzaoei30g9UyFQN8E5cp7x5qHAk49WQrGIrimfealHqD9ols3VaT/5bSMXczsXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779116434; c=relaxed/simple;
	bh=BNQEL42CbxI5L/fzJ03iyMAl317ZWrmnYm8WurX/Ajc=;
	h=To:Subject:From:Message-Id:Date; b=laAE/SX5Z3/eCCjXZp2Qsd2jfZbMhj9XjhM6ZWlkeNuU1jFssdlnpN7hUV2eepDijAwnBQDkz+D7GMhrfKRXoqh13LQ0AUva5IvvLotUYhuhg5nXAiwTSPIcg8yP6as5eLZGaASCiC77m+NVSqjL5vw6XS8FVWmuUOhFIaDrlz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rV12O+aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rV12O+aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AD2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779116433;
	bh=BNQEL42CbxI5L/fzJ03iyMAl317ZWrmnYm8WurX/Ajc=;
	h=To:Subject:From:Date:From;
	b=rV12O+aG7ytZdEteVMALfqpj0h0aKTgl5fCAPBrF1D64Fq5EZldZ3oEsr8v9vMpZT
	 EZc+h1nGLkKJXE/W7k5hw/Cl4RWH/FYIu5i3RN4N9K0QVhpn4jgn1Sr0M7rYyKe0l+
	 73LfgQ7DeFYTB4KdWUChQnhNyoIl1M344Zzhr/7h6RQPxfspJps9YUN3Jiko5r7QVF
	 2wwhXSx2A9RwUcD6Nc8YhW3hGG8whVN/UKXoUiJ/5s3S3THGv8iL0oQq+CS1FZ9DNS
	 5+RIHsry792aeoGEls1I7BeAMYSMNOnuJsVwt6IjpBHeJDDHwzY3ikwyCKp0N6QvOz
	 Nv2kSWtB0TpKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B008ECD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911643369.27184.16289460747863112920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0471e42f15e1f6fc33f325dd36e1637ac958681ef4bbf7be8bebceeb53a7609
Date: Mon, 18 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779116433
