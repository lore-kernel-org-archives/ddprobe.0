Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB2631327A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784233114; cv=none; b=S1h2JyLagoVvAilX3X3qmt716msuLRoNUpsq+ENLbtc7M2ye8MOYGY3BRV8CrxIuaa4TYXEQGiDN2gBvDUE4PKZ1oAKz3wUVwuIAp4B0mUuZM37dtL4p+nWqO+GE5uF/QEswxcWvNTERPUio9HJdvtH3mjJUCYNB8kndL/9Ekkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784233114; c=relaxed/simple;
	bh=wrRpx7pv3ITGkOnlqZY4rju2wYJlrEfXS+jMajP3wkg=;
	h=To:Subject:From:Message-Id:Date; b=iPbXqQ1iQw8izlcill0igh2AuSSxwk8w9EvG4B7iLhI6QT8m3NsIo5iGbqFiO2+rooup4JPNACHOZNlLF1G9M07vKWQvpv+v3nJ2lvO4YKhjvK91rbYZ8b19nCtvCruKzITbmz0biMTdpdX1c1BePJZrn029kcMycrfcPDNTldY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhf2H3su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhf2H3su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC34BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784233113;
	bh=wrRpx7pv3ITGkOnlqZY4rju2wYJlrEfXS+jMajP3wkg=;
	h=To:Subject:From:Date:From;
	b=fhf2H3suPVcbslHFh/OjX/KUMEDp5xC5dwIxcXQy78UdETrhEUz27EE3FjIDmRuBh
	 l+G64HIniqiwDUi3URCFYyZcQV024Mvw0hZP+IarSMO35pq83zhu7+SEZ7nkjkM4vs
	 7TWm8pfxvBpB2xC6DO8fPpk5IfIxY9rzUWV4p+/JgjOgPTyQ+XsJTSdwDif5ggwlj/
	 qIMWbmVVX4N30scitPnam9vE0Mt3pj5n2Mv6qmiDraDu6/UoOcQkgpRpoZcV+ly+0a
	 8DI4ttr5JVWYDVonYVURhdMsOwTMCSaitXJ4rxOeQnrM1yn2ig5L9PxPTEnmMBRvcx
	 mP0Nxi/EsKmRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D6C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423311368.24198.2994214639055657766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c28883c17bd334ae99dcdf43511358b2610c55e7f9cdabd9b422049a0e752a8
Date: Thu, 16 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784233113
