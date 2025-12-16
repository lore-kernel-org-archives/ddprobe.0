Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC2E33344A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765927434; cv=none; b=n8nbl2grnlH+fWdyBLkhxNq3Dyfc8nhr76qz+lx8n1/B2zjOo69mSCW9UAOZ//9KlLp8CUuCx4sr6EyRCzh8TKWGN/eyn+TDDUpzBOI6q9tXJUacluTeQx3vByZvfje8GGJ4GYFqTKbNR1ctWO2J29MWHfCRwFBYbeiqNeOqktc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765927434; c=relaxed/simple;
	bh=HJ6t4SrmadIo01WAYW4RiPIVQrpuV8AZxmPP0e5Hw3M=;
	h=To:Subject:From:Message-Id:Date; b=ZvR5aCee7YElrFpEw6eB60LdFhVYab70Eqa48B2/snkYE8/Mq5sZ6cPF9RjEBgjngjdxxrLlWS37rJYDWTIghNGXlJzmM2v1U2k4Lpn0W5aBZm8ibb3JICJ7uPKwvk0P+HWiPgkWp++o4TN2GAXgG5jWpqMToLV0zQCov+hJSRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs5cnsE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs5cnsE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3991C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765927433;
	bh=HJ6t4SrmadIo01WAYW4RiPIVQrpuV8AZxmPP0e5Hw3M=;
	h=To:Subject:From:Date:From;
	b=Vs5cnsE1t0xoCFYMU5Fg2M9g3iToZXfape61BrdodZnv8qZmwL67I2TXwnB9w/a35
	 Ydj905KWCsHbb3agdO6zMbc+Yvr7dcc1DDLUrD0jyK9a/IWRJJo0Z5fIcdwfUUnpOV
	 F4c/EJNjNnaNsnmSKIH9lmuoJUjoHD2X9sKnBc+qYJt4vsgoPYHxKr2EAGTr+8LlU1
	 5IGv1oTI63csbJDLCCtymhmrzY+iCNmIRjbcI80h6GrDvXv/i7kTKTgusV3exmReYO
	 QcPNmJxLnKOEsxi4gwu5TzY26Q3r7wMqJjg4pjP+lSfs1JmtTRzTknejlDDOE2UB96
	 wGr4IZq08zUlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F2D64060
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592743358.11287.17510380428567278381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc078ff4c0bb28d4f6db9a6271ad1ee3c9aa0d1755e05f080c5b75ac085f23b
Date: Tue, 16 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765927433
