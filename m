Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B862383318
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780483474; cv=none; b=gIX7xEJJ3695bmMD/kia470kn94vfkfv2plq+R+JWFQhxhGfzLjKYJSRVSS+D6WT71Zqlq/+jUzwCyA4jgpllwYgB2g+8ytDSxKDAkhQKRZ8VlPiyHz+mkSTXXkziafY3xqcV66LJ6xnb3PLFSTdF00Dxc7eis3nQsZCCkL5/0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780483474; c=relaxed/simple;
	bh=gi7lPJ1eyYfe0of4RztAfy7ErW/SB5aezZ1R+TIILys=;
	h=To:Subject:From:Message-Id:Date; b=HHi3LxWX8fuHIw4o3xWNXMfN3/MyvwKf5riUrbGUN6ZLlZAR4tGpl66pZRwJrMKLG3OV5SOuIt01AkQg9KjqQItJkZYXKj3AgZPTTHhVnqsvt7P9173qp0sR581yc/3TPqMQ0ZDsqTTLaHCb7wqMSsa/v/tvcZbxEoHNeDrhOgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwxPfx19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwxPfx19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCDBC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780483473;
	bh=gi7lPJ1eyYfe0of4RztAfy7ErW/SB5aezZ1R+TIILys=;
	h=To:Subject:From:Date:From;
	b=RwxPfx19hIQFB0AqS0ELrxV2lR0KILet/VnVHOu1XVSWxNCv4KPBh9NVzYyFQlQvG
	 kp1h2yaBU89MltzbJQR93w9itYa1ng6WPd/c7Sg0eLOf0mdy8ruJEHK+02eNHkxp+B
	 UmIzAifKc4Q+hFDg8rAANJYA05oM63b+fsRG7D7Um9pBiRisyrCt/5DnrkgTbXG+77
	 a8SegQ3TBdZLwtK/2H5efTVAiygyrj8tAdpZKwC0Y1vGqKYQXPsAHGi5DDnJ+A+ZAO
	 pTiVIfAENx3/6zvmf9LgyQQw+xrdt//CQ9oVwLKwUlMTQH/xFU/xymf4pLImVPilc9
	 PWK55jBwweuhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A824FCD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048347367.4016.8939563356050103255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07538303fcfca8b69150151533a13ee67ee09de13116743548cd4c865760fa9a
Date: Wed, 03 Jun 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780483473
