Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE45346FC8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785894034; cv=none; b=Ww1DE6skqXsO6L/L6TKdXHFQqpOuwh9I8FMEpbtaXVPgVX7S3fOg03y914/c4Qla+x+Ws2cBECuhD9fNzNSVKrm3VYTuFGSKICdxCEXZn6Hio7p4IoLtbVWLQre25+yVsug+c8cQEyeR1qQmN18a+wjQPWiBADoFzD0ylWC4US4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785894034; c=relaxed/simple;
	bh=r4+ZzvTe+gNme3i4CyfaeYDbYFhNJP57/fXy2h3udVM=;
	h=To:Subject:From:Message-Id:Date; b=jje4qw+4FQX6P5+Bq0PFslrT4pI6nXMjLp7HM+lP7zSq94B9IdBmlrt8lcd5aQGt0/X3OvGH/9jV3+ZWgBdZGn0WEoQiRQ3o9U47V5degYOobCusBQpp2UCz/qRm92oMQRj4rQ1LS1gStFKiNX/rjX3vETAERU+Duq3NQyfns8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKjOvKsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKjOvKsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE312C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785894033;
	bh=r4+ZzvTe+gNme3i4CyfaeYDbYFhNJP57/fXy2h3udVM=;
	h=To:Subject:From:Date:From;
	b=NKjOvKsJ6koFVL6VaowCHJLXk2jsQMYSHBx4PyQfybzx0sL7xCy+4y/W0R3QDobxD
	 6vtB4Fq59hSXVD+ct1LG9QJkklNzgwedyoflLnyHtOcnMMfoeKk29uU5A9IcHBMVCp
	 MR4io/jjBKet3N2P+BNVRW6w6cqoSFbbG9wOaGMJCdaeTWs9G5q0MryHFe6qGyY2xj
	 kPPlgU6zZSakzCXnORwJqZbExX5MmfOSJQTqBSLnhF4Qm1wlYEFrI9xlbE7aFWp2+4
	 SqkxhnEe85SdK1xkRHyl6hg7Sygp6QKihfBIETypmyVGpCTgmqdC0VGMtvbVRiZ5cg
	 QNUAHD0rzHh7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC86C55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589403369.4087.13868930772706606504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f392e18bb4c97abb8bebbf582f15056de76d3bf51b3f90bd7bfc94f7da8af530
Date: Wed, 05 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785894033
