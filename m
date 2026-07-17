Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC86034574B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784315314; cv=none; b=HbQjox9cCmPTfdkkcn9N8Jc+T7I8K85EL8oygAeOLlVtzNXfgpijtIEn2Snub526oJQWl2iSKmG/0QTGknrUUwYeLlGTNNz/Ga01+Y0+9C6jEQCdHpY8yU/m0bGZe8PTRlscaym1dNwJFrevFD6yBpx7KSBoy/+gmig0xgBzKkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784315314; c=relaxed/simple;
	bh=2M10kezKShovTTMmn+WCLkPHkuqyhzbgp1+Ew9Ns0fQ=;
	h=To:Subject:From:Message-Id:Date; b=qpdc21+3EBlAHElvjnls2IBXsLKj4x4YypFdgbyY1COOQzsLWu2SVeTPwwK7W9JvI4hDgFShCFW/1d4Cx/wqVXDwtXLn5taaZhjxLBqnhYbS1gzTcm5CaJnSlj+4yiWXp5mkM3DTSR7l95ATz2SOBW5jFWoZoTJXoLbuXpyJgzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxOBe3s8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxOBe3s8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4CE8DC2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784315314;
	bh=2M10kezKShovTTMmn+WCLkPHkuqyhzbgp1+Ew9Ns0fQ=;
	h=To:Subject:From:Date:From;
	b=NxOBe3s8F1fkLXOrDq22k9r4ywPk84ymi8o1wCddU1T13rSrCKxX3jPMC5MlMiNpV
	 nTzJLO2FpKODxKHfVT3JVSi5fB7r32JuHOCeW2GS7P1VmYZQpdJGwxyBleBOtPqoLY
	 thfMTvEoCqtyb/wu3f73smyWrr2KCNRC659SWsDKCxTVLw7Xn07L0/ncMSyrZRm6o4
	 E2o+soD9bmtRcIj4MwHHEX3gGNpqM0O/VZ8MGeAMyUknhC6iv0rwFm2EBxhx43pHXx
	 obpSbiZRcejWCeo7fEiNMvaSDWIvNSti0sQ1TkgNjZcbJZMMqAdpJTyacqE0OLispW
	 tuzrdpRhiXiUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC1BCC4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431531390.10365.8261096402256641875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e902fdbd57fdc149b9fb79d62aecf93268a830d8f67e853930c95b975109c2c2
Date: Fri, 17 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784315313
