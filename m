Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517E5155345
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737321354; cv=none; b=aEiQ2H08O753VXEDOxp6wJnXP2Sl98Kevpz3cEH4/A3HJ+8ja/OJQoN+iG6wZPW73ndkK4CSeHgGF3hVCmCn3kYyeKdZkgKwhpKJniej3YNk0zEifvCMqPY57fQYmlMQ96h2+wgVxknK5cENmWFQpHeKkXiiNYOLDLzMvVwXyqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737321354; c=relaxed/simple;
	bh=Bu2h4Ms/93d8nvzHCByiyVoYF9Vm5mvHl3umsh5BPDQ=;
	h=To:Subject:From:Message-Id:Date; b=lqdoUpKxkDCvax4Bp02XQURxi5hAl5wGcp9lb1ks+6emZESR3tOdJ3jbrwv+lf/yGN21WndgJ6/aJKW8JZy9fQc+pLIlT+h2i+9RUt9A/eMLXxvClwIfAGVdwERPDvEuiGAW86ykoZlDs2zk2VKrQ9pJ/FcpCMZadkL9iIGZ+Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=istLIBJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="istLIBJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B55C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737321353;
	bh=Bu2h4Ms/93d8nvzHCByiyVoYF9Vm5mvHl3umsh5BPDQ=;
	h=To:Subject:From:Date:From;
	b=istLIBJ+W5yz5odoQnkDE6godyTJP5o2IyfjMdnCmNDKjxejv2OGeOnl0MtvK3ZyS
	 ow9nGscJEs7ANvboGxje3fc+OJzzEpRNfN+0tprmtO+tr5z4Im3KkeKoaLJFAP3i6m
	 17JGFTa5Uu7AB+WWp3Hl2l6JJHwwQyncKsXYUymOLNHjmvK/V2MrLWhN1aggWXSQCc
	 5K/GWkpSjRGfT1zTNgmS8etw0jAqCtLA2lVuXMPLHk3dqmdL8Ip2djLzXxRMgJO9aZ
	 OEFG5mJfsv/11KhP9HbWE0u8o8KTFoRcmPntxNxPkO3hGdwePTwcMz/rAz3nTgOM5f
	 UTH+zpjOtEdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0706C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732135368.10379.5293587082766624384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935bcefd288c57722e6a5c73e248f7e4821356a7a7bd0bba5f3048443f86c492
Date: Sun, 19 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737321353
