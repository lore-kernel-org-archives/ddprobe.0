Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A662C030E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775879854; cv=none; b=YITRfP4X0DSLAdh6JKnJj57wZkGwSuMx+gygSkBGW57Idu6iMDxS88LIJhyjP4kgnU0TemhTXawZIO+xZTAmMQKH7n2weuza5v2YkcmSR09lfDxEekmegSwXwGQDmp60IKEH9lZslNxqENI/kOO9a03j0rk4bWyQ7apWh8AMsoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775879854; c=relaxed/simple;
	bh=Uy0uDhImRVWolzts1vZbPCstwxOOomwK/4qTncTRYx4=;
	h=To:Subject:From:Message-Id:Date; b=HaQ5PLGsZv4/FyOixfXDOk9UcUrWxuk+Rizu0MBLAYk8bID/bgH9F/QLt9sxHnS/z4PUttVTVq5iiREJPpytvcezBYNHrVQQYMVQ72Rt5rQp4bVKf2NOsY5RQXSMlYKj+njGf3vipBaMzCSCks7SQ565SqegthAjsDcJxHqKepc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGWu2aFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGWu2aFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3C1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775879853;
	bh=Uy0uDhImRVWolzts1vZbPCstwxOOomwK/4qTncTRYx4=;
	h=To:Subject:From:Date:From;
	b=dGWu2aFh0qOUit2tr0IbwGfFKpkq/sN1emBS4dyLEZHDAf2fHg98xDbjwog7s+D/m
	 HktJSInw417ZgK8m/MN+WbNu2RE7A/iFtSL1b3yj0btEw/5p9kUzDwQsg18Dn7Wr2D
	 TVzieLJchsiuGS0iAQLPxXopAJC93aCYgXG9Up+i6JcVGwLGxoXZwBcwvfFgy5SCMV
	 rPe3d69/D+FEF50P5J6i/pXZyg+j7o8M0HCAdRcnGkPNrfPbJrIUbHfefWlrsJyCOG
	 sIOlI7gyycRKhrUYiMW2iGJnI4U4KVG8SJqli1wQDga6F/3EAGLgty6vxRXLyWbiK+
	 7MiwVjZnks8Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC64F45A1D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587985368.26328.2901925562868634780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a23fdc1e79c930aebcd394bfb137ba4d21c223f2b2fb6e96c3468b74a8b11c
Date: Sat, 11 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775879853
