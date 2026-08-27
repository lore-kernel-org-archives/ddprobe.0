Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9A836A004
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787847634; cv=none; b=Se6ji9mfyS23jACLky8M2+QiRKQgylgfJOC8tCk4rru3cVq2k1+eAdH+NxseI6eccCiT6y2VruJ0pawkStfrhQ2R+dl7StBDNBGEyKJfcNE/3vrF2VTrhznxP8jdfTSWj+XzizLpoAwYZOOjenC/Essq/KwLY+DPQFsD9OSUtMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787847634; c=relaxed/simple;
	bh=hEHpA+5/s0JFS1s0ownRDgwIBZC3TgiN+tf2Er8heQ8=;
	h=To:Subject:From:Message-Id:Date; b=duxKDlqiJ+8+jnT0T4sTdSv5qCunFTxHJyUB1VeEGd2u+qzygh25bZNkUxseDvpkIwpxBdFzOONKJsC4NLpQ0yauenApdVpz7vIn0XHKBhmWu/ywgGlcGRAXAceuISnfr08QOLcPZdbxv12n60eBopKUG+yNNFD63kG5KwiD/rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQv0sXRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQv0sXRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1513C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787847633;
	bh=hEHpA+5/s0JFS1s0ownRDgwIBZC3TgiN+tf2Er8heQ8=;
	h=To:Subject:From:Date:From;
	b=BQv0sXRclq8tpPe53puRPH9M3FcDhiio0TidPhL5I7tsbcxNMjjJuKnvZRItSDZEf
	 qWVu5GCbF7bRlVpWAspyueEjB23IkNi0sFb/be5pyfkjik4khAggPJ1doz+JI6+x/k
	 wXK1f3vlIMEU1wCwiC1kZZYcoBTaSRN6HJnHjPWjWjmtCTh2jekD4wu1gwmX2kduGS
	 F1clrxR8FkWSHQ3OnPdE4EgxaViGHvxm4g7d8ohucA3EM6pM/ff/n6DjfL5kOclHtp
	 hJMDNuYRZkFlq5pDOHP6Irj5pe9nOT6ZTAo64m8mJ2gN4QrNMzzPS+uIMqIremYwGm
	 jFrHJ7y5naViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA24C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784763370.14076.14824139619091039573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78651b0a640e356660dbc803ff3b4573cb14ee6fa48f02f08bc21a95b17241ae
Date: Thu, 27 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787847633
