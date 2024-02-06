Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F018D175BE
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707248897; cv=none; b=mX6EZQWLtGuCctU8z6/GgEIMWlYODmgdfwH/G0hThnHACIZwuCGhhsrMfesdjv8YingREaobv9mbzHYvKM1RYF8a4c1Nm92iUX4rZX2tXsiMYVU0CUBFgDsCRjz6jf1Lgfh8e4RvJZWrbZ+UeAS78alQBlVNZLTRDLqqk/RbVvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707248897; c=relaxed/simple;
	bh=3o9gLKiNHwibMV5ZZ0jIt1c7sARdP3tjFFYipCWFfBk=;
	h=To:Subject:From:Message-Id:Date; b=CK2vLeZyi4tPcdUICJ3FQwvJNxNPao9HEqIXA/gPVqYdyaw4Ds9z6rdv0RAPaX3iWU1kyYZPYYR4MPI7Trk2PVARshZ5J7cjP4a18aGx4yRq98UVtLjRGp0cGuUdCPz+FGKZDUyvtFsgD0jEFLbZkFpQZXjVVDPxGMqHLKprELs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrT1fjbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrT1fjbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAC8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707248896;
	bh=3o9gLKiNHwibMV5ZZ0jIt1c7sARdP3tjFFYipCWFfBk=;
	h=To:Subject:From:Date:From;
	b=FrT1fjbZo+pnGIpbAJGKb2UbXCAV1MKyj9cM5CMl+z837EaYAw7fkr+8Ya2c0tgUv
	 eyan8qcV8cbtsEoEPAiD7OkF5rtFN4nLCHYjxo6r+aFOTMm8bwRsNiIdJUAOzUKxKZ
	 imHWQrTirKYGOggkb9eOXCIuXY+qHq6UhtNypAfTRkjSlLb7x70wF2u9dS23jQwowG
	 gaUnnUL3L7nV07vwLAMhrshntOZNeYmdtw2+V4pIMjFqSvjvUcwNfdfvcH/E+Z+GVz
	 Okf8U46Ix/udHjWr2V0Y+YuOv6tDVSFGrn7xIndZ+HuhhgYUcyKozFqcaq03nwldLL
	 d89QAxUj2gOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614F5C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170724889639.26941.18161150999397059386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6845226d84d645c346c43c48c2633f78d6ec5343159b0e532de3b883d15d6580
Date: Tue, 06 Feb 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707248896
