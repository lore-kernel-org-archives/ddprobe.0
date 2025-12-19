Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E2015B971
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766154234; cv=none; b=tJa/tGjHmjgoyn26aBqyFACNS2fhqub+qJBI+aIQNHUT0oA7C5fGsliFoijb0QVKJu9R/ESafC6APQjwA5Vso7/JicJaCzAVZF8GxwK+7q9pMb6Gmx/twlTrsM1I2YAXZ58h8tuUYtGwfhZVBy824KApCkShfEmy/1tJaYcjNYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766154234; c=relaxed/simple;
	bh=CwwdF/kfUn8t8oXAIVpUwPz2dqPY512ngeJ94E344Hk=;
	h=To:Subject:From:Message-Id:Date; b=Xq+V4K65rzc5GMpNSM09ycShBT8MW8l+s/EnD1x7BHjMZIZY88VkQiVmTenNX15pzm0CMvXI3R2zkDKzaVvr3BDYk1jOMzFbnpU1zzyWSalvQRD8CZsKQwXD1GULs/jEn/OeVEFAcXz1oIThFqHibXhuG8p2rSqXXqBS8TaYK6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYSGCyH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYSGCyH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766154233;
	bh=CwwdF/kfUn8t8oXAIVpUwPz2dqPY512ngeJ94E344Hk=;
	h=To:Subject:From:Date:From;
	b=sYSGCyH70WJpjHm5IOAHqqXkoRvll3QN1XU7Av5a/U+vo3Q8mhL9olRa0TcRrT23d
	 iu/MMxDTd+6Nr71w/t2T2l2x4KjDrQXVEj7FWzmOwLCrECp4RdgPG33G3ceMTv5oGn
	 HaEoqq+BxzKlAWQQigEFRjZhtkvBvy8nTyf7I8ZXAYqdBKThsGX6pedc/GkVG1T2gL
	 srs2bv7pRdAmU0QfGy7DIqnJGgVRVh9xfkpEIWJ7ztyCeNuCGwmMWPVJxt8mo7CJYZ
	 iy4UQePT2JFSOW/D3NpUneKEaIkBf03a+uKVj0wP8euCaQ+9jom513SrpseF1llUuF
	 AtaOTin+LFj3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90838D74962
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615423358.18910.14684256936491233503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8dddca9327d180b77e44ee588e1779f365ea41136db00d013759f7c83859f4
Date: Fri, 19 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766154233
