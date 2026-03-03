Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BBC2288E3
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772544894; cv=none; b=b820EwKcdXlM3RS0Rn/LK63NXWPwVh/loH1bnlJ96sOBLeAXZ5GUhPDNE+qT9YsV0frNAGa5xEq4BZyd7Rm4s0F1dV1l2S2swsnfNyCHHyoYWR8DPJ62bhNK1CK0fOa9nd8rbUrEO1DZ9H4UC9ogG5n8/jsWp8I17boC6bCfg6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772544894; c=relaxed/simple;
	bh=couI732mDduJuenYvSH553qmYkTyKPb6JlGFUfT7Obc=;
	h=To:Subject:From:Message-Id:Date; b=AwKapeZpXV8XOwKnAATPSUnJd6et5ihvLqZ2zCtVD0LD0vR5VvZuB9R0XZgJBTsog8BALIz7JzIe2SWz6k84OhljMYMw9ARM/zxSc3/9fgMDSnNkZDPJA1h5iS5ep9he9B7lCRAx6z1oyT4+hd/4IUZvLMfTpTD4aGTdgRM56xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZARXmaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZARXmaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F53C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772544893;
	bh=couI732mDduJuenYvSH553qmYkTyKPb6JlGFUfT7Obc=;
	h=To:Subject:From:Date:From;
	b=IZARXmaRE/TUHgZN5jKpduX83+oTDxOiHReUYEuNOtjSFbHsUfmkoMcfN0Z18NZ/D
	 81sawFPEd+AOhsg8hITjupcISsxfKKTmgKAHnEX17aCU/0HJ/AXgUyhsoP13DhRw+i
	 oOLoAbXU0Xn5uND2dG/oTTxkXWquYxidsYMfdW0Won93rws0msix+t4d6U3hrobDsO
	 GRu5C3tUJfVPXL4MHLwkAkOeiowXHsw+TP1IddcewADPWjjxS5WK49xtoOWW+ThKEL
	 6PEtYrQlKW5JKdlDqQA8pP6k6d4SblshCiOaiMhxTviGDF5psI00PGbnXqeOekn3PD
	 TIaFvXoWxgvRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0C0EC144A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254489363.7460.7043987229794244999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbb404f63570f7b720b5e85bcb91514c0e7fa9c02c7e46db0c8e4af74623b11
Date: Tue, 03 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772544893
