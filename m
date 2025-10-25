Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCDB270ED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761381594; cv=none; b=QrOsl7GFhjFDS/qReGXgwQ8mxlAxO6cTSjAm5tZAQtzcQIcSI2FsrMbrGDHKZbUIQQRDVDQN1KS4J300Tws5FoajY99wJuVaCRDxeWJ95yfKNbhuvSkO1jT5TSlZCwEXBfJjFUYra99LkKXrPSUMfEwmf3E5Tr4NMD1w6YH3RZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761381594; c=relaxed/simple;
	bh=Q+hMoAPipiStYFJ5n21wFhjhuBAOkkZQju3hk2em22s=;
	h=To:Subject:From:Message-Id:Date; b=RTK6wUSPeywZ2yLKUnbjGTjS1I4jCxeZtOPWKvyZVzBjqI5OTFIkdxOq8vL807XBvwPe64Gs45yqHxjQZBYIzmrJLflX25rfOiNQZi1KJOKKhF3B0q3OEir36qlhx/BCuAelUryY5l91MfsesP8cFac2W8KtNrdq/P/L7tBxb7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrQxYz3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrQxYz3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B57C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761381593;
	bh=Q+hMoAPipiStYFJ5n21wFhjhuBAOkkZQju3hk2em22s=;
	h=To:Subject:From:Date:From;
	b=LrQxYz3nuQPlRB3CPvsil9LTRs5gCCVy5MU8vJ6zNBDRdvZ7WfWPxi8tl3Bgi4R3+
	 L3+CEKOpCPshra6A1190p5lMxosC6rI2BqwtpR6HM/UORMCP3EGJNdMOpFYKXi0KSg
	 3QRgSdzRRv7eoD6XNFe/NFtg/gVBwIPmq9ukSq+sD6BNqrX+m5SmkTR7Qu/oPuFDwJ
	 PW74u5vmiKSVjW7CDBKD+W+HfLccSTvILJIyyZQ7szwv6Njv0gA2yV4Af9dVFiPXis
	 vnCibTEFIo8LB8YFit6e2xj1bCFOPC52Cjb9j+GTuwoVWXfLc0rGvk7150b8iwKPwi
	 2pD97edyCOhhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F951CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138159358.12356.1377994871661523976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bea0b99f8fcfca4ef6742937f66829548bf32a2b73db4ff90390f653d5b34c
Date: Sat, 25 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761381593
