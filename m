Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4091581F9
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743125995; cv=none; b=sJE5ZeZ5gz5UOtO1Eve9fUj2UsJqRSqK6HbOFxadM9mNxVb+bm4movZ7pZe4pOo7zwoFC5995ueMM/KoJb052QnuDBSqSlfLLmU05VVy614edjmytWyFwAj2cWgHTOpUuk3ccqUb/brf/rgHJjl8ZHgawZhnzvOnb64r5nkRefU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743125995; c=relaxed/simple;
	bh=bpSSmwKh9lF1XeGnxnbs6OZKGsibP/3l3gugxfhLCAo=;
	h=To:Subject:From:Message-Id:Date; b=JpdY712jrvyX3bow8Xwht9me3lL4b/vEBPLXcc/sANh3Aph5K/EygzLA4LdLVAHK/7iBkeI6YY4l7akXqA8T6v1JkarXDAgBJkkxorr85zVBrDEtOaTdl2TtrHfgtVkOeVwUWD2eTYcHAhlS1jOymz9lc8kXs1F5AFicfXFIqEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpqZR7E0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpqZR7E0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB056C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743125993;
	bh=bpSSmwKh9lF1XeGnxnbs6OZKGsibP/3l3gugxfhLCAo=;
	h=To:Subject:From:Date:From;
	b=KpqZR7E04kVp2z7N52b+06UpjHklhohn/gk+k2YQygskJXTq7IRUZRQ3z0gV0xR8e
	 qlUhvKXzp3Mp+A2bpFK+VeoUO06fk+eqRMtzS3fC2cDl2gPDD4XUJkvRm0j7z6ORg5
	 I1ioZzVksvvwvjbRJSnebshGoUBar0hdCRfAyTngnMjSH20nXGD9qA1MkjDm8fB9Ps
	 /Ef3XsDlkwfo5JiVx3SzIn2vvIaef/gmhoPAjBxc9n2ZpxdwNqSPa3I/sY2opyKwZp
	 oha9TlkxDOk0aF+7am6XAq5c/opBweruyp8qWqwyZtDv23aXePYWyjR+jC3AraRNrO
	 pjKvu7HYPVBFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953E6C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312599359.23877.8709909312882200545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc16107179117ecc0bec00a86e6f2c776f1e946f0ee36731f430ff1462a01a6
Date: Fri, 28 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743125993
