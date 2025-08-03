Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB4D15B135
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754190594; cv=none; b=iULfZFw4FiYQu9SedgnnmdgaQUEHSdrENy283IiHo6xhVJtF6G9vGYS4LICEHJKCTPosRnztTYC13rfuqv6lOSVg4zZfeO42CKiIWfeiz+ZFZg5VARpAvXPFsO7hQLIg+EptvMkawkXMxe1uPUn/Jxw1u1abINj/I6wLcikNDe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754190594; c=relaxed/simple;
	bh=RSd1v2d9UK9Y7L4xDBPDSp5hbAfb8lDiPRBIFcpbO1E=;
	h=To:Subject:From:Message-Id:Date; b=t9VCjoPg4hWW0vZHDhnr4JQU1TwQ8ZtjJ376UqzXpkYkRTixsFULHvgRGpiDClMndQCX8pDeEOYa/dQC5ERC1wnK0599/zHfahFEgvE7xNhLYhmHno8VndUKbGcb+RK0va1T7D8sDjyhXlK/QE7OdYzm8J1qk1FAHuyLvlXLSPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXZayjid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXZayjid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA08CC4CEF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754190593;
	bh=RSd1v2d9UK9Y7L4xDBPDSp5hbAfb8lDiPRBIFcpbO1E=;
	h=To:Subject:From:Date:From;
	b=LXZayjideOGpyI7l51GmzTsM7gjooI/nR/UhNbQBT908CTuOsq6+k/wGUEmXXTggl
	 IkGSm0D2FECFkg93sL5eKw7lH37LQNaGs06deC80/+64/TZlczitDUXU8byh5TFYFt
	 J2AVJlULmEHuL6rekMuJnzJDnDRS7sFJ6TomUcRdhmy0pktzdX8SFV//XCILVuLLwb
	 etSvbKTvjYSCRNU6R56QzByTUeNMi1YKomfonHdbRMS3fzK0nuYgePwMWrXbFaAufM
	 T+MGeIjuUk2LWf781XSxnPsHppdxAf7NuIHd4Jny8lqWA8YfdOJTGs8QsPQhkAJDmw
	 dq87fWZ+1eClA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95010C87FD2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419059357.25786.5065890665013154951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff669a6f5c4bf349ecba267216a534c00692f43dd5a7e82b5cff3c8e0593c73
Date: Sun, 03 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754190593
