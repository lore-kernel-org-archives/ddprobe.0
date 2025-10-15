Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4897722A4DA
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760517594; cv=none; b=RDnTFBAMuk/g9qguusLwaLNVZFcZrG1oG36E8zFdPv5WtZnYLLukuv7dbcCFk331JvKGSTAQrYI+gFWTMPhqMOA5r2XoFPnb4GSbOJpNhHc2GhQdlorgbd2RzqaxstV7DCaa9S3aLZwov4cwN4vaUK/aWg/5NfuUXqCheyGW6h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760517594; c=relaxed/simple;
	bh=lYfYuEe7UA9wmRnLFUBJpliT4/OUAhLDs20I+vNaxKI=;
	h=To:Subject:From:Message-Id:Date; b=FMWujKJlFOkDqI6OMXFNNhUs7TfIGhErVRFrGD5fzuR9MsPksnsHIKZ+LohiWjuwUvA8bqjxgDSq3cy3+Eia+g1eVOxcDW5SyZ3WAnkP/frsYhksqubVpG1kTBDz3TlJZW5CgCdHfDSrzvG1rOzFjtsCQowIRrlAmyKuSHY+fxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQctJeR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQctJeR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C45C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760517593;
	bh=lYfYuEe7UA9wmRnLFUBJpliT4/OUAhLDs20I+vNaxKI=;
	h=To:Subject:From:Date:From;
	b=oQctJeR159u5O8EIL1fSCxY01v9JDqKuKFtrnu4ry2vNztvZsTFXwFB6+GNbb8UWH
	 q076h/aUvWnQgVy7KwrU5jt2w312y0ZmDkxttyyZQChy5gyYaV0XJ4/3hEowBH1ACb
	 tiCQBobwlpiiS6sYjZk73MkdzwHawWDwd59lmj+OS26X8EAKl5xLf5oDHvevLntu66
	 6aWHzkqOGh12fYXprPydTP/+ptY46+LeFB40+jv9LbkgJOxdMsCckAdc5ZquvH+r0c
	 a57B2L5O/qQuAx3nxFOAADIMAhZnQxRdZzz/MTKm+qLC67l2fb8ukQTc7gQIwH7BLX
	 1MZAtgNDvVEaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F516CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051759357.19023.6925296076498006321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79ebc5a080a297b5d491aadeb897c9828b393d75aa943ca05c868ec295978c1
Date: Wed, 15 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760517593
