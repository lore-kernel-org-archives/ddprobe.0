Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025FB353ED9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772768694; cv=none; b=DfQFQA61rysJ5p0IccSOPsWZ4IbQjl/eWIa6vKY/rHe7Dyl700zpE7lKGnDuN3aSrEXTHKR/UoFuIu+6y23wMNR6mGwXmTNbBRI/396zLCaxZgfJTqgYyAinteeGOXPaL33I2eKq5re2Lan6zD93mhPTGU8hKpJq4UKy/bUDjxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772768694; c=relaxed/simple;
	bh=/HYkkBWNmNoztvawjtujuAXQa2BPg+s4+5xocVUrjwg=;
	h=To:Subject:From:Message-Id:Date; b=KYq9cUJ2XiO7M8OIPNhC2XKnXaust8YdDHDj7Ok4WiavV3V+KDoQJdaSDgB+oJoX3UZYO2Jyr0eYXBBKJCVhdCdmuGvLRjShAowFPLzNzlttTtU69v+ZgIRcoDOll3VyBCNw4RN01RoYwmAntZRkJv5p4C0ww0L6VZlU8XnVZKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKgUGOH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKgUGOH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A3BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772768693;
	bh=/HYkkBWNmNoztvawjtujuAXQa2BPg+s4+5xocVUrjwg=;
	h=To:Subject:From:Date:From;
	b=iKgUGOH0Y9NrdN+XGo7XNok2C/U+EsNCvnBQGP9X3nsJ2LHi6A8tJmco1RwJNrpi2
	 c3zn+aRsJxJTaXkawZ/PsNbR9pTbTB0eGZ867KDP+bojSUBiS/+nOnAnjRcp9Mwbrq
	 dTlqfwp4m6BpGCW4kEkA+HZgmXCMR+SBNw7PBSur693mUxyu07MSLuM1SIMtnGCsVg
	 HqDIx68CPh0pzJC45CU4E7IgfNECEWCGHXlSuIgnf3WiYOVxSXAjAKdIQZ0pxn+LDN
	 V8ydAB82H1q3GnL1qsgKQfRD9HVZ05dsy43OQIxUOmG1s08fAiM3a/4ktvWEtcLnAV
	 L6TZZVkOMJ2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99FF513F2
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276869358.30251.15447828577127768309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0bc0ae9f5cabe553a2eb3880ae0b6365741dc99f638b7181e8d5f07c6b45c8
Date: Fri, 06 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772768693
