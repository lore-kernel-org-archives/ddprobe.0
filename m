Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AF5309F1C
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762241994; cv=none; b=uKL5ffQVcPvXfHjcI4oAD68m6T/YPcVs75esP4eEGburvB8sBS5QEjXEb8zvIhuhNLwVXfjq1tZIq71WzwY1JVBAVOFzs6UzXVa13iAJFfN2pXfWEjK9Ou4CijhzwKvBbniYtJQmnRJfjg/8V/4kPbhmEJMojTlpZiGUEk8ax4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762241994; c=relaxed/simple;
	bh=jfLzqgA3pi+Jm/FBO0PTsbkaGCXsFSPsLrBmSn8x3Lw=;
	h=To:Subject:From:Message-Id:Date; b=mExR4dUZo2nfUPlLwC9mRFCNxotD5UILODVFKuYVfnJiPFAjcBlFfu7LROwv7x471D1R8DKu1wmnAVhFP04gWYcdGQby0JcztHqgel2lVAWqy1dlmhTsxFSumOtT9uxJGSAOp9uT+d73dVtqhP6D0teT3VFtic/YO/GtbTueFxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnSNQAql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnSNQAql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DEDC116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762241993;
	bh=jfLzqgA3pi+Jm/FBO0PTsbkaGCXsFSPsLrBmSn8x3Lw=;
	h=To:Subject:From:Date:From;
	b=rnSNQAqlKayrBUc1S4f5Lc+htMznOuo7fGs7/vwAj962jKrCVodgr9eTiwwJ16lER
	 RtCTLkzA78prGu6DARtqGeG3tDYVCClCytvjH+Nw7IPtRBwjohDOzqdcTx7Bjc2uiD
	 u1rJJLbjwYeXXGBESsGTlI/agwO/XwCVi/hcs7p+4LSFv2RDNHBmvgZPK/3ZPOt16A
	 rHyOQtdQk+92uWUAWmPaMoM/LA1jqocI8CZzLRRE5WLrwb6y4F0bnKijd4XMXSORTg
	 XGAF8iB9YXfUTkM7c2t1nTP1Yd8w9m81jzw7KK3NOO+gYT+Z3/+MpEo6DgYTZ0IcdK
	 zBaCKXXaRPRDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D713CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224199363.24145.14789851859998698766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812878003e73a3c49e2b16af2fc29a64f80aa3c4d5b12b42d5b9e4c3dab059af
Date: Tue, 04 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762241993
