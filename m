Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211E7351C22
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779016234; cv=none; b=hhtU9etL8LW3Zsp7VLLZgEng0DI3QsPF/P2a6vkfataxLHhZz2ZhkuqJDmOfj0zUuivGGKHcHAGvsv02q/3Ta0/M87JT1BTAwIGz/f2rj3Xh6nMO8QB0dSISoS0VZoS7f42nWUE+d2kqJ1wnjRV6raAPMXhnXA34744xwQUkGU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779016234; c=relaxed/simple;
	bh=PfcbDR6O9IYsrq41mx5CRUrkGAdiLrN3symg06S1HwM=;
	h=To:Subject:From:Message-Id:Date; b=izujEjXdcBvT3JtjTap/E2plMuWZkbm8IIG5N4L6g7OxsVjVcVuaYiDXMuIbRa4SQf4AHYT82fBYcpGUO5sAVM2MJSkt3x+fDjGrpB8jH36WErh+Z5f2NsclqOUedt1oCvnFmJHLCoN4CFmuK4t6CXvEWRaAi7AJM9lVN6w9ETk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/AZO30X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/AZO30X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C405CC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779016233;
	bh=PfcbDR6O9IYsrq41mx5CRUrkGAdiLrN3symg06S1HwM=;
	h=To:Subject:From:Date:From;
	b=r/AZO30XoHgFZ4LkyNVptjdqJxFZad/Oabw+eeBGHD4LS3YBJ9a4308+tWf4WOJcH
	 yy0KOmbVU40wCNjGCqHxpXYoUsRyrhF8tb3wp4xZoTJzAOMtrbgeuUe90qmI+FZ1tU
	 9JF22DVBJ7jyruo3LdWptq3giU8tGjLhj247NsggeAmzCGmRpgCaNGR0iOyvzSSrr+
	 NssJKZMqRIxYeVC9PaQ6HANmcGpDCj8kAhUF3vaP4nu7oRPSazUZeGJj8MAbF6TJZN
	 wxkRdBaAmgQVXuHNsYjXeyU3eZggKG1cpZjp+QncXVsbtozllJaTPWNBHB7D69WTLI
	 OPS2KWpf/L2Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33FECD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901623369.32340.14134797462536122656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9315063b2a986dafeb9c7e60f6ecd0c3b06cac198d78f035375d613a11d6378
Date: Sun, 17 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779016233
