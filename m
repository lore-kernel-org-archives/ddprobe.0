Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D36125DB
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725242754; cv=none; b=KVP9EidDWQ0OztZ5fQ9rZc2sDm5QJMfhFEVbV/+ENssMe4omMLOvhPuw6VQpttW2k+uwX4GJILnU75BSQtninTm6Uz3AcObVt3dFG6E/n6F6kWu6HDuZOCTwEJR+SVQumjKDch73DS1SWqTqt3u4bPqCPG7P7/UPmrj0t/ygTcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725242754; c=relaxed/simple;
	bh=eY698OUu5eze0tEsBCkU+A/CHUNE3/LN/PvJ+XthFls=;
	h=To:Subject:From:Message-Id:Date; b=VyyCPbo6RwLanvP6FeouGOIsuhyVAS2/I1g/wfvCPLwuF1J3ToDMzouz6Gk8um4Cgw3AXwh3IJBnbGrTpNyfQFCnv2Nk6EolZWRqdEXlo5bBh0oQHwfQsA9b/si3wEF3gUYQerLEDNODciQi0ytIjt9eEV897CxDoIW3eC0+B4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUez5vjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUez5vjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B183AC4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725242753;
	bh=eY698OUu5eze0tEsBCkU+A/CHUNE3/LN/PvJ+XthFls=;
	h=To:Subject:From:Date:From;
	b=MUez5vjHdoYd5S7tx91XfiHwWhvQXUeQkQ8oreuJ/lNzBD93XLbrMLrJe42uno543
	 k2owzULNFz+OlCIUFJCTcLVhIfQbhghujp5yVzKx5xDKRVTUqHrdYnm8QtrQYd+5oO
	 Sd4FM3w53ttnp/vk0OIyDSXwlfK5IigemIH+evwzXhYfQzzEt+w7E2o0VZcLy7N9Lx
	 xb2TfzGp8Jdm+aGg0ErbtPtV8XbX67Y3fpAddOsCQ/2L1Vi/TWbN8heMNrW0uq0dDO
	 Q+M6HP4dxwQ+5G5pQ1ZHafX+qOsB1qM5jFj15gDI+Jag7uN8UhXlCR0eVwYvN7cUDM
	 lKxpw4nxtwHJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5B2CA101E
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172524275360.9421.206427892716163467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2fd08e5f27a00f7f186fbafba9028ac2f7e08f6842c405fc8c4448fe563222
Date: Mon, 02 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725242753
