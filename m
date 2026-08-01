Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7642F3A785C
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785602434; cv=none; b=CtlVzDihhjztX4D6BucfDyEZD3s45N7Zr6rU4iohQ/uQIWRsXgO+3gCokEO63Ly79BOU5R9zF2VS9LHZ/gTdfKbpjn6QLEqgq6geUlT2CVXf4gQRwmsUVuh+S1bsXvtopXgTIMbAJoZ49LAGWKLkghZ6gs8eBROK5sM/hdhgjfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785602434; c=relaxed/simple;
	bh=el/Z6Ng0UU4sSjxOkLvzGyUcQ/o77J+ZySwPQSmpSOU=;
	h=To:Subject:From:Message-Id:Date; b=XlnA+DbZOvXBfxXaeeXvvZ++iwXgjlDIkN8I6sqJ+4eEh7V/xvlG4bc8ru3bTvG8ZbSB4MBPyWrhfAoBAVRBkURRLhu1unBIHlf+2HiPSD6tvM54kQiDhps7d7OKCHsMI6hDC9f4rLprTUmkG7zgio9BOWPsmhQvkX8wJXSL61E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgsNSQXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgsNSQXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AD1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785602433;
	bh=el/Z6Ng0UU4sSjxOkLvzGyUcQ/o77J+ZySwPQSmpSOU=;
	h=To:Subject:From:Date:From;
	b=rgsNSQXnAtQlXEZX5Czur0d4tUHSEJ6/RZ6J4r/F60O1anlP2LHaxEPgz9upB7dQd
	 tyqyCL2+BfA41vFRj2AWXob2Ogs36uV89nFTbT6YajuDApUtxr7AOWhiYNhYa+CXcO
	 /7kJeCutkfWe1UBo2lD32GCYrgC803VfbH+2kl8wU649UVsiuRwdndVN336JTiaRzb
	 NMVvbJVl77T0wWCQqxT4dEZIvDJfgyMkoX2OdsiXGfwuaSga+qcQHMHU06JO8tgpK4
	 Kki/W9CXr1CH+yD6H3aLTHTwRkn+LdO1E0rUCtqf64YBdUEb0VxiUx6qpw/yzGTm3K
	 FMkj20WK60OrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB824C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560243368.7407.3673480547357100978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf32bbe029ea5740cb0cee160f25fb918858958346a6e22fadafe921e29d558
Date: Sat, 01 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785602433
