Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171572EB840
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756373994; cv=none; b=VRUh1Yosy1T31Qgk65gCrHt5SDhot3Pgn5qOtlOemJyqdFT9trZZ6ZLVb+nPKwJTiZcLqUBXK4KyRduwuu/I+0CFZ7+pFQPmqRcHlaTguUOKvxN8NhG1ryn4Iy3Prgqbilm4oC8NlQEqze3Cds7MR6psUFYBOciRak8C20ijZ3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756373994; c=relaxed/simple;
	bh=0l0bqWxrgj9gP4roLgyk87GBUvHuWF5wwnnEunT4TxI=;
	h=To:Subject:From:Message-Id:Date; b=k1jhp/SxEn2JqTeRqxcOUR/b4wN0j/q1cEKQFpAdt4vhqwv2rb1f9KfPnhww7CRhQGuXLoADp86IWfq1ZVx31isoUKw75CfoNrGOXxE4pmzpzz0s61QXbdv/Mbng2uCGy30VxkXc5dLPa+xgz/pBeHoZXKtYr9XbxTOj3neV7Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skAUIGAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skAUIGAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E38C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756373993;
	bh=0l0bqWxrgj9gP4roLgyk87GBUvHuWF5wwnnEunT4TxI=;
	h=To:Subject:From:Date:From;
	b=skAUIGAHzHOzxkVBKttv8wUqrPvTDTuJFEotIhdndNAWDSPi4s4CFrqQPuDBWLGUF
	 O6/ap+LgOEqwGOkwNCkgCh4snRTVWzTI7ejpP9prk/u1KQMtXE16mL+GUg/PyBz2Wa
	 Eq70e8/t+WCZ1r1PVpKMPaInDgGFcpBawfDdhW6R/SRrrp3PyLR9t7Ke7D4e3QDLym
	 c0vjkVxWALDXECNlCqSELHToe+I296RVCxeWb7H/rlryhscDy0vl8b1ffq1nXUMzXy
	 9+RiAdzWOUiGz8E4Mbjid2+Y9Rfj/ywS1fmRx02Gm4JO7sxSwyPNTAHw/29UMKobyl
	 44i7hebYPKt7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18ACA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637399357.3796.3767333603516320891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ddb1a1b1fc6d3ed35c110963e4290afffbcfdc02af39f7bd35c254f67e00ff
Date: Thu, 28 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756373993
