Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB7765F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717482323; cv=none; b=LzVObLsqHRGTLP60ScP6gHv+df/5M01+OE9M13dqAe3Ofemga0ODNeK3aV14nbo6zx7NolS+EHwDhgUVQK9j9HQ2ogscoUR9mgtK6huY6Iva/OotFtqkgf7IYtX7gDQaCzPgcw69vJTGJi3TMoYeTLLfUukqIeb1YOtYlgnUzGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717482323; c=relaxed/simple;
	bh=we35GxDEQUgp+q1/NjaQbdgrD3EAqAcVAxdH/NsytLw=;
	h=To:Subject:From:Message-Id:Date; b=kXk2u4ZIXggQhlTsaMuf0w0rxj0CS5cPo+K72Elbt/2h/7akcKjqsTzJ2ZIIDPj23/StoV9hetwJii7PfGW6XfgvperExTBt+A8ETkhAPxBNv9k2XlsOD/oUsKrIXP2KKrAYcJEn/5XB7d6FBXdiOs5rezh1uHGES8wwFoMvL8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtEZF440; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtEZF440"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D470FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717482322;
	bh=we35GxDEQUgp+q1/NjaQbdgrD3EAqAcVAxdH/NsytLw=;
	h=To:Subject:From:Date:From;
	b=VtEZF440TW5R4yFX+wYxTlOj722EFfGoArWFLWdtp4qSQkFjwoarTITvJsmmlzvjt
	 GAuVfDYDOZadArcmT4DhHUZrotN702+F+wFgXBRtpcXGN0TBNVEWKuYHcTCbO5ncf7
	 7CLfoPjQ8avG/r79aXSKO/uqvsjy2oFx+fLxe8S/Ek6kK23wg8IZK5ex1mjXzFRefc
	 TgFSYAOZiGVt48Z64jIPj2A/9JZasO/l4UF09hk0HLL2XjoP93qtoaJyFjvVCXt+K7
	 f1WNnJocPuDj3aJH9bmxsKJZKBVkfOLwf2iZj4ipBK3vxHtwUuCiWoUDaL60Oc8h9p
	 PN3mvt2eBA/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6DCC25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748232277.8107.4339379747520584797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74728e1bfc43f5dd88c9eb38db6b5a4a56d1b2e3b5d6bc3b6ade969c9c39d87f
Date: Tue, 04 Jun 2024 06:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717482322
