Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C05D279DB4
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773896694; cv=none; b=BI9ZEFeqZyfxH5ziq1B0NUwtnbPJ9mRUmAP27sikak1oR1S19YRHvrC2VJbQHCVfjAGiR0U0CStGWb5S3cD6527DXzGqhaOo5doYLeCddckcuVVH4UHwDD7xJVUJwrrQ5FCs+Jdy/OGAht7mRpzfjZWjtyR1iW4QODi95BJw8iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773896694; c=relaxed/simple;
	bh=FNc6ojYYnMMXtU4yqY7SIbkoZeIzeSlMhC3nakvc6qU=;
	h=To:Subject:From:Message-Id:Date; b=ajuqQ6UB3WozH9IkGrzYzmTiFNj+0MPAZ5letpq8BEQP/iuqnYHE6PuE0fzmJQJoSwwLUfQ5KceIkPCR1aXc/hrbJVE7HYzX1R3OxPZ3QtKRRzxqXdFAdV+UyzHBTvUjhYcYMcy8Fv8BSZrGdqz3I85V9ZQbEe1bR5Erm6tfrCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiOFNTya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiOFNTya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6DC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773896693;
	bh=FNc6ojYYnMMXtU4yqY7SIbkoZeIzeSlMhC3nakvc6qU=;
	h=To:Subject:From:Date:From;
	b=WiOFNTyatWFnHkuqYY7kwwMYQPfJ3/f5u5D06eC6ipha0Kdot6/lqfwghIfBP+69g
	 lzwdbdFnsa+pql+BXjcOgfklSX2KAaZuEMH29R3B2Glx4uN9kjU5GVNYRzXWpRkhqz
	 pWE1NtDB/cexwk5PBHOzy1ucglbKyRZMSIN5See0bkBgNf2hwsfsQLW0gikwY9U4CK
	 yKs1zBEfn1k1mxOcxP24rurNh3uKE7SXfVKJ6FpOMB3h2beddEDHLpUaIcX9b/EYZB
	 o02+y8Be4EKHXlPcnsZbAaZC8LHnP8KLyLM8JXIdcrgLGqxDNWh0OwErK386YPduPn
	 6npBy6Lg9RXzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D841088E78
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389669359.27170.10351043990018554199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1a6dff5dc7d0887cd46870e5e8ed02e8e2d196fb9a8382a6bc4f65e84e5295
Date: Thu, 19 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773896693
