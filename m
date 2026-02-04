Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEAF3BB57
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770244434; cv=none; b=QKcgoo2bmnZE0sWLxUxWJEu4iG1pp4EWJTiBNWcCAyXRMnKpFuBARowZpIbRXdzZ+VpW5YuOOgnCBMXSXqW7u88Ndo5PKC+OkYIJwQeVjeS+tmOMGW4j0SMN0fN5eIfHy3IfXGMP2XqKMt+Mrob7l60aSqO75JWYNaiZPa4e6HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770244434; c=relaxed/simple;
	bh=t8lM0WZ4u4DJVVzSrZIGas7yriW/ljNZyR34N3UDrTI=;
	h=To:Subject:From:Message-Id:Date; b=NfiQ+ZQooMfo1QVGMmCttViCG2aQJH7ZKM5ujyyy1WTBDOOEpn2CiP4nzV89VfV6CkXvNnU/aKk3UGsLTPPJtQ+W0/KPycWsQJW3yS76SZPJY5OEUp3frReFPnLefZR4J2ISI4tnyCH1f+uS7gple2LZu4CWNcfZXmBbg97lnAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvQzijpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvQzijpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A459AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770244433;
	bh=t8lM0WZ4u4DJVVzSrZIGas7yriW/ljNZyR34N3UDrTI=;
	h=To:Subject:From:Date:From;
	b=uvQzijpjbuLdyc85mnN4ScOvvBAV5xKAI1CGdMmOkTdnCAiTQ4uFg83cxyX6w7RK3
	 KrhmTitZVg3sTNzuX87FqLE6XIjrDDQCKQCuQCXwikDbitovPQRNyHqe5En4D4RWlV
	 O0/KwjyXWOCCvC15GubqUSphYZzAdBBmSxD6XAzz91WDNOxWh65fUObEcNidW9lOl7
	 73/Csa7FFkR4J9x9Z7F0ANHD6c6664K3NaqELIp4zMx1HzS2Ufeb/xuchK3aeuxklg
	 r6wqDJm1Au5lC+eHnmXqsUnnX2G/YelzY29CiCbrVuS5CJopydwFSNtuJvUqFi3aYQ
	 l4Mhxf+PxKVEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96809EA7946
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024443360.10379.1914651031252960198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcb557f09c97582c48944af869c7b455bce3672bf2fd6f8aba7647874e59cc0
Date: Wed, 04 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770244433
