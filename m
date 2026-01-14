Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3C2393DF6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768395834; cv=none; b=EQDo1qUIkWyG4e1t+KWPb8j+kY130v7TlNig/rCqVIjKrkqhObd+iMXtW4L/fggELjvlEYZ1WLvnVP4WcPnc65Hac50HTWpmucxYTrZRiwTrJCOzwO+dvEgJM2gJIiDhBCQI1AM0EgIqvs+Tbto0IOH4+fv/wLAPvRlvda+N2Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768395834; c=relaxed/simple;
	bh=ZxH9PwNCN8MpczHlys0soWxOO+KBE8+VWthuGWQxmao=;
	h=To:Subject:From:Message-Id:Date; b=GAgPALJXDI4SKs5kLFZhld/uim6TqtkZqwspVTBGIIQcVTcjGqfrvb9Is3InpVcvboPP/1nm1rKm07dCFcr00n59LX5K+bQ4n5u0DUEyeXMiWOIR9xp5yWm628hbzvDTmtMS7iKElgE+8nFXmzLiBE6GeSNkGoawFph/MnForyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRYFo7uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRYFo7uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768395833;
	bh=ZxH9PwNCN8MpczHlys0soWxOO+KBE8+VWthuGWQxmao=;
	h=To:Subject:From:Date:From;
	b=NRYFo7uE3wUmtjlbBRCUA/GLleZJXTIIMm8d/TZJ6RWvfPgPWypNC3/X2u55SJXo+
	 hV8oivR4VaxuKRHKmcUkKxlbzQK0cnkic6a9+lqLdpjOwkr2sJjJ0Hqg8q/oXOLBZ0
	 Z5dZzboFQyPeqbTO61s2bpHXtceVhaNqvsOEiVCd+XxmqvS4ygaPDcZQ6rFRuVkwvm
	 hRPzqORmww0cIm+JL/W5ofiV39soQ+aS1DV0SsC5z3bwACbqVbhJhAx6poB6+xAvg1
	 oR8zvpukLItGKQca6d2CEFmlFRyvMb1sKEUDOzb2leDmbYB1eA66a3ROPkYCNbSgWY
	 46fpcQh92XSPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC58D37E27
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839583358.16759.857976859116710847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576de9a0f0f9257e4e5165903ae5a6293bd3ba6a8bbb909a2c2c6d4526c0f0b0
Date: Wed, 14 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768395833
