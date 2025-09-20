Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D764D136349
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758350393; cv=none; b=cUpEzIiAYlTVof53EuyRK5PzMZoZV3z0bF/dLXzL2Xr8TmLBQrtL4QXmK8Nql2+qizIdpyh08blr0i8GiI/fqc11ugjgSMdXFGIhKf28KvZUqGo0tpPg7W/tUpouUf+bkkAuvtohmtiVtPt8RzXfQms8gZPzXsAVkxzxw/SBeZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758350393; c=relaxed/simple;
	bh=yQMyPWWa6f9bRoi5+M69ZTAAn0YHTL6034VF02EoasU=;
	h=To:Subject:From:Message-Id:Date; b=qv/SFhCS6E77vVEz/w+lyn0+U8t0OUBTQvHWWjcTDkTACW0rOgyBPYgUziy4DQdQ5+RmIae+Mm8/szRWAGvZs3vZSbZ2P0slBAbX+HHlw32s81mETNlebRVtGHfRIZWdEvRFcYOaNRA2y7Yuo7JWk6a22K5zcg3gaP8PY2RVmio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLPRVYWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLPRVYWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BCFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758350393;
	bh=yQMyPWWa6f9bRoi5+M69ZTAAn0YHTL6034VF02EoasU=;
	h=To:Subject:From:Date:From;
	b=SLPRVYWPCDTMjBQ6Yp5+n0IxC6TavMaUbMaqXJQPzwIJdFBYQf8XWsC2acgmaNHJD
	 LD4c2fWzeApxKBw61XfK9iSzk8mDKnXVTpvrNMYAygeBQtVQFS0zWZPYJK7StR05dZ
	 JHu0ulUh0e5KFBI/MvyqZy3MDuBniH1fZAPZMd82mGEohEJEs88gPXj16psqAJKYv0
	 f1PnaJLSH0chU/6+X/EAQ8weFgCMLfn5JXy5S1lb8+vrzAbUX8Gvoo8hb6h5NrOwDD
	 3LjxNjxXNhwEHCKadree6adKAJgznrZg0kXyO2Wv9z+DoYTyjgXWnNMko6I97paYUz
	 MDfIppFkyCB3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9BCAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835039359.12655.17406578838659522256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559f71c2762b9f2e8b4ae97f03b8993c4845b1be350efaf209c0e253c51ea050
Date: Sat, 20 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758350393
