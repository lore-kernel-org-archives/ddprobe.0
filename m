Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9218B472556
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785859234; cv=none; b=Hlb5rIwLtPDgfM6nAONfe8YIiWzmFoXDfUBmdL3ALCyPoa8YjT7/xmmS7O0b3YJsOvV+jfR0nTBSZhkam4u4SmzTrORTnqo3HGnqeuPpZZgJh9nE8uBSHNs3IEoBnlZ257ueugpUZ8vV2e/U4oaGolEqTpgCEp+tsqqLsYSbk3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785859234; c=relaxed/simple;
	bh=W3T/qUGNKTNUzsUb1wPDDHamywFvYUdtauTj2wLGAek=;
	h=To:Subject:From:Message-Id:Date; b=K4hNZhqSE2y21PVtvGTiAIwhymrZbiT/CabM/x+jV6QLV+0kdFuKwbv1YHNGQCsTuf/7hGIFVTtbFrV4DvOAcbAYL/513oOq/BN8y+oPaDGiDpgbt4zeNavXwCrGnsbuo1gmp9p6Dc4QI+R6QwF8S19Pz2weo8rXnJFcrFYC19U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV8O6W+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV8O6W+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF31C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785859233;
	bh=W3T/qUGNKTNUzsUb1wPDDHamywFvYUdtauTj2wLGAek=;
	h=To:Subject:From:Date:From;
	b=TV8O6W+WgD95gIk0YBEJdgt3MhQLeMfDypMqBCOo8v+eY5LPkh5U8GBySwj1KMDDl
	 cZccCBcxARTYUpckK4NEfDPWP7Fx0MxOb8YfeghtStUo1NIvbvh0aVWz3e3cxbdMk+
	 TVE/TZpeT9ixIf9byqHynokt/rGJGJPltJAwNp8kdSBsMluAb3+5zgbJS5Ak5bSKQ+
	 g4z0TYqLD4Q7K7mCh4rihh6822/KcN2muEPIv2Iqxb9+f9esT19MMLYsyn7o1wdnjA
	 vtFW9D8oyhQD8eDelDxoS31knJT/Mfa4iJ6KsCCjK/R9Ds/r87xyrePqnJClkukGLU
	 41PVipYf+AtWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF4DC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585923369.12435.1159142509411317593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77526711f93141a4df864b888975a14dd316637b539667f9c7234f677f55a41d
Date: Tue, 04 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785859233
