Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9922EEE90
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780611274; cv=none; b=QCl0i2JINwydNB4uR0Uzhbjh9WadRXZqZUOQ7oHUAsZTN2Hp2oRtuTRBuCS3t0vEw/9A+4nDx9coNZO8kdA9GzR3x8XmDr5Fcbx1e7bQbzZImZXVYmqch0kC7rNDpyyh8ZvwGfHBZ1blbBXiOUtxyQB7950CEw2ZQ9jHtkLJYIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780611274; c=relaxed/simple;
	bh=3IHvsbxHtAZdcVNkwzXz68PTNKbJl868XP0KgNQH2BA=;
	h=To:Subject:From:Message-Id:Date; b=r+5vHoWixStD8moti7WVDM4UtvUnOI7pPwRecxhwWZZtYvQqP7+3ICsSLCQ2ML7vxT5YxwesjUp4mRGkRvUKpP/tDQ0fRy4JzlaePa0LnbfGloobfgaxUv/ewP/FE++pT6t0f8/Ajs/Z8BwS1UwKX2qYJ4KYYOcJJTK+gboWu/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXyAASeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXyAASeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CF2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780611273;
	bh=3IHvsbxHtAZdcVNkwzXz68PTNKbJl868XP0KgNQH2BA=;
	h=To:Subject:From:Date:From;
	b=iXyAASeT82mMB9hVFX9syl37HT9oW1wvZjV+GiYX22njQmIjMiI+B5c+eIdFcwxSr
	 +xl3ZIaJKBevbJ6DmWNtNfjyA2CgbGUKwIc5ubSqRMa4FPMxOe7D9Yx6I5j9oCwbsE
	 sNLAj4tPtOujc4dv62SAFok4PoXH5yDtQCCDUoWAZU2TTJw8DDWhMNDVwiKRf8eNcL
	 6yuulHZyjqQ2U/NilN2PlGDLeMlrnkFYxPhxonZfPKRvA8Ij9eCKanaSJqwif41/6I
	 WWqbgJbtf67UMSr53d38Ln8OBB+U784HiUHGjrgkuYTKe2C/QZfcSgiQu/9VCZAKQb
	 POa8myEvPH4cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA3CCD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061127369.13982.6670199472624948718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96829e32f82625afadb65548e45e64b056cda94f3da75c802525e6f843bb2b6f
Date: Thu, 04 Jun 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780611273
