Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EEDC437852
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791716434; cv=none; b=fDJ0xGm30/s50f2f99yhE7I5l9gvEROSnVwctdxxYuPv/Xq9Pia6OXVzpLkROjMkaN04fSCowtcjPRhvK3B7sSEZh46lp3h5Xov8Ny+b/xrpVWwXgh3XRSjLsYBnz2CIMfPvf4mMqlkSQws06iK6vCaAnsnKzzsXJdKTwXCG45I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791716434; c=relaxed/simple;
	bh=WSLMlFtjQcyhy85ZxdubXM2u0+W6s/ZLg+wA99VFC7A=;
	h=To:Subject:From:Message-Id:Date; b=IurMK+Qm57bIpwYAbuSCFQFT57/aS5I8Ei78AuRNxTJpURUq8Qhb2QwE0sLZ84Fq+1Mx7fA+kuJ69DSe4RydMud4vwXkBNof2DLLuN7XDAIyxbbG5G3NyOq2HMZpSK3yISGEm2tupx9ostZLTcZu37DpwGIS4qKNTTN6rbjan2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncpV7gxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncpV7gxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B2CC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791716433;
	bh=WSLMlFtjQcyhy85ZxdubXM2u0+W6s/ZLg+wA99VFC7A=;
	h=To:Subject:From:Date:From;
	b=ncpV7gxM2T00SsvvOepyNA9x0m9wxoqdm4UQ6xBBwrWLw8oxztUEFRop1BlvV5vA6
	 UxiPcP/1ezjUdbZrHDNVOTM3iXscyK/47Vo6QqXAY0MSdkKCi6yGnSd2IO5eIYNY2S
	 KMiu+Nxg2taoFuae72UUtsVOcDzFHmdW9+HoVP4tj/ktKe4dGnNgK7BT6Ek1RqKt9q
	 GPeLs2nW7Gpl78saLiIbhIv2+dNc0+A3fuDrYOOC/LLOs8F6RtPI9ptIciur1KvRgm
	 P9m4Gv3fMtxM140JMW8GkYOVv/sJi53gZol9+p1NCwMMqyCJAaB3yXzH7L0UNDgQR5
	 RCa2ZafcirdpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC816CA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171643368.2921.15624534179498839851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fed74876fa7f1d335acb2b2039f04e593ccc5ebb56e8f54b7df642d91b7311
Date: Sun, 11 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791716433
