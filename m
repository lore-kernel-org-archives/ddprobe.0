Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0B62749FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763063994; cv=none; b=kjcX0Axz40ZH80pf9jANx/sHCt+IR3RW3Mtvreg9sUCkcTdyC2XXjyh7ebeiN86fMffy/mIImlfzfp7sx9RpMLkFg8vyBYicb85mrpMLDxrYGmSXZQbYaWKufQtPOXxwW3Al7aEoYR/nctxEEvKM0CqXocRm8NmWCmfScuDaVWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763063994; c=relaxed/simple;
	bh=o//Jvu8EbGrCZx6TIrEQhPKcr0ZKvvCS1pplQRZ43JI=;
	h=To:Subject:From:Message-Id:Date; b=Qfsb4gUPzrmqClkmsuFDy7nPqx6ifo452X8ichD/t9yQ4H4VflECQ0RymAtvvlW401wNWtOZI7/75OG8qB1xCX88HfN13OCGHN4Ir58QBwYOTO7KVs4hmozFWwqrTndvWr4+WqXgyVbMJeGSZEsqnaX5v/KdjU4W2zwLXfXGihc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXxw9Dgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXxw9Dgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A04C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763063993;
	bh=o//Jvu8EbGrCZx6TIrEQhPKcr0ZKvvCS1pplQRZ43JI=;
	h=To:Subject:From:Date:From;
	b=sXxw9Dgf7f8mSz+2HevVcIYiFlxooJhBHdEoKIFejai+r4MPNEg/b4zLXmmPHtYir
	 qQALrBvB6CgMwKfGONcC/s74n8wncBLf9fGeukIMEZYBtGITVJJPGdW/wsUQNYo7BB
	 R/Z4E/zGWV28iKVdA33k88TVod9c7/OY2th/+S5k3Xpo2KVlPRCR6m4ruQfFyYk6ae
	 wUlZhb+aIBv3xa+fkyzSlCcrAn6sw98G6JAAOE5N5psiCunhWQFZ2Zx6G9gSIk81gZ
	 tpwWhrX6UPoYamkfKKkJP9EG7kU0B5Ix7XX+bvp4xB9vjtohI7SzB4HQ4DHgGLJa+Y
	 74fJwE11to9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E89FCD98D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306399357.3437.10108713382775189483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311552c6a6f274e7729b9fdb0e1fb573178988d830b87f517a750429ecad0c71
Date: Thu, 13 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763063993
