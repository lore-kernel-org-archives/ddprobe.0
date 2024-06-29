Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCF91DA53
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719660263; cv=none; b=Q59WuqfgD+QUNXpFJ6UlZsK5/pt+jCjow+dstuViy3mXiTgFNcVCUv78v1SLAb7QlQ+t7kRhNTM4gK+ZReMsVonq5l2VVcJbX35E7ypqJPzkS/goOqr+Q1fJwR/14Qso5Mks9mmBzUihA6kDiJx48aPyOwXA0dWdqCQeOrJXOSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719660263; c=relaxed/simple;
	bh=7syEy2u9DUH8WUkmygneN7/hnb116FKAsZOFco8o00I=;
	h=To:Subject:From:Message-Id:Date; b=megnQv1hMD6vuYkexEnW0ZTq9x6E+Z/bOTDsndMy5C5QafUbQSbnjo7oOLENYJN8v3yUZtLVMZyv2Dq460R3SL+iTt5Ac+7SzLPw0jU9aA4bppYPJDtMSouwhzTl3Esppr5D3JvOSQmaUdjIK2E1+RqDgvJKBUkf2kdaHfywRQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4wmSKQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4wmSKQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA24C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719660262;
	bh=7syEy2u9DUH8WUkmygneN7/hnb116FKAsZOFco8o00I=;
	h=To:Subject:From:Date:From;
	b=s4wmSKQpUeraQcoSN5yBlp7ltug2fWFNC5bTHmCaDHRxaNLE+pxDqmoetl54J0m0z
	 7s9oNsrnGHByQcTVlmmWEsekL+/Dq18wbpLK3kQiPyC4sNFInDWu9YkAQf6UsuUS58
	 /gjE7iEbSYKizVlL42hIZEUI960PZkQ9sijc/XXolaEC88suip3ne1AN3+hvmEp5KT
	 33SrxE3SPLUHtBSdrzwtlm51qQHAy0F/sIupQYJLGkZlKykZxuvjxpOIWIKY1kYgNh
	 XP/UJjsls4nGnulkv3NLdUmO5qUcqpuxEd2RB7ZsI8sBXtuw1L4B7/N48q+shUO/ix
	 lEWixFJk1clug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEC3C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966026276.7223.4596465501299422747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd89532de81b787c201a7d5b60f693e8ebe5adf12ec7bd5a98a478cdc7bd222
Date: Sat, 29 Jun 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719660262
