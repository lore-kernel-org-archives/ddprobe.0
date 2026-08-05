Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A8A47CA73
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785946234; cv=none; b=r4QoAGn/zAHq+8ZgSbHbKAcaMC4RHjk/Pv1d8FdC9F5tinlekhI1NgrNILCS/YWxypMHottYdbNfK8vf9AM2Bxfc6qrYl6HFY4tHHED/9rM/pqK7m8VbKkNMEnf8lXFJO2eZq91Ks1p8fELOfFFV1ThtDCfFjvg2u4GE2G6BKdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785946234; c=relaxed/simple;
	bh=lkiyIBzNSIYanE+EtHJnrkeZAZxA0fkiii2Jf+xK7XM=;
	h=To:Subject:From:Message-Id:Date; b=mxWfxKEJrSCDi6O4pcQGTrKDTs5PdvhT3/KE1kldLqBRdn+Hrpsr3yuLVy+cz4CWmETqfxdy3FKoDh/PPTeZbZECmtI0KPJNdFrOF30x7AShxDkjyiep3BdXZejfjMgVUCR51ZqJZKj6Makm9LODLjvZ2qUhKjJ6Gi3hKA+ampg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAx74irF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAx74irF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7C9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785946233;
	bh=lkiyIBzNSIYanE+EtHJnrkeZAZxA0fkiii2Jf+xK7XM=;
	h=To:Subject:From:Date:From;
	b=TAx74irFOyyvqZFF0RU0Chv5RSztT1xqcj7chJN/TC/zb5zIivPkamdYnLKgC/X9L
	 VCC41L13c3zx2PyGeFOnnFWE9Rsq448q4AcWAfiaaptnAueALZmccpUHdNN5+UVMV5
	 cUoSfqZ5k+GABIA1Xtq459oezQo2nDEazHPdjMOV3jXNVQIy82nOQMSk1iFDEFyYEp
	 4HaG3sNzo+ymkyJWgqWm6T9qtALU1XKnmnfWnylKbQL49Ig+4YHYhGrNYSaR1bTR8C
	 MnH33hnjEuwHG9tdlB5MZhj9MhatzaNknY+jmJnvaQD/8qMqMrkQw9EeiL27bmOcbZ
	 u6TocUtq2mJrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB34DC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594623369.1034.7220604783475820474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878dbc4deb69725ce2b84c1c6146af59d82bb671f4b04a802f9f670d2792fda8
Date: Wed, 05 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785946233
