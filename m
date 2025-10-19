Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3392E62AC
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760878794; cv=none; b=IR1uThmrBH7FOadcwsqtMCXu72tGu4Fxrn2DkftOmbCbm6G9dYufCPlWKT5C/G1UYQk5NCx1auuUWhq9OM1b2bctLzjmzOaoz5PY3128uR79nPcJquUuZN9+A8SKtZZODV42eESSQsJXo83Y9R5t54zo2zEASw3NA7fruPJt3OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760878794; c=relaxed/simple;
	bh=HErZ/cHoAvmCydYFpm1Yfow+ZroxxyZ2fjzq9vF+AHE=;
	h=To:Subject:From:Message-Id:Date; b=VlS2sDVhV66ADV51exQwCA19fo+107RovUICcKCvH9/HcNfkkfTWzjTMHr32jM1znF/fsjpo0CneG4lQ3x1p8PmDT4CXdci8VhV4STfLAKkLlYNFLP5LS3PATsQRCuj61v59kxf9SjmTSyFXKuypF5juCVkl5aqpm7BxXwMSyc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QykXfcZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QykXfcZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760878793;
	bh=HErZ/cHoAvmCydYFpm1Yfow+ZroxxyZ2fjzq9vF+AHE=;
	h=To:Subject:From:Date:From;
	b=QykXfcZ8It+y5jNN01kodtnvIzRiQ7/57yu0NZjYLTF/s3ZTs+uDN6wKbSyq0R1aL
	 pxYxM6i2r1EP1mQhFbfkXlKHdtsEHGAfMr9QrU73C0nfEQeZ+rPW9L7B1r2VibkBlf
	 gkEK/pQPTkO9O6TXJ8/JfrnJjucfXJQt/dstUZ0QkrJxjNQUWlO2d9IyABUtt1FhLP
	 4/h9+CYn7z5CHBbK++1iox+3KPOO4aABoCp9XMxn8JIzkN1bmctR0duRq4LlwBZ0BO
	 g5cXax8qIZEZOai+oLYieJR/zJZKbkGNAtec3VJCSEEoqeD6QLmid2GbnbtXzWBs1k
	 rfPt6uy1u70Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9182DCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087879357.4268.13067842257726934923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed5b1dbe8d3777f3945c055a5010f06e4757eb2b381c043cfd13db99a73e6dd
Date: Sun, 19 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760878793
