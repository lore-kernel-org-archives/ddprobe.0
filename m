Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6B02ECE8A
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754996393; cv=none; b=uXWjaomujE/oOpA/fvucnQbqiyEonEaknLolUIQQOYnKB0HeFXYEPkfRUhL38kjeDJfjAzuzK6KXY8Hzw9ghBUXkRb3tF037C/cqyY8Jrl9Nvky6yVnxJMBg8y2f4IZs22kKGKHAZOfRPJx/4HImGc7ssNkjHXp9VKLnnxdBajw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754996393; c=relaxed/simple;
	bh=yYBoHPx/sxHEykTV4cUIk+3iNq5JCFk3bFPLtvVqmOk=;
	h=To:Subject:From:Message-Id:Date; b=r3dfV4iq9w8CCc5UNtDDv3k4GINjFNOMaRs96MsmuXGeU/I4kg22dT3kR+qCksS3VIikKkqUTTnGT68Nj/9LlYua6U0ckVYMLylf3vLpDfvQCXWHvODKYpM2Nw3RiwDKYgN9niXlSuFoieiY+e/9TQLWO4WamFVX1PrzNrEryyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQV1ZlrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQV1ZlrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12ECC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754996393;
	bh=yYBoHPx/sxHEykTV4cUIk+3iNq5JCFk3bFPLtvVqmOk=;
	h=To:Subject:From:Date:From;
	b=oQV1ZlrQ7CBU5HDrtITnxu1xA20Vi4j9vicJo0uwcVwaYBZflmM/jd1JA0xspiZeX
	 eGUsHyjOrhIuU4dk+2ugJl7kenjTnsgGQfUQnfS4lhxQWUm+VSJuRE8TUAzZgnv0No
	 HTMgpTgvtHyILeGg8Py7Q/btp/2IVn3mBKHY7rbHFXopkLEE/8OiGW1s4kHgE25neG
	 yv+eIqM9LksEivEcW28p2Q6xYA/LRBrwqQwinm24HJjzxGNr50Xx27dMGH90VjjJau
	 /nXqCZVci4n8+Mh4gdj0RN7/TerrzTQbWXis9VcXmNTszVicvQJZOx4hpMrxCe9ql9
	 cX6Chf9piF9nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCECC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499639358.25378.15493112246365791560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a2c015ff94498590931d2e6f6b1e76ad82cfd4478f9a3ac005d66b303859b8
Date: Tue, 12 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754996393
