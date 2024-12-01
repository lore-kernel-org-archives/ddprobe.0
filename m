Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A86817C68
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733086554; cv=none; b=EePRa1OZpxrjW/C+w8GAVP1rsyOprP0+OU/+2r5f50SkbUyP6GvF4RGTLvezSeszvFylbMeCjEx5jAzHas87EEXw3nHpYiNIsZwT3t8xN8kc9rptVULPM1zLZuvnkvfoNcr0MlP2yWJN6H0MZPeFu9LINalUUDJqlXBEuWknxDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733086554; c=relaxed/simple;
	bh=XVgrJX9d1pujYJafU6edcS+orawYnU+4Pc/Y67xD6Ow=;
	h=To:Subject:From:Message-Id:Date; b=eLGqMCyl4+GWe5YVct15hLsWjOXkOHAgOmNGcIH1YqKk+7WqS5ANv5CrTzHYKsRAAtbyRHZD2UQjz++MNZnac/axc8itch7/ULaDVWiqzB2xl5Lir2VYetpW5phswCCKu9+OcwEyFkv+UV5E4xRlIHP2cGGCwxObLDj0/994t6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq1Shsie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq1Shsie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3912C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733086553;
	bh=XVgrJX9d1pujYJafU6edcS+orawYnU+4Pc/Y67xD6Ow=;
	h=To:Subject:From:Date:From;
	b=Qq1ShsieAGGd3URM54yFHIzwVrjQQxFqZYQ0bJUM0YPzPm2lB1/Q0jz51ZwX4FKia
	 QSn6BOT4sibgpPQPgP0LeyQrM4Ak0eFCg5gImXEDgX3ToIyXmOIrEhc6t7d7sf/XP+
	 3skxtqyPKSRrN2UZQGMitnba57AgxIjAFx7U1bhfef1LCznSufkp6Ii/4J8JPacbnP
	 YP169WOoe9IMjQXliQlnPWpwbEYa56rP42Pr6CCo+v/TgtbHtLPgnr/L08S8OMba3I
	 jGmrpd2AdyQc7HJUaNCFu7wk/7WdOcD7hg229K3crI9Ig4AlHctrhAL+xb0YashB4o
	 1HGyT87tn+BPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9987CD49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308655359.1949.10649961529791615401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827fb6a9b8ad7c1e3a15fee348278b08b82923b0692cf45060a50fa356277f94
Date: Sun, 01 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733086553
