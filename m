Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4BC28F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722138354; cv=none; b=f0zqeIxR/ZpFZPrbGKXKwhoxlAZkjgqAaJPL7U7amEgOrML/P6/M0h2oAPytTF3yrbwR3NS1kWsIwONdca31dPrqXIBfn2xv4eHjGWYC1cEiTMZbAObuwAC2T5MjqSpowBjfEi+Z0doOSD4zC5qGwzW86vanKEOnYg8/+vgf2qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722138354; c=relaxed/simple;
	bh=gDx7+P95wvz1qsB5WlgSTZBFufwQ4fCJXw4GsmNwAvE=;
	h=To:Subject:From:Message-Id:Date; b=g7toYtAPAfKzLrtgyl6r3iCg5lTGa/FITYYwZ+t/StUaKTJxdNuZU+KlGSHJ4PPlPsM4jTdYFe4VHXY0mrKkvSIo+0qddd/JeEpmiylyn7UcC611WFcgKQxuI9M4Ty999GyvmbowV3ZHBw9H8y7oalRy2nr7GiO1tqMPKq4cGT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OL9U0BV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OL9U0BV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BE8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722138353;
	bh=gDx7+P95wvz1qsB5WlgSTZBFufwQ4fCJXw4GsmNwAvE=;
	h=To:Subject:From:Date:From;
	b=OL9U0BV6nbqdJFByTe83lxezxAw91CgHDfTbMhKHzwNLWoa2xW07jWOOf6WqOj+/Y
	 VPyqDs/W/8xks8K2ipBfOkrAGsDlXOPVTddBk8neJbNFPVwadzGZPVGpImJ2OLHazZ
	 4slCmM011Evp35+sHH/8F2sCcwACtS8r46ELsGslQCuEZ9KyHTdKN/mp7rGz1VKiZB
	 LHXOItCrn+pjvsqo1C/F+XYldG4o+WLC190Q31hpvKyHWJoulQMR7PYn79pKr6uSGu
	 is7tShOzsvCyYQG9ARkxs28xVxL9xUglYneSObzW/52zh3O0+RKqMWqek0cVHHmWXo
	 IfmB15f21Dgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D21BC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172213835361.10752.12209356470883087978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b43fd84988ea944bae31d5b93afe409b5b0f0dcff1c975606eed8285c4d67b
Date: Sun, 28 Jul 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722138353
