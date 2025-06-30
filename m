Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2765C21B191
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751270994; cv=none; b=AKaGMt3ufgcjNn3QIfQvCt8jMiI4OTGQ1Gl62bkmjWo9vMYVSk5APvn59xWZFdkDMQXQlJNJJgNjjWIuaeNJ7gRzpOg3Cp5T37DzkS1W0JhdAVWUo9atkbrN02FgT/SOEEtCLjylFd/xWTk6IXtQyk+aAFIaHdjXcHSFRQUbhpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751270994; c=relaxed/simple;
	bh=ZTYr4D1J6AmIpnlB9dYLMmD5QujlW46dRj3qwkBaV1Q=;
	h=To:Subject:From:Message-Id:Date; b=jv2t+7N78bi9BvJUpXSD+/JTNUtrkYB+M1IT8clC8QTgApmf97ItajlIEHIF9ZZh/0tcPwgyy90uVy3x2pZ5aa7IB8LFkuBtFPT3uAWxsa7fpk0OaikIUHM7nbqAfDu8lPRPh8WBVw86I5B6rI/NHm2548Vp7nQ1Mv9EYJzgWUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtC3Lf8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtC3Lf8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FEC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751270993;
	bh=ZTYr4D1J6AmIpnlB9dYLMmD5QujlW46dRj3qwkBaV1Q=;
	h=To:Subject:From:Date:From;
	b=XtC3Lf8kgvd2f0H9CeZK/2SzqkK8opmegQXXtozFQb0jqouziZLvfZAhW+LIgceXm
	 F35QRYucyZgOoQt1es/rVhX4dSgu0/qNmTM4jj6j2gXISzwsjJg2G7IeTyp/0xSqHs
	 9Gucys1GHLexDW87dBvxolNhSwgjdifYnnVULBfwgnAqZyLBN2JFDrygVgRvWW9l/5
	 W8xVEoR+cuI+gMDc9mTTLOqAgwkz8421dI/dNoBWIhrkvqVXc76tW2boCo//Jale0T
	 CP4+ir+FX4roCBzTOWMYfRzVPQbShsNS90UKmd2mDVLvy5bXxX8GNpz288ysBfzXRM
	 AQASlh+kyeZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8AC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127099357.24968.9599753439457426210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28c5170b4f646ab8e02826a066e83435eef8249b99079e2a5d08f4a07784539
Date: Mon, 30 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751270993
