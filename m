Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1182517332C
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761267594; cv=none; b=t7NfMm5zuXNXXbu9nPZCLfQG0MBgfBAy+r3I2YFGzHF4Mx5r5xZ60bqZesgp8hXZMf3ySu/CzcPS0GOiVnhjRWdIBBnmgsygbj1CHX5vzuhsX0H45mL6A+m2wsnwEnFWCbzlLFBtyMv8/PgwZ6JeGIEDJnY/4lBuY0j6WiN17Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761267594; c=relaxed/simple;
	bh=ildH50S8+qbcdvzmt63qfMS0aKX475LVK3e7FVVdgNI=;
	h=To:Subject:From:Message-Id:Date; b=IVNO4y3N8+Obr62cdVd1LWMj9T9cR3X3BNcdDee3q5h/k2hN6pqxkWJKiZcsOm4bXo6cs4Hbfg2CT/Ac/EkN1z5oTpFjtAMGxeq/fkCzxh4ERlcvBcJgyWqaNzRJHVQXKsWl2hz6AGQ+ly/NxqdkCsX8IFH+vuXgrw3DHsNZ20E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkfvGaSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkfvGaSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EE9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761267593;
	bh=ildH50S8+qbcdvzmt63qfMS0aKX475LVK3e7FVVdgNI=;
	h=To:Subject:From:Date:From;
	b=hkfvGaSz0jbB9/NoQhjQwc42DTkamGP1DbA6VbgZvM334QqqjvKF8fuyNg0XL4uxb
	 EN7GKEnm/YTIpiyCMM3lO225ACk65jAnsqWfGH2AeSxpjz0iUbMHA0nk1MCX8jKUHe
	 aZbyhD8ZzHGs520Es1UkU76gIB4SbF+/z/q21DddUdT/T6gwkRLyG2v+eq/EmurXdt
	 w27bwRKT3IlpHfu0qlt7IDT2Z5aQ7hcZMB1AAyg8Pt0JHYG1jwScV3lpRop/e8fqBA
	 0Ih5Qq8ovCHpPzZiusOc7Dw5iTyk92JiDlZBZp89dL6O44ZTs8MbmNX1aBs9R14gMY
	 OCnWgw4pNVilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B5ECCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126759357.5772.5888217371265412462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f240f50599ea69f4501fbe9b501ef71a390253cb30ebceef5b94d5d04b362e0
Date: Fri, 24 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761267593
