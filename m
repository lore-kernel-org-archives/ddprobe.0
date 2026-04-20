Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3051B39C007
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776685654; cv=none; b=P/dp4WGXlZAFmvOkCSOeZizmpUb5mMDuvGovCXsN6TCE2kGeNvChhcy6i5zFc/4QRGFAJ1mOlcWKzlbGnT/RovJ9cAHEHhhwtd72cLjadBDsD0ytq0nd/At2QotKgVo7exKJsb/99Sl0wWn7my3LuZBmiMAaZBlzyGhkBybtAEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776685654; c=relaxed/simple;
	bh=wEdYRv0/2vXKll1vDuk1ekGvyabi5xP+Mg0/v94icMU=;
	h=To:Subject:From:Message-Id:Date; b=nDNsy3/MRnl2EhoDA7iIqrIU9HlcIWl9SE2fCKEb52outBZzHuQCvoCyjWMhRy0TzZkM8EuAf+LFQFWRcEW4F1JUOA7qjMDacxG495FP3ILatowjJyEoVhVZq7GTDcU1/PmZ006TjB2Xos/8kk4sQrd+tJbIn+Q/l7pmAwKfnTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s95H6/YE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s95H6/YE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5A5C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776685653;
	bh=wEdYRv0/2vXKll1vDuk1ekGvyabi5xP+Mg0/v94icMU=;
	h=To:Subject:From:Date:From;
	b=s95H6/YEcoeM5a1JDohtCgKp8sj/u1Ro92mqNONm/+SlQvKfXSjNYL5Neso9EjOvb
	 Y6D3r3vfebo9s0beiWOypLEwGrZZMLHB23IwGPt498G0KFQo/jGlfom2ClKz2PkRXD
	 tFMK5doY08kTo8wYiK8MMMqPObCSVwxTHCSfUf5dqNMMfu1/+5hBipOuTYFGCAOJ4y
	 EvH8nl+/TNQLync2//ST9OS+tW4UNa0CGMPIFkUBefliveC63CPSyGT91+F7Qa9V94
	 oA9yDRcqduYu8eodGtcBJoxRogi+6DTjGhE4xFNkTwTCXcOT3eyz1zbvspYcrnrZZe
	 yAJrorhTyTD2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A986EF5581E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668565368.21741.712133192112857815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00008bf5b0f122a889d560e271cb22b161c2e285f9e0a3c9d49d66904ed3168
Date: Mon, 20 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776685653
