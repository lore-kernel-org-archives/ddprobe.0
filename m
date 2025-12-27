Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEAB7E0FF
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766823834; cv=none; b=Owrs5n3Ja54f9h+ZpwN5RlbOJfIvwJNlOqnzPTDWKvs4+g/Lyv93/wuBi0RatOwqVf0W56DOiHBH97tJqeavRk890y8uXUTZNV5ukr2MhCWwgb1rmjI/oP23/VpASipezshDnkaIWy9HsndILkkNFqvYgKOvvKOXcr4pBngJQwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766823834; c=relaxed/simple;
	bh=g8lNG98e3bPvjfs8mlM55HTWweT1YE46WwPtTAQXnGo=;
	h=To:Subject:From:Message-Id:Date; b=KUvvLV44kd0AGaqCaJssEkaPZsJ+BYv1A+3SNiWfU/FSn0FvaoXeDbv/P6MQXuyXs0wkON/vnNRYbtaMxgYUiXj6RRS/1SNE7Qokz2xYebuWB/ausF79tBPBUaUVdPt1qGPOJoKvz6f7junVnwnMl7Q8+IpwX+MjmsKnQzIoR5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRnb00lm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRnb00lm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC802C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766823833;
	bh=g8lNG98e3bPvjfs8mlM55HTWweT1YE46WwPtTAQXnGo=;
	h=To:Subject:From:Date:From;
	b=hRnb00lmEIJk4IIEcS/uyzG+LTfJb3VgMfSlvK32aMzuhsQqF17bXn5DU/EUVhZXK
	 RNXSiqKxRtwSj/N/dOEmrJk3t8omWRfarh5p+Yz7c4fFxM4Iavffs7pVIA9NhrD9XL
	 d52g45nk6kR8UgN6ymmV4L8yYq7NaT3XGSFuTZs+T2E6XNiQ+fNYG5GuoxJmMBMKK7
	 m0tF2tAcNWzcgHi+r0JcSfZn2HIMn5BfVmAjfirikUpRH+QS6YIqfNsu7VfjWyznuN
	 XmxeKWr4Jl16zgMGRtYxvL3s+269sEx97A5XGTznQ7I1wIDzIThMNUfIoClbo1mJd8
	 3NjEmvn0bwVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98519E8FDC2
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682383358.23416.17648879045941496756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98103271d8f23588596746181f2037c9e8b45699fdfcfa5f9943c0efeecf18f
Date: Sat, 27 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766823833
