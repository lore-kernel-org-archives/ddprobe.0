Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B476F2F8
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724623554; cv=none; b=ovBNICT6Nnb0tn5fIYvaIdTDU85z+GI0R1ch4h2NcctXerQ2rxp1TlPL3yAscYAx62A3dGY5C4EnSBVBzNJXhA6eB9z6+TnayDFe24xUtBhUHXIn4uSWdZGTn10CUOziYnt2E1cM75ONr1wO6tla5jSvqbrUozytZhZEg4QJ+2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724623554; c=relaxed/simple;
	bh=ckoFTVBGCR9YV4ZEl8VzqmG7Q6p5JYikQ4L2M+z+m2k=;
	h=To:Subject:From:Message-Id:Date; b=nIWR17LEE/Sdd2hU9KFjroDLBy9KrW9i1uc00dXEIiIULVkzcDDaLp9G2iVrubykI6BPLoIyG5KT1PPmQUt1hOYbtfzttg3Z3y3Xbq4lbCRLHXdnchUy8JEmQhJnMou/Hd63duzYuvniQFlWdLQO1enfy+pGFkaPF55U8D/XPIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUxp1r/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUxp1r/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ADCC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724623553;
	bh=ckoFTVBGCR9YV4ZEl8VzqmG7Q6p5JYikQ4L2M+z+m2k=;
	h=To:Subject:From:Date:From;
	b=JUxp1r/cd9VlEYrKKMRpwQqd+mJlPLYgdrqeFHyM6Sjvqcvbt1oDLH102h7jDcvh0
	 5vRpp0UXSStHhQCZZfUV11rgoADon0obvcywxSPWS/bZ8zil4uC9AlaKQkLvimCgZD
	 k17+TQ7RN9cfjg4RBzJzbwelqoj51hLVqiVvaFs2KC1rdHaqC4EpLxCmLJnp3rA2pj
	 0R9i/kebPGt+hA+88S+Eqwng4+Y/L3BHSPUdB6Lrlzz/nwiVUvq2mtVGwSdWfvAsDK
	 40GgQKuEG3SI8yjHSdg/D1m01vOd0PMGa5V3IJtVID71G1TINxeYBI7KBNV4mOkK04
	 w4LycsJLaj2Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95607C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172462355360.7396.3455570746903044822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2d101f25d6f48bac68d045295184ef78e1ff64b9fa7549c50434c258be67aa
Date: Sun, 25 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724623553
