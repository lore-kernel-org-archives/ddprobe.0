Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2209C2D77ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758185994; cv=none; b=Fyj02iH5IwI0G9XKyak9k97dQzAK+Q2Az3AH7rhABvL4DdHDz1cNkpHT2WpjnS3YgjYYl+VZaL8m/pKDAjth8j2RFN+GLNMYLsI5vIX+mrwx129qyyLAIsWoqhsfea8PCPkr+TctfCADz/o8gQMP2MMpmCPAvBXZpxTVAJi5QNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758185994; c=relaxed/simple;
	bh=fQ/8B2Yq5dBt3/cBGT3ioIQTUdMj9mGHzb0GTNV9nGE=;
	h=To:Subject:From:Message-Id:Date; b=ToqvrvbFfx+h6+SYXuH++VvldTM2fE5JxUelbSkplM5XY3rDKpmUAjB1pBONJJRtLs4dnRyG2M2q0UD+O6nLDWsza3CxIDIHEk0+9nHCaDtAwJobFVA0lSaTRVDnq3OBZCjfv0T2NBPp30b3lLCQu4OIBF1IEX4TKA0eGbgH9qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFohJic9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFohJic9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4013C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758185993;
	bh=fQ/8B2Yq5dBt3/cBGT3ioIQTUdMj9mGHzb0GTNV9nGE=;
	h=To:Subject:From:Date:From;
	b=fFohJic9ygYWLD50Dry647nI9oq9eRYn4k35RyXU++lDVdg6sNDKGcFOghiQl2ZrQ
	 v3klaJU78vJ1TiW1x6+iC4nXKLIUK9FeIukMPAG6qLA+PdQODr/kfHAxJVSk46/xuC
	 XCe4lj6S9PPFwCSsaFFMzn/KllXKnSqesEauJDr6V2Va0gqvm3M6KhkSwPp+ew3D6r
	 mbAJJam3IdbQ73Bu1SoHL6zvt+5iNxAfx4G80EP+wVx7ulFlJU1itGBqSIrPz47fde
	 iBjtYE2Hs7c4ORoy39gaElNfynjz1Vktx+YxDK47WofJMXaElNp8dMKDUyOEoeFZuU
	 kxnmU+h3pW4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCF5CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818599363.541.17625007987391129170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab71bc918fec8afd79f4c4b3a7c6b401b1c026eb092ccaa8f32605ff86c9ed23
Date: Thu, 18 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758185993
