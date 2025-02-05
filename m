Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C711DAC81
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738789555; cv=none; b=EvBrQ+21V1+8oDjmfKjAKPQxQ8s8SzpKaeiIgq45NW1GPoFLQzD5LODhl0K4rObuh5k9QJgsTxyL0aOFqX66lMHKRUtvpLdDVeg2shfG/0JdyeYaAtHuZklC0M325Q6kLClxxnKqOJZZ/p9YhMt7ZAqzu+SicbwdHvokwtTbW84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738789555; c=relaxed/simple;
	bh=nnBJIRPJLDO7HKQc7JENHvjZ9G9dO6RvdpOgGfCBJZs=;
	h=To:Subject:From:Message-Id:Date; b=q24xQm0TfmTFSK7XLBuK3FBHEjhDVJTkQFt1cuJjWVfRkPGQKE28enjOPZ2VrsAR2/x8sVoCEikxwQx7bVS9Xq2qod1EgIFNIGPyN90CM4ouQaD0vqvwN8qRwlRzbfJgX9yinCy4aiF5oh8l/f9wn5dSw06E+knljj8p77RgPDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ni158q46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ni158q46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABE2C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738789553;
	bh=nnBJIRPJLDO7HKQc7JENHvjZ9G9dO6RvdpOgGfCBJZs=;
	h=To:Subject:From:Date:From;
	b=Ni158q465G1Nz7PmtDymy60stnEAfMhKnM+43B4jVZr3GBp/lod1Q6Hc5ugHIjzv2
	 KNZ/PeuosEltJR+FkCWJODI+3ut4uSulyyy/cqcq5Ht4MLtSON9jzQFtiS6Tl5WwCg
	 FldUO0KJ/GwgFEh/hmeaKFFNvQRYrGKr2eC7Fpf3w0+V16BbUASUxIesG/5WoXVROj
	 yrlvJTvv/+Z3BXYFQZnKR+pCrSU0RPF6G8u0/JfZgB454Ensf0QzjIG58cf+B62130
	 jkW2bN16sQg3gHXA8+obM6x67v4OuEb/CGUcET3w0BrAftfgdV/NccScpqNoaIig1t
	 sRnanSmKlgTyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6890C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878955365.24556.3636368998598979580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3de9f3a422e285dcd162addaf490aadfc30c2105cebf4197bc1fcb06320b495
Date: Wed, 05 Feb 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738789553
