Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADAFD3271F4
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765922035; cv=none; b=BaJN6FamV6hPZb8g5mtOGofsyXFzXqtQcyfH1HDylZu/D/9NQTeN/XLnD7FKp/AmPoWoDxcKnozYEmKlkJ/IevKMlvCH600QDRwVcFfDJIEEDGLiYsvHe+6i84VJJbiBFYO9bHPSn0qUrUexwfH6dIvcSleEJBlDHS5OV3l5TZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765922035; c=relaxed/simple;
	bh=+RHKR2AmtLhuiBEFevnO+iEI6bhsPFP2Uy1rsXmXTAs=;
	h=To:Subject:From:Message-Id:Date; b=DQxRjXyc/dpEek6lDoFsip0Jt3NfMfquDjEf32B5NpqPrR+upSKUpmiAzQTKMDFFLc4zOoQ3zKj32BHEiQIugsugoXFH8Lp44EkJ3f9pRSqO3JefZk1w/09reIAdVzixASuBOwlr/wNJ5Q2YZP7WOAa5tSZQFvTACOKFkJRTRWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGkWS4rh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGkWS4rh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765922033;
	bh=+RHKR2AmtLhuiBEFevnO+iEI6bhsPFP2Uy1rsXmXTAs=;
	h=To:Subject:From:Date:From;
	b=GGkWS4rhQOWeJyxUvyyrgYvr3IVxwAYG5pylBXcrVxxY1qeMw24He4xg1YUb4Fj2Y
	 Dg0BsswjL8eTH2fwKyYkg/N+jsBTbpMEGqjxGFtuXpinjSZq6prk26NSc/vadwtar5
	 1hev1TPAQjKx9G+IQQH1o+jsywVwXL5TOuQkkQbr7dyimEd5nVF/XqEeNmViJXC+2+
	 o0scLAKQ5fCVSf8Jxlpub9ifhEsBeJ0neRimniUmMtp6OfrS7Rhg/Ja0LqQuC1Y3Ch
	 UEYJFuJoOZOtP5wevTWZvfArjP3GvneGAEAfTJFKmgD/IkCSis6xGufxmCHnRmLh6L
	 Giym+H0lgwtFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A08D637D6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592203359.16248.1314879835978887282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea607a5829a017ad57b6904dcabc11bb8beb102f483cabea62fbbc2364d4ebae
Date: Tue, 16 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765922033
