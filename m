Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1592A275112
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758266394; cv=none; b=R8taQPLFF4Sk0FTK2ErqCzSbrZdcVFdixGc0zMTfOjgdndYYJ/m0uxuC6baBwIrcZEi+jilQqXaRmKHc3BoCkqdSFQArlxQEnL3tel8v2EoyYk3v080IHBIGBIKDmRRqJSG7bP/pUrZxVwG+3sH5XUKO6K+Mr9rd+bbt44HV/OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758266394; c=relaxed/simple;
	bh=kqGu2u8tVcN5yoeBTCA/aKajwta2rQ4/HXVUdJbT740=;
	h=To:Subject:From:Message-Id:Date; b=IMsBRs08WiM6UoA3GWUaw4wFk6s6FABWpb7hV4lacjlkBrBITezEePUuc35GEHnOYMdXHG22MGR2LkkKfk+2dfBzvf2fuG92sVXMjMZjZuJSiF4IuXcwe6kFR5DjYYYH1l26eo+1GEWHjbNsPRiAoXbITLIfe1Auxk6/dCN4Wi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZ08k1Mf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZ08k1Mf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5800C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758266393;
	bh=kqGu2u8tVcN5yoeBTCA/aKajwta2rQ4/HXVUdJbT740=;
	h=To:Subject:From:Date:From;
	b=KZ08k1MfsBL2uIKLAQbLAz3c6WihCw5AOjppOqThd8W+02TnOtHjwdWjUtU/tcHQZ
	 RTvVxSQ+T5iT+0rEt8hONK8wsPrAnWLLFl2xKfgn8tacckXTFv1duiwLf9d2WZjrYK
	 FEWlgZOauYtpiXzmi5OiAtrPREx/XT0mOO3DwpFfK+2BR6i2VcBBsjtixUP75FC/Jg
	 k1BSXr5qqEzRwY68M41KVSTPVLh3tRgm+KevORWG8pkcDlmypFfVa/GC/qXzUd3AVP
	 1sf+nRVo/+idUl8OGY8aG9qUpaeeT03wIJazEzCR0U3q6TcZ73XrQwotBSZUhoGZgO
	 qrJoL/MPfxgzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E79CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826639359.8765.17049412656297268266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9671b56ee98545fca06307bdaed96f24585727530ac84ca5035f72679349378c
Date: Fri, 19 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758266393
