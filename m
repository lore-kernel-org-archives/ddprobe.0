Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FF3310636
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768293234; cv=none; b=n2iWgOZHqUnHBxXNDVceTlqegCF9qfHEOpqrvPaIoIcL2hvjoJfvZ59EerOU12n/RyCnWYwEiCygZbAdOJa752I8lMMSEsQEul9XAZz4NI2hh1CwNxvR6gqEMnGsk+YPodimsE9T414ZrPCMI+cGEYBB9/VxM3KudEj8CqFv9eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768293234; c=relaxed/simple;
	bh=LkRxH7LmF+uMNfW+NuYcjKuZdk6XxE2XEM/MimkGsxI=;
	h=To:Subject:From:Message-Id:Date; b=T2/EuUH8j8rn/vh7tVgQvof/3AykjHyVV9oBKRRuFODyTRO6ghuXm7+CzGU80nqyRruwb9zPHlKqSiIcvvuVGbzgcys3TYvJc5TWPsFX9fTCS2ABHP1BnhoxzcQx7RiirduukScub0Su63pWyrp/jJQyKmj7RkFf/WTx4FbeLqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoJfl6xL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoJfl6xL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8B4C19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768293233;
	bh=LkRxH7LmF+uMNfW+NuYcjKuZdk6XxE2XEM/MimkGsxI=;
	h=To:Subject:From:Date:From;
	b=PoJfl6xLlUaJAhiX03w+VIxYn5O53J91c+kIb7oe9+u7gBRIbYCVll/2gtfqxuFga
	 l8QMpq29/+EE4NCQwSey/2gIeS5BRvOHlA91YRIrh+5nuir7iV7l4LLVBJw99oOwHU
	 nBFXsnTSZTQL0o+x/23Atsi/LwWHUvSENHp6RDK7QkVLXGY3/V338uMAzDTOmZjaLq
	 FR37FgaMnwoD9cJe+UFLtlWQzFjY5+727aL8c8AZSESC94Zs9z9FZbjij8RkXPYTP5
	 maVnIUDLezrie/uh6tpWuJ1pXn7mZO6X4AzrixXXdShQrxByiTLZKgNbTxIvF/Fwer
	 IQ+9C+QoKojgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ACD29DE2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829323357.24278.1014418817280171725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff29f142ba00aeb8b13c7e3fabdd98961f9df59a5b3b9ad5594ca2efc8ea0b57
Date: Tue, 13 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768293233
