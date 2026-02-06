Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1BC6F2F2
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770354834; cv=none; b=g2zePbSUrMDPLxjzzg7hTpJsTErJcQHbtRNqJ0oFHEJvgYr6e/6Eap7AxNU4eruVE7UNAgNcjdDvwOW7uE8pxxPiDqTuE2GVpxgTh+z8FH8oqtQpGB8J6JHaThEiXG+HuWWhy3iLlPPz3IPwo7ZkBQIUmo1g38Cf5VLb+MwFh7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770354834; c=relaxed/simple;
	bh=euEcfT3h/lpImzmwemNguybC/w5nh2JqbhMzvP1d9nw=;
	h=To:Subject:From:Message-Id:Date; b=RvPbKXBo+b2IU+XLasBijRzHwbskvCKIoYzXukfrKqOodpzCKXm7ALWva/92Rc9lWL7h+wLQNtmvMxdtbxWNMIa12cnzrMSRdcAb99AjBQGi3ynza5vYqL5Qds8G1GSYHQXFo1/bdiATJsn8ECHjX/dVc7WkcRZyr4rgSNB7zDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqAxh4F4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqAxh4F4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7675C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770354833;
	bh=euEcfT3h/lpImzmwemNguybC/w5nh2JqbhMzvP1d9nw=;
	h=To:Subject:From:Date:From;
	b=qqAxh4F4NsKgCR9c/QraBkA3dEZ/y1LRUANNntcOXFvO/ZRFsd47myavcbPOx+ewt
	 AhHY4wdsEq8TPvbjkSy/zckpG8vXTv84FZzfGdN2FieyGKy6fqfT2xl7YFtCO5WXFL
	 H0Pz4NWlSanaI2Nl7Ys4GdkgzZBf+2xe+MaPPTl2xTOTUUn1tXxqQgMJfLUMNCtqwd
	 a6fsOyr3vUZPkRYCMQvUTHV4sdLgcwbIk9u3yTLflCFYGMOWy0M7tgPm3vUnkolh+D
	 Rcp+rrtpgGd2gHHMW1MpJAq9voRpxtptQObivxH3vuXPdKwPdQ1CWH6nBM5S8i0j+2
	 aqvxGnnSUWDzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F3EB28C4
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035483359.16609.17251494355497790983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d86a6278b27c3996819957b9776f35fec4022c3874e2f994714d60d4e3a3d14
Date: Fri, 06 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770354833
