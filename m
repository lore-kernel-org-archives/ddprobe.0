Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8C023ABBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771656894; cv=none; b=SMAR56aM8JWVhwyP0WtEIPLNOC83G+5MWMLPmSjo7+CjrYRgWT5Ik7plvZwXH+vEyUyCLaMljRSY2kHf+yfQ8cfqxbyKa63KpOwEgt0ZjPUK0QWPmZnPydh3zi0QIF0kOd8k+iaHw6OkM9XvDxh4GQWySWxPHC+h+LtGyQ3o4wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771656894; c=relaxed/simple;
	bh=J6pCNK0ru0np1N+ijCL6F/CErFpesmquedYBt+GmyAc=;
	h=To:Subject:From:Message-Id:Date; b=RiEPa5FnY7qG6efrKizZPdVrElzpy7adq49Z7kRzbVrp5XAsyHuplND3TgWCIHmqk4yStMcVobLBss3QaXxwMEWzYjji4rx1xd/dV6JoZ0TggipVpaeNZeTWJkX31ANJW9B7uPbrnrxtnJUIOTPpGSBZC0OOFHxxiNiynxl5jJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY2NVnK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY2NVnK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E6EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771656893;
	bh=J6pCNK0ru0np1N+ijCL6F/CErFpesmquedYBt+GmyAc=;
	h=To:Subject:From:Date:From;
	b=nY2NVnK3H+nelqamRH/K4wXX40U/ziC7cmVl9411bhNBh6k64guID0neCTamLRux7
	 gVBEHZtRJJLhfgYO1mRBP9Q+T0vG7WREGy67RDBlSSf4doJNppbe3yzkVomfg4y2Jl
	 ce6Cxap9OK0VSGpndIBcLN2RpNayFg3pScwzoZaCidv+o6nfsgc61jEH3UOtoEHDIb
	 aU8zQPn9w8EC/Kni8v4dsrDckk0Crdd0IceFO2af7As55ka22H0CYUpLpDlMJBfjZd
	 HpZXVocMHApOk3439qGOyJ3ePKhl1MSLJLvAenAbvftTa67txvKfZqpOZVOXXZIMqS
	 aUae8usxwpiuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3F5C61DC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165689360.13804.12336697800168183927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44fcab35a13e51659e422e0cb4890aa2f421c65195971c422a613086ca6f743b
Date: Sat, 21 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771656893
