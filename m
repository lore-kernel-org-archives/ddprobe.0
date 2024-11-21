Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AB1230986
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732173354; cv=none; b=j2bzqYh9fMgVFNB9N2O9gdCzJevOCTMT7UmcQKDQpZjDQ1FpQUUNWfEJtQIUVyjOkYxBgoOXhidMHZusyUEQTVGLjQvBN3bufjGkrgGVv4PSMVtiGYSx5i3KnwQeDv2dfsd1ZkLJcLPxiFYxVpY/XM/UNwwggtmw+EvMUPYnm2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732173354; c=relaxed/simple;
	bh=ZCkRUca8IlCV0Bkzlr5ACz9CsErHBFGa88W2pi3fuMk=;
	h=To:Subject:From:Message-Id:Date; b=N5hKT/QhkhkQScTTCNrbw59LE7svoVFXOrTqC+3td9uZyoZIrMVstRqXRQ41vs4AR9Ni3vHrFSmZHctyWs37f07PANoOW6j01UN37tSJpBSXiei8du5CIUjL4WnZpsXuqkSApv2n7qZrX7Ugdu3/3q3dLHIyhBD1KCx1Q/19wuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfD9/eZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfD9/eZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C7EC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732173353;
	bh=ZCkRUca8IlCV0Bkzlr5ACz9CsErHBFGa88W2pi3fuMk=;
	h=To:Subject:From:Date:From;
	b=dfD9/eZHKJecIwv2htS7ZfbUfqvaHehJZMlbyJ9J3q4yuj4LZe9610PWpZDFpc7Q9
	 zwcDNlt50rRdJE4nmr5Mfm3OLbhlss+AzVgVj1YTxlgN64eXesvTIBmbei3W1Osw1N
	 FUxjsBiNkJLDkTAcEnQv/YENcFqVcLOvkUNX1ZAy5HiP4nWTmb6TqktkURUap6GoHd
	 y3dGtXZf8eSymm6VYRYMYOSw+l9gPXWVdTpg1sC3285vtgQeDUz80q4+o3ooe2fhxF
	 5H9Ws/ZohJMj7fY/U8V+hoPWWPQtthPwd/sraQ5y29HmYXB3hXfe2tz24fRPctHo6x
	 +F8YY5KTgAZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9718DD75BC8
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217335360.19818.4210368728244730266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f76730c4b24fc00c1f060741f4c310ce4b0a21e80d0af9e24e78c7f3eb39c7a
Date: Thu, 21 Nov 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732173353
