Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3271E883F
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731588354; cv=none; b=kzNH4sOTX7Jgag2r0BlejuY4MtIlWtmCv64fxzFWPREaaV3jd24Bfa8qiPzNJMFdS8kR/HARQWeBC2X95XB7X3SUsuOfUqFSwZxxsp+WGX/znyVh831bqxU8v1qwj4cmVctx7pelsYaaSAuLv3ICV5yFjbx1yhF48H7cK+ktwR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731588354; c=relaxed/simple;
	bh=Ec7efRSjerimvWdM2uOyavhh3U9UyTnUqeOa9EgMdig=;
	h=To:Subject:From:Message-Id:Date; b=TO9Xxw6oW7uWpu4K7p6PyZsDUd7jtUqTiFhr/Fo5+2DZul0WsQsO71IgzH7foOxFzo4chcYPSTRSQmEbCdqJxm4YUPvu+lTiUMw2WZJv8ggrGWVecAk6n49x+VRzNkRmotthzjflbBGnQUw7iEhdul+bd/XsSzHRrjzYGyzbDDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da+tHhok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da+tHhok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDABC4CECF
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731588353;
	bh=Ec7efRSjerimvWdM2uOyavhh3U9UyTnUqeOa9EgMdig=;
	h=To:Subject:From:Date:From;
	b=Da+tHhokJm/8mw79AeNCA4iUabT88sy82aRd2rLo2gyl88xdACagYj6BCfyxDmKpq
	 YddO8h7unEzGNXse5vEEXdRIur0kgMYOdDyWXI9mbspwzi85vvwGYFbm5fEGhihTK0
	 j2IQhvABfmzab2pWQs2Vowic95TU4K4H+EXNVpyXZ9G5gIZ8Z+2zoErDpPGWwAFxW8
	 /vLa0gB2e78wxmAb84PmeYJ3hQjs89aUljJTdxN2NtAO0By7R8P5ZHVF4ACGdtZAB7
	 eD5baxSZaNRvAkJTPuv12LlGiAydxksGUwsM4okSfEZNmoXHIxDWBhu8P8ESaVLrJI
	 BWY/Pw1UaI1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A978D68B00
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173158835362.2295.10380826334785563257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d763d397395f9157b4d7af7498a5b219dcccadc9f74387047b54e11a8170cc9a
Date: Thu, 14 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731588353
