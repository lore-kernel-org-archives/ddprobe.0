Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449291991CA
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738058755; cv=none; b=fd13U6e2SP9KUIyUEZ8PhPLWhfh+0jpmD2gvWRIw/Fk9mrC/gqWCXAPgOFINzJFtdwQa88RsewqiLgEnScVCaQYJhXjRCVI9oEqQsmKBnS/Um/Ycw0njTKWLkju5YGi0ixPyCblIA71kCGvjerUbKul804fykqAXZYnCZy93fTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738058755; c=relaxed/simple;
	bh=683a/bZCqWI2//SS3ASA54KNJOy3R0rbZ1xvlyrpu4Y=;
	h=To:Subject:From:Message-Id:Date; b=KZwVqMawbRfuR15PxOcmX5h4w7dXm7S4LDqU/jDiX5A9e9TQ59/z6ec5zmzc0HspapDfjnhMUntiMv6/kXmYwZ+2jSTq/IjkjAy3/7LmBvu2u4P/Q+BXe+4JIy9j1UGVOE1zAtqHgDw4So8oFaIhaEMFJQ0jA6N6Tk8ZdQExfL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU09I30p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU09I30p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7256C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738058753;
	bh=683a/bZCqWI2//SS3ASA54KNJOy3R0rbZ1xvlyrpu4Y=;
	h=To:Subject:From:Date:From;
	b=mU09I30pIBerMeHs2Tto84Twyb5hHp0Ffz9APuxxdRiI7IpEzYIuJ5hDOTIK9HLli
	 Tw0Ab1QnQbLzlgWJcQCJxBFGbM7lwZEw0x/VN87GzuhMD3r/QhfR4ePz9O+Edc+ma3
	 CJMTR1kkj6cvJp95oOiAeFGcDT8AcWLTOiy3xC6fHieQgF0mUwH1W+makXy9Mlom+e
	 yDqLCp1bQEBjqyOU5VQTx+2p0iox25PgNpPKfXUGbmdKrTX4w+x6rOXAWV2I/9rhjW
	 pOhQha3etlIPoj/EXUjOGx+46wZ7YBk0dsnju6J5T9b6thBgW/TgB5rguvP0TchHY/
	 hLHK9Oc2oOC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F7BC02191
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805875358.24164.5515560038972251390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50e1c7cd3670c50088e76e5a1b3968c9947bbbd17845a6135105d2b2e029957
Date: Tue, 28 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738058753
