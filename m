Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B2F1DFF0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748196594; cv=none; b=gdvDdQQwBZ5vI2p4Io2kQ+URd3RuViS8rMODyD2Jwhiqk1MKmV2IlCN/OvEpElGVnyzW+SUrV7aIkxImP9rg/kWCQeJuHSeP4yOvhhOKAfrJqiU/vCEqLhVbIgKDN2IT5i9TafEDcxRfpRquITTvRDPp4U5gDTPTtgOvmFAXJu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748196594; c=relaxed/simple;
	bh=kL7hXWsKwzA89G3XdFWlrTYpek31tQjQcUaOFqypk40=;
	h=To:Subject:From:Message-Id:Date; b=kzMEjjNIpPGOhRFvtCP7xgcD7RowkoS74lwQyh4tjuXRRqMODrRPZPjTQlPXRLUrZqyX2DMQktGE3c3IPsWSd5fFJoUgmYd9EOSqrv+pOJ6A0HbNj0fATfruH/NrwXlb9VQ5COCfQ4p8FxKpMq5AuetPcUoedLBcuFnn3sILxr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eslBjIJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eslBjIJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A8BC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748196593;
	bh=kL7hXWsKwzA89G3XdFWlrTYpek31tQjQcUaOFqypk40=;
	h=To:Subject:From:Date:From;
	b=eslBjIJk+2idBh4P4EzdS8BaQN69mlgofPuEhHWko3XZ4oUX+dpdBvfL13G4j7oAj
	 cDQC4LsdmwgDYTpXEopedAyUr9XrECeiua58dLCF3//ftzJ+/WOY/VQ83hSVPSaTTP
	 Vu5mpEGJ18bHLpwb6Ebtjq1S9KZ9iXSMBNjlDC19C9zsgfKARNSMqpYbDIsOS19lNO
	 V3Am2AwEyqcdiT+I5aYuNb1LMVokdu5EKo8cDtX85L3Y9KtGg75MVU3kcc8m7HqhIR
	 hY0WGZb69QahFjnUBqmFMqXOMGI1gFNiQ7nFFB5qbPsmhq9bIVY5baILnTNHvvX+NV
	 si6rQyyDxSBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA71C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819659357.3886.5110441256854833441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c9657f34c7537958fb1d8cfaa5a7bc7974a0c44cd9c90efcd721a836d47cdd
Date: Sun, 25 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748196593
