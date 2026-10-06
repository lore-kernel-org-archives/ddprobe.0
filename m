Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C8D49CF57
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791303034; cv=none; b=Ilr+MVDYK1vYsEcIu2I5zXf5g6hX6JQen5S36mXZYop7ut0txoMGyc6mCIx65/zlk4MpQ68ktiBBTqjpztweKzeJP+qAX3MhFAjkJXY+AWQhEDO5IpeKMczZ+Ws+mdwLFaJyIKnQXbU2KK59SqLhVVtacltgmV69uEa39C7o35o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791303034; c=relaxed/simple;
	bh=VcT9ly6nwv0pHzmtb2dsoO5NdSArG0LpHXkimIBeAQo=;
	h=To:Subject:From:Message-Id:Date; b=Vo/YsL+deGW4IoWdzlHVL8RYzdIq4ugV+942OF6OCNH7wRo8KaU31EgJtOEXZVU4VVEsv+OFvjTkbqD8U8NDYfZjPzQZwW6hoFgEZoDFHYNoPbTzrNUPBWlfRgA4kB7fdEs09Xwg31iSGTqsD9ry0fzXygqtHXTCFglDVsUsrjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGhB3Vyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGhB3Vyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D021AC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791303033;
	bh=VcT9ly6nwv0pHzmtb2dsoO5NdSArG0LpHXkimIBeAQo=;
	h=To:Subject:From:Date:From;
	b=aGhB3VygrliGLHYOEIUfX95of1d51OLnBRCInXwb9sNygtn5yuMee5F890rTwNcWQ
	 vYH+x24dwHzsKOklcY2gpZGhQ+abfi3qO2VDVNonqTiSVFN2+H0Y5Egisd7dHRQFqc
	 9Q9fdCckNrSA5K4AddHEoys0YhW7sLhfsNiFbcbg/4kT4i+Bsqdh1FYJ0H3epEj3+G
	 RrdYVAZHs/smZaGvGaCQ8q58ts4zfqSATmPlP0qIBLHqN6PnchMUO2rjjuAfGSCg8b
	 +yKx/xKaH7KwAPiot1SANosCBHrgqxIoN3oaA7ZuCc87LcbhLamgHxlLxBnVn6SYzW
	 sU+Jlp79ALkzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8CECA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130303368.14501.15051987594177684685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87182d0b353f93a9c11e2ae2e94862b9c3e7053f536634983d3f1e8e75e2cea
Date: Tue, 06 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791303033
