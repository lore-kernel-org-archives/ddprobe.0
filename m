Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343951FDA
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734858954; cv=none; b=cJ9r+gHUMV0lX+UMVCkuc3YATZnhUD4ACe7npNzCMp9em17RmapE8HWf92QdPY0ZlT9ftRxzTvAJ5KYfRqULtpxFjwnJMh80+IXnEdATG2tWmkdYW62DwNA8TXrmQoRrADn3+OlNnN7xLgw+ramtjLPk2mEKWDjXcJ8dDpoCqHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734858954; c=relaxed/simple;
	bh=1Skw4bbVddia/pdThaCzu/HTu0YtzZQrFUEvUcLw4yU=;
	h=To:Subject:From:Message-Id:Date; b=dHWT0e0tTIO8GyMr7vGwFSF5qrdCTEvrlMhPrgwr1HcCzjTZJO6rPTYOZxHvdtb76epASxPagp4lnuqmYM8/S/CqniVFEOnd2ofXckZ1J02ZxNd4MFiH/hw9KNKHTS1aIbXcBK1qVsp2+UexnfMuFujz3YwZRH8yKSkaeTcWRaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZep7Ru6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZep7Ru6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC5C4CED4
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734858953;
	bh=1Skw4bbVddia/pdThaCzu/HTu0YtzZQrFUEvUcLw4yU=;
	h=To:Subject:From:Date:From;
	b=IZep7Ru6TSipiokMfoupWjCI/EGMBFVWSClKimY9yqAeWydlFakDF/ZobOSkqL6Eq
	 AdUXQojDIn9puQt2H3neas+V/hvAoN9ILK+iIaYLzTy99BuIRX4Eqs0Kq2XnBzNamH
	 smXyFBN60h2bvEhrgY9bol28cvm9Lz4pS9bpr1+LdBYMz0BDOIJuEmkngb2o5vwb6W
	 hEONu7FWHbyCKJYNNoq2wqhI4rNcBodkMvp/7xWEZbj94cyi/2rAgXfTNZCOJVa36L
	 8arjTW/LPwA+1q+4D/O/3Kh4lEY6F2XLkDWVYqXUc6N4BgApiG5yrMGwWGNO6k+kAt
	 aj5MjU85ueUTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE24E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173485895358.7886.9384195169279184101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb731689fba263532f34cb520a1b0414784f4ff0b909eb462a2f31b42ebbb0b7
Date: Sun, 22 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734858953
