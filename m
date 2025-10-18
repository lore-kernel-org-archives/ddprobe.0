Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31F3A926
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760781594; cv=none; b=O6ouV3oaFQ9j7xuFYWoqtWDQzaWDrh1AEcXYXaeAGAOXbk1EIyYj7tseuubIq6dbVGRXE1nlEsO125TOWdKPTg81QHjW/uzgnYn1bm/uXkoea9efC+HfrpBHLA6jlRBthpqwxYfLhZxN3BQE8zLMLcTtx0SP/4oSekAqF5ncK+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760781594; c=relaxed/simple;
	bh=xrQb9AZH0gyz5ZY5dTmTpT0fPh+Pk/PjIVm2kQD6QyA=;
	h=To:Subject:From:Message-Id:Date; b=ajPNaqRqHeT5y5s3GdkDLfgg3IaWiVOIBXqZD0Xr6onJVjrIMtRg3MtYvkoQtBkMN2XMHtXjUfWb1NmtzNb0po9pEJSuzvjxJJlzlRxvoZwfqHdLI8/2KAdKl0Ml0xXavgDQScXYFCj84MLIGW22TL+N7vqSV4n7hWjMzwlij1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDSvo5Yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDSvo5Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCD9C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760781593;
	bh=xrQb9AZH0gyz5ZY5dTmTpT0fPh+Pk/PjIVm2kQD6QyA=;
	h=To:Subject:From:Date:From;
	b=vDSvo5YpIHh13HnMxEkLx85luMruHyT/FKpoI7ZShZVCdHPh8qRA0BzCedAkJbygP
	 OXqycq8V3s+LYgu26wC4gVaUCijCjOeIQlCAGoKUSUmFl3vax+HayDU8zEiJPVQ0or
	 TxZPWV/UVZjb05bDAhFFW/xeFTCerojy95vNIXpZfct4PD09SB5m+xHBVallvauDzi
	 WUDDaCmOEoiQKYfofoPeDOvv+qZlO3EE8ETDPPBEsdvuFUDYA3BFMxBi5CFJUC37kT
	 pRTllR7WOrRVZw+qYl+A6rimWbBd4V/Jtmh9fBhlRdzl93CGuISr0k8Jxd1pJUs8zC
	 sGcdJNTHTlr7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93258CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078159359.14259.9003705894085719742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28695b5cbd07c41fe6bfc18ba320f46af80d95b98e22658bc1b89552c5911224
Date: Sat, 18 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760781593
