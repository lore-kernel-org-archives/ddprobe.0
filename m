Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560EC3EEAD7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790659834; cv=none; b=ONBWmQqAEBddv3BEQZsSFi3Zdb7h9rYUJ722FwqSu5KtgM2946OAkUkVDhgaYjLhyos8HUnDzb+BBS8ADBfmuIKAcTVPM341A/4mkPt/uuGaPSzq0Sgnl0zWmwI9dVc3ouCgRL+4I5vT6UUGv88ieoIMfCu5HhOXPJbD2aG6WlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790659834; c=relaxed/simple;
	bh=ZhOQv85tQHQDH+fHLlHtV6zzyoY57xvNhneT2Sq04v0=;
	h=To:Subject:From:Message-Id:Date; b=scKyy/zqVM5X+tAJh8CTPc50LikN0AkNe0LfddwURDs2lIosTlR9SIY0H5WxKd7114Y2BCeVf69oFw+S2EjwK2kERQaf8zIgo4EGgkoQfIp+D3lYom67oGH/aMqzS09g/RiwdeZPGYNRAqVaZTqrS621xy/YD4LaYV7nFKkQYfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpnp1aqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpnp1aqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E3AC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790659833;
	bh=ZhOQv85tQHQDH+fHLlHtV6zzyoY57xvNhneT2Sq04v0=;
	h=To:Subject:From:Date:From;
	b=hpnp1aqA0hTJUbd6uPJkb2EmDvKXZf8cpTb61SEVcrIuFapENc4PR0elxTXf9TKvj
	 Y/5npUwhJn7y/BlruEp8nrzsEPIoww3Pz1U8IokAWjkvi9pW2JyB0Nn4NrD1QVkCls
	 aRjvl9sd3OYmlLTshp/RWo6U+rVc6sGrdhUEzR8HE7gumxnYP0cb7ilnQu4uK805G4
	 ot5v3tZV3ffOGESNIxpdim0eWLbEJxZzqGZd8RX4yqd7qReVfVO2LuacmRguFKbNhe
	 EHces/MjGmyOhdyV4Z0YVJrk0H0YoO2j4/0rRAfkcqr1jqPocvmGbDYOt62YrT4GTA
	 EqY4FNPimoS0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2419CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065983372.24619.10119820675699378734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687559c773378fb7ce13bcd0ed02b8f513d7a01f1a0c5f62fc91f10b81e8d330
Date: Tue, 29 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790659833
