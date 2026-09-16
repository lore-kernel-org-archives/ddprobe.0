Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293C5450413
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789546235; cv=none; b=W265+y0L+xuvty/jJVaYjft0sOVSs8I7npcwL1ZHlaYq4C3i/SSC7J96GEOZw9WyI2rlbfkdAqjsI8/LlgW/oyW/OEWRpfAWxUk4ayrchpdbV3aW2/W8nv0fbU6dBseBVhoTUEi/EBCRQsr/CrII4O+UR1sQicLWVSSgm8cpyLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789546235; c=relaxed/simple;
	bh=f72Ob65RctflSkTPv8FZ9IooiKns/znK3MgveNQdzo8=;
	h=To:Subject:From:Message-Id:Date; b=LXk7FEhhNJxVuxOR/2MvJfQxBhzX+/lRDgh+OVPyisafEtxDTuuVi4PPk7JR2Ib2TOeNYg5GdNXVWRzIv3UzYjvPjMLDuCE5/8PNtc0doC1qSeJDgwH9Bh2qoH/kV9LjysJUijhuxWMLVJx1MX876SlqVwqOxhCFcC+ka3J1ay4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=on0u4wA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="on0u4wA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC986C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789546233;
	bh=f72Ob65RctflSkTPv8FZ9IooiKns/znK3MgveNQdzo8=;
	h=To:Subject:From:Date:From;
	b=on0u4wA7rJ0YDDAh0rC/GcY2hxDiFeo6KnXj3ZGCzF7DZlVGz0tO/3sWuoCTXAXLe
	 O/J+R5HGo0llJe8L+PreY78s066gWo6RD+AD4erP8Ukv9nFDV1Ht585ipCXjgUHZtm
	 wlgMci9gmUKoCiczJpbIsdDWcWeDNaBj4LsPCdSuYuWBKwEqWr5+qsGvc003GYBRbp
	 Wzz1BlF3EyIngnmGxZ5M5ZXN5/qzaj/sYCNeEPDWIACVa6IO1FCXDNDVrRfsz9kxtI
	 zGK2Lus2rqwMWAKX0d6Gp0nIc5GnyDnHKJfzYj9T69xE/S5NRjZbR1WmUJMIUkEbAu
	 sPDIzqUrgnVlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E19C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954623374.15363.6902762162938426793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5fb9d2bbcfb3cb4acdadd614eff646c5ad3669e126579eda8afaf207ce1f21
Date: Wed, 16 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789546233
