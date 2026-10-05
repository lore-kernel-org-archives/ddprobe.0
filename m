Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D029226D05
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791160834; cv=none; b=CSO5qCM8TD3hQZ4CT+8NIbByBxHe9jB1SftnF4tzqGGBspxQeypkMXdcCmbL4JOe15/U5C8NBKzZKUKmeQDVh2CbVPRjyyS4q2Ozem4w+6qtWWbIMlALOZ4miR/l1NMe1NyIQgUuW11z3jvgAY+GlZjIm2wsP+Qi4QknFuhbcdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791160834; c=relaxed/simple;
	bh=WMW58/ZAGh3GIYCucEI8d3LkqEt4EfIl2IUZpBYVXFI=;
	h=To:Subject:From:Message-Id:Date; b=EsHL/FCccnkBbHWCSQ1qtCWbTA8Q/E/67I3d7aJA9PnrBRCTH60pmW8t9rjN1O2vPGlSkfBLMHoxhs0CXTKQeNbloxPRLmCEyITrhxnpw143fq3zfEPEQpVpNJtb/cDeWgx4sBXXkpZcE3bwLMp0XX6/SsMQJVjW/N/3ABRPv/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHslXa89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHslXa89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B21C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791160833;
	bh=WMW58/ZAGh3GIYCucEI8d3LkqEt4EfIl2IUZpBYVXFI=;
	h=To:Subject:From:Date:From;
	b=jHslXa89j9mI9YNSmktOWOv1wpUzFrTvt8fGbMjLAFPGzXrj4Jr7/GBYO7+YfKJLU
	 NpK/nNcJNpWgLJ7aY9WOpQ6/wunHabw3I1Ft+n96Z2o9aAGULJLWEOFbGZ3pNNHxo+
	 y03qQHszPXGOfnnt/pLZL0zOI7qaRQggfpDY+cqhF9CsOgGEBI3Pi8HuJ0VZxL+tkc
	 wHjy6DmfaEUEZWs9KK3Xnyu2wE5Sjdu5KEjY+vMwvs9k8dfv66dv9Y1P1Gx3QPUPTv
	 4U2Luc6Ik2K0LTUC4y38wKEtNFI4iFDg3UvCNpAYpgmwvTFqEP3Nq41zgI6e0YW/xZ
	 4se0fcpnZZ0ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BADCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116083371.4227.12127948988597564704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253e4e5c67b1b553840b98bb89e11b26fc0374ce2043dc0dc2025e74d802d72c
Date: Mon, 05 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791160833
