Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3529478F26
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777802854; cv=none; b=WtaFBrDFPAWrlGF62umKJgpL1QqDjpooV3fLl9HkAvDv5mdEHrnnKDo33dKjQibJYLGCrWXhEFAiunh5KoMc3mQICo1KIGH3/c9x3PcABmQ+4IRyxdnwmqf+QjBe0RegIl0MtHXSufJ0us1a0R2rN5OQHEzrUvM+nBMj2Kq8pgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777802854; c=relaxed/simple;
	bh=q3zVhwOy/kFniwHIgyazjqRF9t6/l73hGubI59TWcfQ=;
	h=To:Subject:From:Message-Id:Date; b=VZwDQO+72jR90PYiHf6KpimYmacqmxR3rwK2RLOXJlO7kLglzVfIpnKCBBzBldFksoevHIsVMSMf7qfZDiVPHhGSNVgF2kEdfW5MMp3e+yXdcRBDUp2mtt0XOe5IQQsnWwEr5SLP+UW3qFxi40SUt9h42pyFiB9RmTzO5lr0tf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZX3G+iD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZX3G+iD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD764C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777802853;
	bh=q3zVhwOy/kFniwHIgyazjqRF9t6/l73hGubI59TWcfQ=;
	h=To:Subject:From:Date:From;
	b=nZX3G+iD2DTYrdrctIGfvqQeP2fsOcX3XarFGujEe0BpAl/AOvFLKm0U7oMzEm3Pz
	 41MuxPe3G+Ft2b1jSVPFwCzuX2JamowknBhcrw1HeBUI+utF9RC3LXWPI0wW/SZ/Kf
	 YevUHcW/oefw8iik0B1sc1tbIufU0j9/mUZXmEM9ZEfjwYGIwItn6XL3DiBYObz/+O
	 zW3ImaEjSuwaRTlOFL46T5AlmSpjH9w9PTxlIOa0E1vgcaCcb2AIegxywtuRtlzNFH
	 jlq1loafGxFPjT9ZLpGUSf9fg+z+sGOxY3kvEQdOPsX2k7jLc5jf3SvAzlhnvQtvpL
	 jCimH2Pb6iDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9CFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780285368.8266.10762080734125910572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42289ec4d74bf3828e2680b8da425db5c9253b9c12599c93c6e189bb75b3cb10
Date: Sun, 03 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777802853
