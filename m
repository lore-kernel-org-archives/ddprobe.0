Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD8518637
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719345803; cv=none; b=ggHx/q6RA+REKZP7wWqhTSD6PBoK18GOSfZI+Z0fNEh/VaAN+WUkP0hLFzypsdA1OGUzlo0S7ge6jA80dYkBX+WH/uCoHmHDXZfBJ5kNQmpo8BF36YQgwA0zDroa/R32KZzuqhlZ5GEObVpMnk9XToV5hH5CRG7pDckI/ntqb+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719345803; c=relaxed/simple;
	bh=g4OVYgwNHnv8TJY5r4bLzER4Vv3+6ZyxEchEXIrV8gc=;
	h=To:Subject:From:Message-Id:Date; b=lT3uTccgtfTYiActC9Ct5fqpj7sFNtQO9/EZ8y+3vfMoKqh10b3J+ncM2Bu1A2Abma8/7Dr/JKmCMRz/6yiIX1aQzGmcBOU3yawZ4IIv8PAvmfk8VA1VEDO7mbsX13upMnPuuHKZ+LcIWlmmcRBacQ3nmLd6iuShdCK2xBFv1kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exc3XYyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exc3XYyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED08C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719345802;
	bh=g4OVYgwNHnv8TJY5r4bLzER4Vv3+6ZyxEchEXIrV8gc=;
	h=To:Subject:From:Date:From;
	b=exc3XYyYBzjbZCMuBV3VnN4JPCZk8yptEhU0sgtDClE9FPpBQjef98cYQsw+vNBvC
	 N34G73kbXl28PyOq838s7p+XKpNBonlSZrt1ypTccHpUP2Uw34UTfAdD+Wyb24VfOv
	 n5pCK9gccLtSca4ZAcDYdmWWyNqbs5tG40R/Y4BdvR0qdxf9nt8GEquBpt8YdgOh7J
	 NV+DxMR0rQ4EapvR/JVpRkJyykE96sgSdCSIiLmX3Aw5UpGZ2np/JuhwKvUCYXzPe/
	 Fr4Js5CGgAdtLe6DIVqitqU7m6obb5vsmQJJtxc7n0/7jqu/bl89xgxdppdUy+fReB
	 uYZckVO+OxdMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C4CC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934580281.13927.16480278077701364682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4ec009a4db94f584a4873ca7b77e39187c7b99e95c07ff960999ddcdf41cab
Date: Tue, 25 Jun 2024 20:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719345802
