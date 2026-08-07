Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667B52248B3
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786092034; cv=none; b=GyXQbG25/hShmsfsRPAiJelT+BltWOWBaUV8HePhRy2z2KfskW0+acgV00V8ewA7BF8ECmmo3DTZk6wFJkRIQ4Z9yO/VN6aTXWD6yLJnaK0G0htnVcWEVl6PeAb35wmwIl5XDJOwGY6iP8H4wPpGm+PfXfMSOExBVfw5Hpylfx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786092034; c=relaxed/simple;
	bh=50z9JIWpl887OR6QHrGwJP7kXgYsZH79xyMPHzunhrU=;
	h=To:Subject:From:Message-Id:Date; b=moUJgJgYv5OZ3IR0VWPdIXyvFRu2HIDjsueOXZ3j7yXJkFjeBlOJd6aOmTSB7aSCoQXr8986xUPEC0+DlLuPjpObLt1Afn4T/TiOhrUXhsArwGJ4DaE/uy5bBMAaTQv0dYmKgkBwj2YEtDl+QUP87eH4dOgXZanmT1ak7h7C7/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7CR4ud/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7CR4ud/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70E1C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786092033;
	bh=50z9JIWpl887OR6QHrGwJP7kXgYsZH79xyMPHzunhrU=;
	h=To:Subject:From:Date:From;
	b=D7CR4ud/2ADYXI4c1wX6CPPZugVjfy2RWy7MVKeR0TbulXv+Ah6gsMtlbmTSuX4TG
	 p7AnYexvfT7AKcRVw965m7dCe+mcxk88mN8poGrGpm5Nmm9y2A9dKmKeAFZbt+715r
	 vMlupQc8D5aL/9xPApL1//fJ9nhylax4DUUbVWr46IpsJmWHp0ZjQO4eMvYSRFp8ni
	 aaq7ByG6YuLf35bjlW56HTwWrB+e837DpgQsErF2NChSgvUmdqWgtZrpLmlzGPx1Om
	 6uclJMwW2HC5C+hkBrH/RKL3le2RP4S3/xkVkit7HlGGPkSQvuXq6rmF5GMSIjM0sa
	 ABGkJs5QNjCzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F09C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609203369.21087.4835751557180084404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f0edc1f77ba8a3ace8e5122d895b890f34ed3587f6956af7186ddd1d62d8c2
Date: Fri, 07 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786092033
