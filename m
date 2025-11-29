Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416D218E1F
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764427374; cv=none; b=FUj9Qak3hDwNu2kH4lQw6fvXLc+XK609A1BC61HYM0JCgceuXFJxgtOkYhL7MmwN+jpdQjfBHEKKI21l8V6Y5Z07nRqluJbodJrQYBx+tF54zTPv3Yxz3kcOP1ImNfAMyTXLOqyMwvCB5mnLXHxRp7eJCnK6UDlAa1wjG0jbebU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764427374; c=relaxed/simple;
	bh=G4wN4RTRy6r0+GaowjQOHlMOekBLNhWVhnqGB32trdY=;
	h=To:Subject:From:Message-Id:Date; b=sSYgojoEXK70LnAUBJ6FqqHqiUsKBxgAIVkMHcSCDiSFYA2lAHVgzXkd2w7otZoot3OQMz/YluBRaA2DSPVCqLy0lL851N87h2KDGU3gR+xfHSWewbJNNb0BUkk/4DByTVq4jM8NRidwXR4uaMEPj8rjl5/PU0YCW14CVgJu3tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju8ev6yY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju8ev6yY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF70CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764427373;
	bh=G4wN4RTRy6r0+GaowjQOHlMOekBLNhWVhnqGB32trdY=;
	h=To:Subject:From:Date:From;
	b=ju8ev6yYeP8G26BsNWI4eCKY+xsbBOQzW7iZaM7i6ZFdrSP3lGqX+yk1u45O5/R3+
	 vh+pr8HsjVLTJu1RrSiPCGduC/yXLqvSkKE+6OivOICAYmY7bB8j2RSHsX6WV89h+9
	 c0XkK9ozQJBs4yl7m6Ms3FHHLLwVeUob5aql9LE/z2AV+DqiyYBSatZnT1/zn4fJDK
	 AKOuyvLoM2Bwg+HpwFdD8xb0Ls6KbQiU4s87Zzg3Mx2y8UIM6rcYKtST9POVS7WvIK
	 RA5JOHBr3xIELFO7ycJ2Ky7W6Zt6/eWvRpetdPYqbAg0vxRS1d52hd2IrWDW19S18K
	 KqMBwF/OIMH0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAD1D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442737361.4610.7703453591265618157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc91991009fffd50946b73686506b4427a8c3526e9fc6d39dbfe734b5b6e758d
Date: Sat, 29 Nov 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764427373
