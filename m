Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048D05B666
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706790497; cv=none; b=lsxX/nSn5Fulbmio3L2msDZUIgi9yF23pYcTSKvmucClFJq/piluiLx6lhg3lDrob3Qv9VO9g/lU2MNQe6isriD+H3lCOdQRjalrDG0j3XYRc6v4tXuI66KygAS2V9gY+0ggqi+LSc9v0LHDGf1WF04shCnV8Ul9P4WW9ruvrWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706790497; c=relaxed/simple;
	bh=Umur5m4JnpkucI11eY1rZAIvDB+KhtfuHuaOu683Iro=;
	h=To:Subject:From:Message-Id:Date; b=IHgpQ5k0G5YIWfm3RFMQt7EY7Dgjrufv0EHn3g1oobmz1NXYpVAYpwckiT/8r5wWHVLS5SSxB24MkR+GN25FTcjuwSeEdHRQIj7I99GHIefnV7gcutAjm5QZU8VFhyGLHq6qVVcwxZ4NhkybXiABMtMAsU7yJSnEGDRcLZV2dVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQydFjQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQydFjQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7687AC433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706790496;
	bh=Umur5m4JnpkucI11eY1rZAIvDB+KhtfuHuaOu683Iro=;
	h=To:Subject:From:Date:From;
	b=KQydFjQZa1Anh+GBqYzHUiAvWDRAk58ZicQ2yjqmdbvNPp1FgZAhIw/nluK2FaEJ5
	 YYEEW5B6MMrfkbLuIaRzjKRKaj9g5xitfCah0ZtGgSbiT/JpZq/vg/htma1DBgpiW9
	 Vc62d5XXhfqknbA5Xb9cMmCWSzDpw+tzYBwZwqW3HGJibjwX4byNBA7zGHxVcZMJEp
	 NTKvWG+Ut9Hr003jC8hNItCgFPwal9fAFVtXta5/ecSUuL0hYFIabHpb+8L/50GTBT
	 +W0aXqN2zES7Y1Pbo5a9XSBUGIuNKtnQPHo59+g7mvooFZokPspTdozYebWyXZdXN5
	 U1WFJpUsGiDDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC8FC47DDB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170679049637.15199.7181659212290696604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896e219db369014ec88e906291772d79a179dd2f5955fb3cf5e8f9b7b0a39118
Date: Thu, 01 Feb 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706790496
