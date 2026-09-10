Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B06835BDDB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789029034; cv=none; b=ll9qorjZHG3ptGlztlGBkOSpcG6j6jvHx75PoPciQSSZKu+fAt7OvSgxhmFI5DMev3pK/oWB1IvJr1NXi6w+arpmfxULwKlB+drVw1fRBPy/XrzihxhpkYoEBH9kHL7N1AFqgGvnfeo4VfzZAAN+iAqTVcZxOxGDI8lHm9fZtzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789029034; c=relaxed/simple;
	bh=wiL+O7z2/ecipZ8nAGMaDXyQ1U8mA5sgFcmxr6NYXuk=;
	h=To:Subject:From:Message-Id:Date; b=Nzzm0QGxZ/byJjsq3av5o0MBcPT33L/B8k9/cXSb6QAuaAMz5UGYWndrJwMK3BfmHnnIm6oUbxt+wfhygP2zvu7w1sA23sqWckCA7hXylr1kWeSS4Z9XEUuZXUgFny05U7VJDH22mnvHDcHF0AotTxIgrciXT6Vugc81DBe7k9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwUkhk2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwUkhk2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0686C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789029033;
	bh=wiL+O7z2/ecipZ8nAGMaDXyQ1U8mA5sgFcmxr6NYXuk=;
	h=To:Subject:From:Date:From;
	b=kwUkhk2uYdkBhQ/l23I8M3Cbtq8gJFHwV2Una5k+7cLHNuI9RAapmFtaiiIvA+DxB
	 08PYSO+yukFTvxeoPS7b++tWRccHV/ispIwv5csLvuV+u2Jd6T16vcGEAjpgzAWj4H
	 2uJ3QXVmfstX7WSUHpQfjZrBqgycl6OTxkerJBVmHRDTgfHKRdQGYiKQPkq5b1usR8
	 ofany0P83O4qZi1uY6zo8CI55ra97e0IQV2GadbnNzgcX2zFG65qkU7tfAaODntJJ0
	 dtFM7dNLVuRUuufxr6KIK/dyqaR34OEh+Pmp9ynz1sNqoFEcFADUxutK3f2G9ftHMM
	 F0nz7vJr/5njg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8D3C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902903369.16026.11236092523644062659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f3af1fb6244c7fd6ed00770e57eef757d88e301364ee0a8eddec002a5533a4
Date: Thu, 10 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789029033
