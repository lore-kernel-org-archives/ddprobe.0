Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C9A2459DC
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760031594; cv=none; b=LtNR3U7jqrw3vlajnRQMecZS8JmxmDYYE81YRXkn7Na6MefI9LuWTD3daBm+VEboTTkbT1ky8Qk/1uTrHjO+NG4Dr2Bhhlof69m34BVZ5DOGsr7oMAX4QCwFRTk5YOinCc1IpiTg364RjesazYpyoexWq5hkOLgxIQ5Dui3xVec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760031594; c=relaxed/simple;
	bh=Lwylrf2asZ/fqnOpxnAxBEJkgRqZnz2WTGrfGJnIyE8=;
	h=To:Subject:From:Message-Id:Date; b=ZiLFT83T8DgI/IkSmCMPA1SOjUnqcgIhy3XjM4mTurP0p/0XmeEK+v/ieTRFq2pyKdhcmbodrbIl4mkSBy4QcbEBFvQPtOz9X4gbQ6Zb1I66/p6lp+da1jQeFyMh6Y3KuG3eCIDjwp2Lcgq7oA/Kab4udpmcF+sKzbVDlNpskwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLevIuE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLevIuE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91BBC4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760031593;
	bh=Lwylrf2asZ/fqnOpxnAxBEJkgRqZnz2WTGrfGJnIyE8=;
	h=To:Subject:From:Date:From;
	b=ZLevIuE9iyeDlz1SrEwNsGsukfD//3gZ5xngv2LNhjC0eBR1Ozfp+rUY8ejKEPB1y
	 QqWlzazJcDkNYKdtlPkLQjPShDPpz+wBJcOfSI1ujTypRIA8TmqMukAB0JRnQEIg4+
	 BG4HSOKJ5iRz0UW+VzdlAvVesyCuY/vQdBqRmZYsA43toNhaH97GUsn2u02ho+08QM
	 c+tbfm0pqhmHluBqL5j4xQt15eaH1ziESxBzwC28JkYFWNCRPxgZThGu/iUsvbvMuX
	 mBMJPV0CfgSRBwnwVIx+nA4TozLts2mhP3qDG6TQOpAkWxVR+cxrKCQ3C7nmjQ+gV1
	 re2fGwcwUNPYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95324CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003159360.7547.6070264371053361082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9872555f7a466763c970f4c62297670a19e55685c7f5ea606472cf370e7755a
Date: Thu, 09 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760031593
