Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CBE1D61A3
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770915294; cv=none; b=WoOAdlMyCg0Esm0hBizfZ4JXDSuBzsuKsbYmXYioqpMFGLLOlGWm//YCxfeL6hJBZAMr42ueBy2SkUuILkW5B8afkLcr1/UGP/3IHluDqGEEFPkwaisvcDvQFXziS/IOtwXt2qNj8eexWvsjYkVcqu5Z+njRM+ag0hIN5XasOro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770915294; c=relaxed/simple;
	bh=MAZ/ofVHTdceNkXDf8DRyc1qAAcAXOlhG8VzH/WSifc=;
	h=To:Subject:From:Message-Id:Date; b=apIVCZO1LNj87IK5twksduvhIspiQoR1WMJ22fJmM8G98jkkRoIimfJLb3LgDEIYV96s9iGsvCpvDlcix/+klw+ISrQkCqlmO00Oe0kRX1TBtJMY56i6s4cxCoNMjSeLU+PSivDTDcklRyS5mkuurQMATPlywX3rWHiJElk7Oi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glhPI4cP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glhPI4cP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18B3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770915293;
	bh=MAZ/ofVHTdceNkXDf8DRyc1qAAcAXOlhG8VzH/WSifc=;
	h=To:Subject:From:Date:From;
	b=glhPI4cPatQBHR0mjqc8Kt34vollKUKwMt3kxXvi8myiNPMM25M7XR240hHGOcGiO
	 V44qQqi0mvbzbpplbF9N8KlNetOzAT8qydBek2t6PMISxDliQSbhaKpKg+V1EnJOir
	 prN+znDemhfa+gCwKflRRXJEhyrqARHRyJ2WK/jgJ4n1F+BhsH9XhmoJG8oVP+xZ9N
	 1PNMN6MgdopmqgJd4bBxjtN0GeZOGtFbIwIzNeJERqFDM87QE0PU9nNTm/QFau0/kO
	 i75e+VcN+45Wxzk89blcuWyoKYZs0o/KRlTmT3df4+kndCsMxrChUdYNAY7zM4+wAS
	 JMFj+7RMgU2tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD68EE36A9
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091529362.28207.14247807254494017587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb725d95d5ea9f8e09afb4d04f9a5d366622a9f04a478ed44923718592df7eaa
Date: Thu, 12 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770915293
