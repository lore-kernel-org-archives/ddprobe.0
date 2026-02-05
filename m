Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9F9428841
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770307434; cv=none; b=dsh3qN0Ztkpq43fn551W1jhfr5bzl/LC+WuByeI3LW5fTlqQ80jHVTewMXVDe0AjbOs++ZgOI7yuFFZpdiy464qjBxWIiCc0jT8oypIDKGy56uwYiUApTjBiQvzgBbAzboE5LDzChTDZab/NiKasbgG2efn/GP120X/ZR7+SmDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770307434; c=relaxed/simple;
	bh=jUY/XBBDFpl8YN2a57LYm5fxq1weZHzT7I45GbloEuQ=;
	h=To:Subject:From:Message-Id:Date; b=C5PgxI0I7lRznfFSVn4SoLyvsMKYAjBj3AOWpW3Ipqk1PUXVD9Z8mlxw4ZgMaFLvunTCIwZzGi+U4ezfH93+mtZs/FBtPpL2yt/vKHw9/bMt7c7HA9q10PMCB9xPY5mkWlkOhWTs4Ic30xUVakmSaKBqjYeJTaBh7ebsxfZd/ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvXs2puj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvXs2puj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA41CC116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770307433;
	bh=jUY/XBBDFpl8YN2a57LYm5fxq1weZHzT7I45GbloEuQ=;
	h=To:Subject:From:Date:From;
	b=TvXs2pujmc9wwIPjfPHwognNPvKbDOl2wKl22pzsXF1VzHoYheFYzUaT4Vbz1h8J9
	 jTbwNnc7IHgCzCXzbRub0QLOWxeFzvq9j5obRvt6poCsxABJ6zd9z7a/VaN1rKg5C6
	 6NproBE/pV2hL3TC6lo8llmV2u8ODodyiGK4tZ2xsZm9vWoppD5HKixyw0BMoJMH2X
	 wQMg4iHbfKJrFHefnUZ1EFhcA0yQYPEI61yyu+iDFVTkWhWWNY8QgmZm8Xx5RcYhZU
	 9kCnuBrolJd1qCdzD2GCz+GcaVUjUt+0ymE6v/hMeGECqZ1aIyj8RXXVFLaANlGPaK
	 OrEZQtjU70FCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98650ECD980
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030743360.9613.7327999406773440341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf8b84911f40e156e3aabcc0027cd6337996002975d56f98fe043175e66f75b
Date: Thu, 05 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770307433
