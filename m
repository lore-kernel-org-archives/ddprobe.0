Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0856C1A6828
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776734854; cv=none; b=crElFEfTqMqsG2nqCDVbBmzvcy/dFnjPo0cVuTxhIwrczMr/BiKBYiQSj57/XoQFidF7MeqPvFmA+Jzn1qTtETGRfKiAxFpoi77ZKjTioxk1p9NC+7dwG8LeD+cQPXfTkxaPKBpN5i2XK2t8+wSNji9HEgKkujd3iVbRsexW1a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776734854; c=relaxed/simple;
	bh=hamNiMiUm1Tq8GB78RBNV45laGV9D1RVknC25cuFxx4=;
	h=To:Subject:From:Message-Id:Date; b=PyDlxokNiGM8Gp+GD4wWj8Lfd10mFhUfHPD7CYuldHhzDY6FtpUUhvTqbhUcopbCOM0/C6jFBBHxSv0YdS2WhIyZPPo5tjo1gPj+SX9hGZzHAZvCmNiWEPQ4wC8qBBUP66uCE1pDS4frsKEUO8c/3GY5GsRYp9dzb0raHKzVvIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6HAPzhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6HAPzhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A7BC19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776734853;
	bh=hamNiMiUm1Tq8GB78RBNV45laGV9D1RVknC25cuFxx4=;
	h=To:Subject:From:Date:From;
	b=E6HAPzhgwmMZICKIZqu0F9OnIpAHvkiHcTWXb5jzGC0pcvyTJp/AEDCpDbhPkY0HP
	 JkwpvSreM6+K5rDBIQBkzmjL0JHHpaBsd8qUMLSCnoY2Yo6dQY/G706s8EbmU5+g5/
	 jhFDyfzlKVXdGb1FnwLNboZZnLf45KU8qWqFTiEGttL1mty7E4P0djWhC5RYdlsjUn
	 3SKZDVpX11TSMn+BDVgAv9qWbsXD6biGudgfJLbH/vRRU0j21hsUpDrd5w2hDQuanZ
	 RPXCamoJn4LT2aIB3wZvJTgPvAf8LKjqsIq4gNdV4IS15JsDfSH4dDTi3eHVv8oTdC
	 xIiNQglckalkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9364F5A8CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673485368.13484.14596537120477351531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0087ab09d4baf50c8ed3094aa988cd45a00bdb49dc3c7dc11d73cb44b7ac9c84
Date: Tue, 21 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776734853
