Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E942E18036
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710682097; cv=none; b=qrAbK5hA1qongUurvEFRCErA4ySzV0n581/mCIUs56XLhn0i/hyNYBf0KDObUgcF33vgcA/yvpriHyY9ZaMXQjYnNyi2LiATAyy+ZZ8w5lc+4mmDaYA8xy9NZ3qUOgBjNVf5jxE4Yr7sUufJAz86twK4Nsw7P9QJQWtzRq3YXQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710682097; c=relaxed/simple;
	bh=rpSAnVSUc9TuZzNC1qOZYiqFCJsmQQXfIyqk+95Z+GE=;
	h=To:Subject:From:Message-Id:Date; b=iX1teSsKexXevmmnmYS2z6KFiXmosgE4nea0wjqMMHKie+EtlstFzX/IOnNKQMT/eQ+NFXWshlo71EJQJGBe5gpOtDq0r2jLCjM/hQfbXjFIhgRmfGU6QRiWTkpwUq81Px5bcBUOSsO3o29nEyopOkPPW4pgfUmmrzpJWwQDiII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzdmczNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzdmczNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72214C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710682096;
	bh=rpSAnVSUc9TuZzNC1qOZYiqFCJsmQQXfIyqk+95Z+GE=;
	h=To:Subject:From:Date:From;
	b=DzdmczNQWxw2wscXW7dhc0A+RmHQkNpDDHthkRzsFgp722WlO22PGLDfhO2Efz3Yj
	 lSYeovbfLQhi1b7XYXTXk7REDMhr1ZxIUqnqdeSZ/ZRvaL0iFsWf9c/Q1J40tQ2Eqa
	 0NDwLdKvkBD00+67+REPDBxfxcV36xifxtyPK1No+a5pb4IV02yrB82+78C8NuWynW
	 GgDIjFwIqZzaaUCXQOvTHclGgxdwCxSTYOdh/SSUFRMwrfD1MW64QepyN54cLa+VfZ
	 wgmOXMjmh0OLfZMNCcJ2ZG2oPxstTAdx8btPVkgqq5DU8FnHZCt/d0JiKltlIdf2T2
	 UZ2JlFEQZo9lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616DBC54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171068209637.11500.15481766966788904740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e9d762f1c7627b26b9ac62359e8a3da0dac1743df8eb4ac43ef373239febdb
Date: Sun, 17 Mar 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710682096
