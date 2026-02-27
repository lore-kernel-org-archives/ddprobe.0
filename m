Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232B826ED31
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772153094; cv=none; b=rj5d473D8iPufZnLtB5osLuAtBCgv1nRCfPF98vfmAa2CLVjaPlzsLDG701iyu9oOaqXZirOvnU+Dsrcoj4uE+8imsiq9miXJsHE2lUWGcPLPwmuXV9tUDfKRmhw/4YdkRVuy2Id5ORRYJoJtNsPNS3HvOo/8tfsnv1ucHUYT9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772153094; c=relaxed/simple;
	bh=erDRcOjztEt9UnUACq1Uu0kLjVtgtAqRHQvkp+Ahhik=;
	h=To:Subject:From:Message-Id:Date; b=fgnwH07TyefXldZ7ucLdYVj1mVKTjSGxTEqxGyBq/2jCgPqbaNRrKCPhFga4nom/OzLdVyf9Z23DSDYSATTvRouKlKOFV5szFeMWTyAmTE9LueJreTMiZ+h/SwWa+gBSjQL5foJwt+dT2VShGJlUrK0MwOOp2vj7zo80+Zz+QwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeH/YqgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeH/YqgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B8AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772153093;
	bh=erDRcOjztEt9UnUACq1Uu0kLjVtgtAqRHQvkp+Ahhik=;
	h=To:Subject:From:Date:From;
	b=QeH/YqgOAZmKuivUCl/QIduHHv8luHuV2DYucYGG3YBBg+Yx89JB8x5jsvoflaoXG
	 3KF0AwfSxFmUXLg458DRqdwKKZtUwE40lAMxif/h3PD+1Gekj2B97ebw53+X9VRJFA
	 0hI1sOePGkCmM3Jk2+9Lq0AMB2+mxSKZ0KzvVkblGXuvv9FYn7XCq/S1u+Z0M/IPLU
	 jgoRIcGyzblDuc51lqGgdoF9AneoEDFI2giJD9xWAtAI9NglltPcEevEabiG0rWV9S
	 bV/iIUZBPS+nWbHCi6HyHlDkTywuIU3v8GXwM5R80Zs0ymE/2Q5kqUt5e4TROD28YD
	 KkrweLb4yUwZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A57FFD9E29
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215309359.13354.17167677865737906968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6092d24f7cec4e4cd3b1cc2005318c171b7b05d72e38eae12326de11afe32545
Date: Fri, 27 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772153093
