Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C5739E9D5
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780955074; cv=none; b=LKfie+/CenmMA6Yvp3mFgMEY2fZeHBnS947qiYFmCWl4TueIi0zP16p9WDwSgVeLryb28otgikL4Xea/Mrh9LVd71F2LBlDQYuegBfS3lesMUPSSHUzBCBvCJ1UXHoPTJ8fTqtPO1Gk6mBQ99efEIaG2fk63IaQM6M4WhwNjImY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780955074; c=relaxed/simple;
	bh=vhokEwu0jj6LVtSDkDxx55nkBjgwoJcSZwJ3fFu9PoY=;
	h=To:Subject:From:Message-Id:Date; b=XxyfVeaYT3NtD5MvCICEwrBOMfhVOnLfUwdi2jVnRiE+qZZyISMVM8CWbhpQ/EKx+jn4JeR81/mk93/Het9ZuOMCNn55sCE0wAkMAcFpEMqLjf8ZnlZAzPpdoalqtGROVrMOp8JnCG0uzPNn2tfMbObDHsOfmnIpJJ2F4ZE3+aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeQDKMQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeQDKMQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB616C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780955073;
	bh=vhokEwu0jj6LVtSDkDxx55nkBjgwoJcSZwJ3fFu9PoY=;
	h=To:Subject:From:Date:From;
	b=AeQDKMQ/c0B4erJP67O6mLj0kHGsbvvnPpmpa87B0W+5wfX005VNcRI/1NWv7Cst8
	 o411gMNrWbivkipWKbWyXl5fOl5D5APQiC/3n6+hGI/TYASradE5ndv6OS/YRPRXSn
	 mUYDdZ8AOvfPG4+cv9tqN2u5dYJB6gDUTTLaqCIRKlBvjMbyuPsAdhf2T+OPWInBOC
	 QuDSZactweOhpltD6V+F4l31cROuCzBoQV5I6KB3NxSlMhDwEzj+nvOV0DuLv9n4Qa
	 5Se6Fog2aTKdE4GufMIuCnXFSLjnl/a/28y4PIvrsQ1vP7lj61sPpw98LRNfP72DOA
	 w4x0en9Lom2dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA4CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095507369.9011.14512904210495805624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a005b4c3e181e7787e6090ff691e4f33a878b1bd45e2cf5d9f57519cea920d3
Date: Mon, 08 Jun 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780955073
