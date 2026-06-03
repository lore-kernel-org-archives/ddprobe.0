Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B45F3A7F4F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780495474; cv=none; b=jzed5WykIooe3E84Y21xSw8Zys7cXUYcxgTby+AtPj59I6p0FsxjybKcPyCi2FVTgXsxRNOsYkjNe9XnugBKk91tBQ14rJppziFvGfxvS1ujahk3OZY+ypUYEGVLFiN2uE06CVBXjJlGdjUvGhWPS+9KC+GQkksTcbLEB72O1RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780495474; c=relaxed/simple;
	bh=Pou8CC8f2qy/HRazozbiAISSfN0wvgVlcFaUzzN7xaU=;
	h=To:Subject:From:Message-Id:Date; b=FMrQ0yCOXyjdLN2Uie31W0v8lBH+GSy2zuHj6BwLideaAgZXCKwCUYY5xeHmzcxpdJUwsHgzZextBWh0QqpqIq2XU28dXtlWXk8WixH0OIzOS+/QE40gcadVjgmfUEU9yrBN+xhS150YXyCIu70MFLc+ynlzwcx8GW+92QLYSq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbeDBtWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbeDBtWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F3FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780495473;
	bh=Pou8CC8f2qy/HRazozbiAISSfN0wvgVlcFaUzzN7xaU=;
	h=To:Subject:From:Date:From;
	b=rbeDBtWmB+z1McjsOnAXKlzHd3zp/Og/NTWXwT9vRwwyiQXNS4EwN1G7ySpyTppxU
	 4V7oq0n4M8o6Bsw92DS7FbkOrWzWwZSYOyGWl3Z0iRvqk1u+GAosnfzTLQCG7D6zgc
	 AbdikE2LopWbTtMEzO5ekLFQKTpFEwIE37VKn5++LIxLfTdntVr+DQGDtVsHSnjJOr
	 JwQjYSIY7RpQdftif1KmowVGUBoHiYDajLx1AVGVDtMbGuNdRAXrpRULC2atsaS6zT
	 XrAb2KpoREqxy5nWIZwuMb00MWCeewUNkFCRJHctgh4rDLVv9nDTu1DdKNBqSGEoyG
	 r+JBHELjmp2bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9728CD6E60
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049547368.30286.9341413670762654241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c529018f29af9db403f0eca4a8bcb8371e710d00a1d0461ca1bc1c1fc9998d
Date: Wed, 03 Jun 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780495473
