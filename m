Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AA1337BBF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769151235; cv=none; b=pwNo9pe34ceBP1VuaJJWfhiquUsKKwEEtY+EMMTjJIADhYmwM7kMS6jdoTx95yVogugCReYigGaSalyAoNGrojPi3A1q+ChSy4tI1ZcZEKogMxKTHiUvrrVKfVDgWBP1NT26sU3eT96AROX3VVN/sQLiqGnf1RvfV7z4ARuK/k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769151235; c=relaxed/simple;
	bh=bbh5JzXBuJ4T2hGJwYSjWLI+g7yDlJC0/ujZVIIhGWA=;
	h=To:Subject:From:Message-Id:Date; b=UMLOY4dGAP0qmSFcPDWpjbyXScmFBHRPO2S6FBT3HaK2TxbPlO4Hz04hRK3Q5B1KSmZu9HF3iNTLzjgMB2NM5itV7F5cLDic9aRqbB6+TPpIr5OS0xgwBUWIP1lJhH4cCNi7xpX51Q7prZaX5WBfnZgH5UeKSNDudWyu7zcie6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b14I9a2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b14I9a2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE9EC19423
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769151233;
	bh=bbh5JzXBuJ4T2hGJwYSjWLI+g7yDlJC0/ujZVIIhGWA=;
	h=To:Subject:From:Date:From;
	b=b14I9a2Ny6LGq/CXC01LzrpFUiaNp7k/g29BD3KZEsm6dPCN5fRDfHDVU9ZzPm1Kk
	 yNtgWOc2NRFNf0q13JZ2gU6UeLm1I3RNunu69kVVOlZUdv8K7/CNvTb0awiiJOPgu5
	 9crIWNUvh2liF59DZDEoS9pb3OT9MBWtfCff3M2nanDLoytWcLDcYygvdL6ws10FO3
	 a1uKwO4To2viFFKYqKBziSq0ZqJ0FMYSuf6iPBw6fPoVFkDwouxMd6sM0iveOf8xIG
	 YUwLVO5JIICsoi+X52Hz7aTzT3BmiW7IzMe7XZ+v1QnyEGzBBucoCF44/i1Yj9MG+2
	 xMV8EfNmLT8gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4AED625E5
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915123363.26208.2311167986247901528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86142e55645a64847b2fa5466626d52cf4e9f5629a4f38abde08fa5b8c9a503b
Date: Fri, 23 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769151233
