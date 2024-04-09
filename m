Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E900F7E574
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712650697; cv=none; b=uuVwJpy6OI6Licwn0tZgLM2CJriBTNM29QIPekDGPf1f+xv45wZyOLsRzeVobNqxvV9XDthXHT65Z0xyyzwiWDFQ2UZqhN3Zr9ifGaTqet4OqzR6VqlS2okA2JE5iwvEBKOeLfPM4kV9e1EjwDAHD4qRcSjUSB9/qB8y07/UpJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712650697; c=relaxed/simple;
	bh=xOCAjAD9s5CobaxWqum1Of75Vf95p05Osc7jWi7as6E=;
	h=To:Subject:From:Message-Id:Date; b=jvtkO/fE4TikyTyyaDbVzdCLN7b9n6HbYNr4Dtnqtkr+w0i0trdjoERG2eqCZCKUYMDXH/DfV7/Bsl3R4EP7B6kxpaWcZ8+KazE2MfRru/y1hToqu/5A+oWUWmnMSinslUTVT+BoyYOobZs/d1joUh4HCv9ISSaKxep8cGe2JUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpC5Spc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpC5Spc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA27C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712650696;
	bh=xOCAjAD9s5CobaxWqum1Of75Vf95p05Osc7jWi7as6E=;
	h=To:Subject:From:Date:From;
	b=NpC5Spc+EBc7KbKmpg4qo8p/OPBhuRbQVXMyDA4epJMWaIxFCw56oZw7S54FpSgqH
	 cYGeBlSTFZgaTff3BrIKPqzzCGuZJXnVkuIgVWykEXautIFvtB1mwsf0kPCJ0zK7mg
	 ctjLd26l3uIJh4gsvbPlhsn1J1h/x18D1KBEP8vxkGBd0xZpRoikitWadTuw1k2Wtc
	 hwBZvqyxDdDXZEFbUazNPYd9qIN9xDjIyufgc64Q4snsg2VLz+ji4lBQwYmByEfK76
	 Ty6rsTQr1AZnVmCAbQ708BQlXRfYQBu2kRE6r5Q6fX923lAtUlyj9TnIxVWr6STkq1
	 8a8KN5vnkDReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61255C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171265069638.7435.4662402887212694986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608f9f087c51ecbf9f824f6522b1427c8fd5201ad91ee536f8d3c7d696bea7d5
Date: Tue, 09 Apr 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712650696
