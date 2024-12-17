Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5961F8ADD
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734457554; cv=none; b=iwfM+Fw//27sl5J053mFyV6h0SZ1W3oNZ8ctp0Hoi+8XvpLDycDAdU0DKv/tVSTAFERg3aw1HWgq7+ZmxIDg95dGlyOWLDXA0Bep/EqHtdbLN8LTDAzeKnOMsTneSw/fFkzGDPA0zAxNhD3ZyyssQcKx4ptpB2OX2A904tzJUJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734457554; c=relaxed/simple;
	bh=PrQcJ5B8VEoWNRHmf/11CshtNnD1DPRE5THXyJ7c9rI=;
	h=To:Subject:From:Message-Id:Date; b=A/utEmdk0NhWUFdcIVxQ70nwu7Vs5hT2BxTiHK4aRDmgTDg+8EZJL9RpMxibF6T/OtmsNeACMc51WvLg6PY2dIJlsxuJ/aLm7Ui7JyhL0lnwDZ+Tsvt4C/kKM8t0zbxSOenCxMc/B3Jw3UxTnmw/4SO2QJyFtQSshyVMONPD5rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJUgmH4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJUgmH4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CEEC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734457553;
	bh=PrQcJ5B8VEoWNRHmf/11CshtNnD1DPRE5THXyJ7c9rI=;
	h=To:Subject:From:Date:From;
	b=pJUgmH4kwCNopa+kMIHtRZo2oHboKQXdpdxf1qPYIUClI6Yn83+lsb7v/VP2WWpzz
	 snfOomo7i4NHafSLZp2JTytmt50sjKLFzESExCjapiQ3QCrtyP/jF+qaeFdYZTqaMb
	 awbG9R74bLzxtzJbky/sRTi6gWAPT7BSKDflP773R01Wrt+UzEkNF3JmR3SEBMV+ma
	 Z0z/exhIlSmCCuahj6+yrmxhEEHuHtt/yffRlKZUPtclb+RkizIUpHZ8GNEGT9OqM5
	 KHe2rtjhHk0aADJ3O4Ldn5000ctpSN7RXH86tLQ8526RfXdq1GUofV39xXYf2HrKY1
	 B425mIb1u+pMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BAE77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445755358.20365.13642263694280371094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf44f90ddef1db5352d71570b9663283a891e6cef807d5e5c9cf00e5ea241b8
Date: Tue, 17 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734457553
