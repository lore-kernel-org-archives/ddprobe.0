Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E7B2F29
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724493354; cv=none; b=BrT3PutVVi6B89y59KLUDe4xJNFp8twvCtun+Sja1mmStdrSpUVE0CYAM36IBSgqmV4zn1AYhniiSMbuKtbG7whHkil014K+Yfp+v8YSySvHslJt7dVsNejL5Vfmk68kHNvht4br19zrhbITooJpYPLw+wcxR8tO7WwE8PYV65c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724493354; c=relaxed/simple;
	bh=tBg9ytQNQgUHYWRMHFP4VF+6pa3QkObitVMJf8pDCCw=;
	h=To:Subject:From:Message-Id:Date; b=ZjUfOCPdJUYvcQSuaPv1VHMgUacI6P/RjbsCIBP95yGGW2LeXcfUAnM7hzSPxq6nfQnxAxS3Apm5Nw4NaRpzq+0hAZb770jiFENsfS/TvC1GgEomuIAqZza7FzdS33xWLXe7kTvnMpm4TczCDoY6lE6pukqxma1ngc6EzsWhsxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBAjjZEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBAjjZEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFBCC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724493353;
	bh=tBg9ytQNQgUHYWRMHFP4VF+6pa3QkObitVMJf8pDCCw=;
	h=To:Subject:From:Date:From;
	b=GBAjjZEox5A0m5IsKvD36hTAZpdLjVw5lCFbJV5AeXrdJ9R84XhBs/siZWJGCiegi
	 m7Kk/+RrSeHjQY+uRRGU2cVGzJ+8C6z/ObJKNgjuywQ3zUKZiWivMmaORZNf0L+FJH
	 8gPacBMRdoIgwxxfBsO7fMj/PFVM3O6vMd1+vKCJgvLHqdcFXEgE9SZqp3+c1z+MS6
	 W4xppKcGTBIKZd7I0ANTTzTgIlv100pzApWkd7Ti57d/NChn/QZA2CkIyirpZ8rjwX
	 kG/r3O1fzY1DdkgMPzhCUeHliiOI8hcDbxz4yczSzdhHFYrzvOnpWIRWn9QHqy9hEd
	 pGA4xeDtbH2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9ABC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449335360.5902.2735612901497220420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd707b861ca9511efb28b52bdeaba8e2102a613629e972936b88ac9711634c14
Date: Sat, 24 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724493353
