Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8F3194C86
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754749194; cv=none; b=sngYHW00eCwxte6BrNNjJdDDXDpiLjYxFchD6n1u3EMOuaUrM/g0juNq65sThPRD2r4TrRUjAm2M1K/bcGtu1BWUHAnFAL4V8/qvUnlw+JGoDaxaFa6w7c63nKp00EhcLypXQ1bP+CN6Vj8EbsoBs/JIEfSUlWgZw6i/SH9D0kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754749194; c=relaxed/simple;
	bh=QYVj9AJI7TTVB0LSVr7I8XOsFJVWG1O5qDVp8JRxmFg=;
	h=To:Subject:From:Message-Id:Date; b=c49nMlYpnALITzXHpwg7im6B/yxtuEfdD5kNiBDqNtF6beYoB627Ee83pWIQdf3ADUBsQbmy6IlFKx4d5QWTofZOaPnNbDkBZu2rgfGtSkS+RCt1ubhA32ALiwpusp0JlC4o4WkGYC2K57kzGxPTLgjWbku92bJGOWEgW7awe7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5ohgZZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5ohgZZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D41C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754749193;
	bh=QYVj9AJI7TTVB0LSVr7I8XOsFJVWG1O5qDVp8JRxmFg=;
	h=To:Subject:From:Date:From;
	b=r5ohgZZMuf/Zx6yE5opappJMSHWa7c+3X1ECYsAofjTMdnMd4qioHPeWed8sbDeA6
	 fmH8uwMRmM3qwyFCDy/MR0ZXs8/8ZG3xhxRMfuj8hlsbGpBPL6PMZciGTL4bLPjcy2
	 mCRARFyuEIudCgrc/c37DJtX93bqJKjheiX8qa98sdNdTilKU1++0lRh2Lb6alI1i9
	 UEASc60n5JPre6teq0IR3+7bKdaG781xYjSsfinQkKJtz6SU2Yo4r2/4EkyMrJvRAq
	 8v9eXYzTGujVRPiTReA4OmMi80D/M+8pGEf3Mw49wUEvj6bvn1ELwpOFOFs0oBD6d9
	 la98dtBTqlS/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B1C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474919357.30082.343531195740145776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cd950ebfabb75b55897a278e24a242d528c153722fe5a2b3e67f9995e5e995
Date: Sat, 09 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754749193
