Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAE02F7EEF
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783121914; cv=none; b=sDMM8ECcffsiyDeTDlah/Z1IWbeWjdzRKGExCAR6rjXtZbaqVnwg8yKww6QZCngKB5AfsW+iaygMCb/vcj9Sa+xWZmgXJw0wT5l09Mt93JYpCZUb9ByALZvPWC6LhPs86IFO2vt3CJ3r+O9Y/rxkcvS2xNn8FTS7c1t120tdp/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783121914; c=relaxed/simple;
	bh=5eb4aBRrFl3zM3mqsEfpy1Nef83hFqPTNH+VAlUSZlY=;
	h=To:Subject:From:Message-Id:Date; b=XCQ2qOAi4dlw631ROFVKDSU6lFQevyiOiDNb9WrPVcTfjBL3m8RPuUzjnzmH/GJVAOlfvzRuAy4tequoSEjV6Iu7lWGv2YztSzpoxKqIM61lGc/a2vDjluiQ0H9cGeJbQo/QA75v8Xax8Ui/EFeY2Jni6kHIKodUoOgDVTBeNmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTfkTVCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTfkTVCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8E0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783121913;
	bh=5eb4aBRrFl3zM3mqsEfpy1Nef83hFqPTNH+VAlUSZlY=;
	h=To:Subject:From:Date:From;
	b=jTfkTVCybY9LBqCi7mqhb7ixiZX6N8qKVDl4R8Q60bexz1R9mLSA8D1gGQMOc4fWN
	 iXb1RBKkGFPMVcM34Q/lP3lo5yiqImRXPgnftvpfDAcFopKX+ZkBbdMcdgdatszvf/
	 yzz8v0u6PnShKW6t8sU6oGfOqdJVl16LXlhAc84mcUdONGx98wHZOo7J9Vs2Coa3Ov
	 Dop979HK6+T/PQJxShfXvzPaHLhi0GljSUE9aTkhV/70/z3uiN1Fn4VIBFEU8ZnGYa
	 gDxD8mitDex9ty1OxdmhaGavfH34PMDF13RA47Opvw2Xttt/RTWqt/PeBVCltZypWW
	 2l89TMVLEVRHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A911CC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312191368.19573.7483480398438518293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fb4d8da58b82fb186b860ac5f4c5a8562adbb3db3aee12199eda682096c750
Date: Fri, 03 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783121913
