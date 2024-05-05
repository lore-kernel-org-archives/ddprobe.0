Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3D55680
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 09:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714900943; cv=none; b=HsHgWO2lBLv7IXJZuAZRZEfqzYMcFS8HWr7jXhEVVgKlHVKAwo4sa4tmvPv5yyDU/zpnFxf8XG95DXEWL7TUJ6yapCu7jb1JGhR326jbhknSPyGQz1Whra3X3LGtwKV5H8bgpfK7rA7JThk6YXA4QmiO4GzCVkMepRoRcwFesBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714900943; c=relaxed/simple;
	bh=rCYlj5TYCdturwFEnauc8vROPwNnWzPUKq1VAH9oIRI=;
	h=To:Subject:From:Message-Id:Date; b=VnnE7rI3QTtWO9CLOBHCMHB0huVqTmXwLIJKBHT3MwJIhhdoaA1ILX4W8srgWOLSVhRJqA8AUE2kqyC+l5nIpei2mXcGHyjVo/R3HrBHXjRj66vxAhENEplLO19grloORll3ChQfk5m6p78754cANp9Nln0pJ64X/cu6SZqhYYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdTZYAcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdTZYAcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D124CC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714900942;
	bh=rCYlj5TYCdturwFEnauc8vROPwNnWzPUKq1VAH9oIRI=;
	h=To:Subject:From:Date:From;
	b=SdTZYAcd0jnI7hwG3NxEz5YbqEkbBt/1vIrV99lcMLr0dwLbhRMOTVRJ+fyue0Gwe
	 nZxr/56BfVH2jC1N/jlP+wGOXt6SFHkciDBLknrj1E3I8v+OrI1w2rr/twRB8/gUpn
	 vyt0EtepthtgbYI+PdMDZ30VX/GUSBniHVGUjfqnxmNf9yPoqXfyidX+XJmY8YD7sf
	 wIXKQiZe2roGdP2GpNkPXtQ1/qSczezKVGKNk9xfa+8nrcXkRJnyq/pdH4iVyXha4C
	 ywyKCjci40lH/ho2g3eKqGrVZqUyQOmZiQrBjUTEb2T+DGq4z8oRT1W5TNOisyhTCq
	 d0QqmlK+TlpAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8A4C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171490094276.21093.13009102475000493191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053b4342ac02389521aa1656da8173f471fa9d89312c872504b14bb8b74eb985
Date: Sun, 05 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714900942
