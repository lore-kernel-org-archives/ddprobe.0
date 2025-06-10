Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9D32111
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749528594; cv=none; b=A3EWh/eAEfRvzjZjJSmVxCwcIatOGiiaXyH1nYbACLIa2JwDzkhRI+Iqg3TURQ3znWKr0SvhRROnxZ384WPhJ6DXXtfZPrbt81jzOy/fzoO34zcJEpdaqAv0GjAIG6PhKAZ2XS218Fje9pzMBp5UyVsnwFhsbi4cszkk7NvIcUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749528594; c=relaxed/simple;
	bh=Lj99JxB1zmbulwhGUx7yM9TgLVcMNW7vn+sss6snxk0=;
	h=To:Subject:From:Message-Id:Date; b=bQrqYzN1DxFo/3fhRJdPD575nL+l7BieiRNUz73R2gYzmaSWYtOVzKGAqKcIHy4lWck9AEwcqAzoFdlKVckxnB6+85Pw6wCdToPS2srv0/neToOuVMweXEyUlwDi5A8gVQE9YC2t3pPKcC8v5IZn33+LSBPpkLnhgXfhTNKnAXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXS/A196; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXS/A196"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC06BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749528593;
	bh=Lj99JxB1zmbulwhGUx7yM9TgLVcMNW7vn+sss6snxk0=;
	h=To:Subject:From:Date:From;
	b=RXS/A196Pus3uAh8qB/9dNdmPp5ijwQAh+l4ZaFAf0FRaQ7UCqUeJ02jt3ydjV3+2
	 bTQneckad7pXUU/hYyK8u1Ak8ydHsG9IhLg92lsiianwVifI40Z0LgmvnR9Zr78Tu+
	 8LLpQXGO89Au1HxoI+evNVH6+iCoWmTPafeEztWkb+JypahcOWDqdaUHPQ4mev4pHO
	 zv4DJjDAgZ960aibkmWHFAw65oxMYe1kcv1yO6v32FiLwb9biluZJ6CgRQ5heE4Swn
	 pxTNb970mcVdHCS+dV4dIHszlFmg94sAyenl8l/408yjFTpToi2FXT1VBnbqUKI5hk
	 5Mk84JUkqoK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C1C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952859358.1184.2215728456974823694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7d7b7640b3f39303acc9fc1555ea90a62b90567b0685c52b77300859bac891
Date: Tue, 10 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749528593
