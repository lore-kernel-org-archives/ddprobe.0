Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB542BE043
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790452834; cv=none; b=ZNNMvU4CMo7zOLpDCkx3kRgR837lvblf38+hiIelYILF/swpf3+UBAE4oCedjgrORBpRvy0rM0ZmhgYr9WzzSHKO6SG9zdE5VIXzX6ZJ/gFolG8e4QFHTKkoBvrv+QLA5C7xG8HUrJ5EmUuaA9AkVg7Ld12yKOADH9LYo7r0LL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790452834; c=relaxed/simple;
	bh=+BUFnHLtwQTgZGWrIeA8xkcGCsb+LLiBmhEsyXWYjXk=;
	h=To:Subject:From:Message-Id:Date; b=iOO7Cc/5pT1xPUxO/tAl46AGhUjFU+W7V+H5lU3Otr+sYToWvC95Ebai2ji2na0DaADEIdRmclf+GX2fEun1OMwZiRKmkcRPaXgCIdE2MMsTYyfb1rHs9pmhCZqG3OrJBVoPoBrPEPnsGcPDmErPzeERVquvKy2/Nz5IoePY8J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoE7eHdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoE7eHdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBB8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790452833;
	bh=+BUFnHLtwQTgZGWrIeA8xkcGCsb+LLiBmhEsyXWYjXk=;
	h=To:Subject:From:Date:From;
	b=LoE7eHdKRnfYZ/WhdD8hVuRHDV3xfazwiFkKts+DEe+Xm77CLE/1eiynH6G6dfW0N
	 M2lMwHXGu+xBSn6rrUMfzTGUaSvt1z5Sg74PlvDViQSHaG3PGHBNA0rnyPTeG66VFa
	 7wNK76i1YhDkVvDTCg7i4UXuaposxONNUFNfZL0fd6ACCOB35HWTLcyfrPXuQ1DLKC
	 4r4qhNcpnVqDusPhMkLZG348Q049+h3+kLiXq6I0IyBANuTPFN589KkpAoUksme9k3
	 bJb/ero/qPbQsdbkwo3lBHNLCYYqMxgwGw3l5Ta3cCrq5420ZF3aDxq0P9O+VBxwug
	 dOsHB02cKHsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB53FC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045283369.4482.1406742832232362812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2026c9c10f96ca02e97717e6db0b4d509b946727bc142a2bfa2cc91b0ecffb91
Date: Sat, 26 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790452833
