Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AE7420868
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783470514; cv=none; b=KmGkJtcrOI7gtbhitR3ZpU0bfqyy7dWN282D7fnzpmLkWvMpWos69Mi9uVTV2jKN79SBexJDA96cIdK3/lDDLnNQYMxEFgfujGw5LgVIB8HqS0R7kO96DT9wOoFYiM7rssa09+DG00LdG/iPzQVGT042hX9KW1G4fefa/As2nC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783470514; c=relaxed/simple;
	bh=BPR/HkNYhB40K40i41fX8eQKZPtKlVsmzgInzGoJg18=;
	h=To:Subject:From:Message-Id:Date; b=aDsJykBkjJ5BcmFw1LZcZJx26zHQjY83JputDFsIbOsQZG0KsF7qLVGcs4Z/jGiT5XZdtqJJ+L3prCzu6XhGZ/UCZWueXZsV+5ufxDuvstSnouva7AYiqoHm2GSVjjNRgByUfri57Ym/DvtTeKP9I2YYsoRo1ieYZMNAtqdUTbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goKvt4LT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goKvt4LT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D158EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783470513;
	bh=BPR/HkNYhB40K40i41fX8eQKZPtKlVsmzgInzGoJg18=;
	h=To:Subject:From:Date:From;
	b=goKvt4LTwEh5M1pEXXsMssmO1XFt1D8xUrQo1mXcrsUamBc7SZRtEjW+NxglycZhz
	 9i3JCq4z7xDEgLU62WahYz38Mgxn2koDLOstSmiY4X76UUKZz3X7UhVvoCWwampaND
	 oCFVOGopZovvbjJCjlkXlqy31HORlumTK7UGGsJR3rtnk74aY3jcWiPcLo9GJ2OXjL
	 ur5Eguk4dtRCeRKdKcrOxRc4CsqHhA6WhUCbqGCxaaWZgLaY+lOdOguovn5JeoyWJJ
	 VDOkv0xVcPP0uM8LrrM85anS0ZyOPa5CtE45hNuvc2GFA4XVBV8pYA4NP+14931ZwN
	 ZOblXJNEloy8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE45AC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347051370.5340.8884278262321251431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3930d42362830ba1b28a29f886e2c11738505541fba6bf65c550651aa5026b8
Date: Wed, 08 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783470513
