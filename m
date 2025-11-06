Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236561F03D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762406394; cv=none; b=RPTZeuULeiubzIgqa+4MxzQeTPADlJeGyvi7b5qawm7ZM7H20Q5rvirFAnscvbgI1z837IPJvw555d6tvC5h4j9RcCD06r+tgKKIVvDZ8IxOZVQeiDCc6l36DME1jqYx4rohomxM0Ez1ZjotDTbC7lPgSUHhyv1DVJJSWKBsxr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762406394; c=relaxed/simple;
	bh=l//Q62XZMQFfZdKclE4aaGaGHH1LrvuDhI81YYFeEpU=;
	h=To:Subject:From:Message-Id:Date; b=OLWSSDX1tjJ+lkxXi6xLPkjdyAEKcCVIZtNNX8O8oXke6XDMgre6PDYXJESmuuWDTov1zjLBWGlOAFa+Z6eScH3kdkZQFKlzGokdVr3iSs7+AEBWkCLbnusvUJJoPxydRrNxeX24NF50wUibUvjTtIKd+/sK1leRRot6yyZfCMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRB1pck0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRB1pck0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71DCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762406393;
	bh=l//Q62XZMQFfZdKclE4aaGaGHH1LrvuDhI81YYFeEpU=;
	h=To:Subject:From:Date:From;
	b=MRB1pck030SWDCHpdyoqdQE6Mzq+HPAHdBE/366vRFypb5E8Cz0ry2wXwcH4q19BT
	 wV9r9oIjny1klC7hVl+gvg9Fsh0/R2+33aWsNnFjM+1ME4M1j54E/q1J2fh0Nxohyy
	 bZ59jygkae3wvNOiQ8XKq5JlzCPQdLyT8yiTvL4ZcB7bygDXnCnt39PNSNTNAbqwm/
	 UBghD85V5JYzi2IXTsi43SfRNW/edBgT+orc5uTKDFe76ffOfva0OG6JpTyg3gp8tW
	 CS52dYoGX/GgNb7HjBXJ6HPOyUssauBoXIzSTLtNJDlHboB6Gyb+97lTIn/gPjXs7d
	 lbkiQKNZQgDzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9461ECCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240639358.28338.8827298203937994688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e48963eabb44f0aa9514a892c901dc4ceb6311ee9b25856006f3b8b3bd2c2e
Date: Thu, 06 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762406393
