Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A8E1494DF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729012554; cv=none; b=TX7rdu+Uq4k25g7HGzvzRP5bdmejSTqncUNsIn1E/NW65xYZwR92IkI/nekYZ3PI0S2fMlKDWyWGW8dWR5RDMsp+3ewZjzVBCGIjMyCMXctra6X+o2TWb/f9sEYQQbs33pRyHyaqlIkw2OqbKF75ZylYyl9n9QRQmm9jUsv6nco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729012554; c=relaxed/simple;
	bh=kpjI+ku0OYse2wMscmZeGZ+yyhs2A+gihIVwSEqnwzI=;
	h=To:Subject:From:Message-Id:Date; b=ZI8LdPEZfks47cmy5IciB9RdqUUqpsruK5OrbPqk4uz5wJNHoKonLqqJP2QP9PfwzBnSVQ6ZsDY0u9p1xtAGUdCfsy4BXquqqUoTWHXnvVVNlDCOVYzPfelJQc/rcm5cB83WuyICIFBFZyLja5iv1OTxIr7UJN/iyx187wBBBmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuGoBhu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuGoBhu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A13C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729012553;
	bh=kpjI+ku0OYse2wMscmZeGZ+yyhs2A+gihIVwSEqnwzI=;
	h=To:Subject:From:Date:From;
	b=nuGoBhu26/qR8bK0GHnv0AuOhE/I0eo0wTlYcsHWshzuYmHgDgJYQQ5UConofsbbk
	 N3bhBODupVdRRdRDCxL0dalLhGeUlPe0iEPOPBaK0CxIc4qFDywrPXkJkBcOO7qwnU
	 /QREG1X2+zd1OKkjnXsDodkpjsNm55NFC0troVWD/toCsnAucHAxDfDjXaVwyhyTgM
	 642fo17UTpPOaD35SizUXCv7STAVrHAJbpTxjgeThBClXIUFM6NV8E25UCQ4tzAPnw
	 /N6HFhi+NtO9WmwHX96MCPoFaVTjy8PdEmyqKljXaAs6YKktyDIVXAGm5kmVy13FdK
	 OXlU09uks46xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9451FD1D88B
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901255359.24841.2715608141667626866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba968d6c8be90fc7fe0ec47a79ec485ee75a58fafa1fda971ab123b8c246efa7
Date: Tue, 15 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729012553
