Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FB72367DC
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774516494; cv=none; b=F1di292Xa00zvyIWo6aQ5TOhJF3rweeylGvYdBCK3zyzeKKPHoY5os6+v+7cmjqCfhKTYyRBnJue4+quP5or8g6XrwmgYdwpSq6JOedgjuzIu/oA1/rc4qIaCN+YkMARYAMIpaR1o2v4lTBsO1RLjoT+MJkxsH1quLC3UajLsZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774516494; c=relaxed/simple;
	bh=u5BGP1x/AZUr4/STXuJEY79GqGNtT+sZv1GhAhLrHgg=;
	h=To:Subject:From:Message-Id:Date; b=scRE0C9em7YU4UKgnXehzmIYmfMxWmNnxmh8XUnYCKSfZ8UQ0V+Ch/7nnih0HeSYXvpq/p3EmEaNBJUKIS5DZc0j4Yl116H7prPIWLgwW6xYw02F+yKctE/Juz7+s4aFFbrgAq6A3lp2PUa+33DlnOGz9BxM3BUQnFbbBr+4ZEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+ZVThQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+ZVThQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4959C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774516493;
	bh=u5BGP1x/AZUr4/STXuJEY79GqGNtT+sZv1GhAhLrHgg=;
	h=To:Subject:From:Date:From;
	b=M+ZVThQtNHEX/vuRQcfbCD2Ny4cQROpGE6XXv0uWHn1g3E6mzUXDhk53FvmjHw8vN
	 GQfItCoFfceHKJX0rfPl8cEU9BdJDz662L4emPOXbx3NbTAbSxxUYD8r1+2IeB+NGX
	 cmg7ElVeVDI8A31cRtAvgODkm1ZFTk4nzY3lqCfdjY8AONg8IgQCOIX6jhITtmlGep
	 40injFa04TH3Sh0RlOeHsAAAdeIud/Yt+lG2lZkBCrix4Lr8DzBnWfVHaGcCEaRyQa
	 I0lHu+x1limJyy/O8Yfz1S2GPjXTPMXk+VYarxIa/cQAVB/BwFvY3wSiTgUln3KN1s
	 D6XUaXsxq8BtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C6A106F30F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451649360.12763.9605478969865389367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b54d001b2f579c6ddfe86679cfd8d3d2cda6d230753a678c9792d0e15d584ac
Date: Thu, 26 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774516493
