Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252092877F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753223394; cv=none; b=Y8V5kBa+Rm8WCgO0bLk0tGJsYeawgxyJzYCEEw/b02eWLtJd4ox7KbS6X9Bt/8jv7YR4/rCSdZE1smgz56/hoDte3svbCb8VtNyW1V5IVLoCqER3JVSQnjA0pH972hQ26rg+bzvC0QgKLLN5I+gq3Samy+E0UPEkZj88OgoCeBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753223394; c=relaxed/simple;
	bh=hiu/U2pukzcCE5D3tNdIrnLoBGBOKvReuD74duhb5XU=;
	h=To:Subject:From:Message-Id:Date; b=gIl+dm0iOcydBqLeqPD7pm6sXBikDIGflXc0zmUIT3HR99zx7qp4dY42I5tgOr5rU2CU0LpIYmi3hreflxZ0HdLRqPx1HEHyPpFZk0ft0fYDRVriXmC3L76UkPqg5VXFLHLaVDTbjP7MIma5U+ToWGh3VFi7aIca1H0NPNGxo2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4P6ACRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4P6ACRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F07C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753223393;
	bh=hiu/U2pukzcCE5D3tNdIrnLoBGBOKvReuD74duhb5XU=;
	h=To:Subject:From:Date:From;
	b=Y4P6ACRHBORRwa5JaNZc2/IVhw1iL9oSlENnLTcCbScQNq9qi/kgTjp20Zn9SQdbF
	 2TQYYGKgZ4lA2lGwbsLIvMMGybXBcFmrzusmQ0PSFjc3A2EXnT/IXVX1XLuT7aW9e7
	 4Ml5LqlNR4UrBCSQGA8S/N8838zSSQMVgkIff07iDdSEMeC6KcdArtyVc8OG4JqPCG
	 cjTWkAGFh2k0o+cvV3ACV6xvqlBXFshBOnhRnVAGU3RnJkOMJRmfJOQtUs+RSwotpz
	 /U1AMDPN5cCg796R7FYyjGdw2xXhplWq7wJAEx+1Wp+MPqkV460s9Rrg8Scrg6lGFl
	 aS5VSwvJZtqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B83C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322339358.20810.6790008722826388451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c7b2c0efe72abd3a06e80271b8757c870ba05a47d257979870299da7535db2
Date: Tue, 22 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753223393
