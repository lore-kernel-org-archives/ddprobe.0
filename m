Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C4841A56A
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786694434; cv=none; b=HoCPrY5eODuvFtuvbbQKZ7dPMSlxHybuIqyt6hu+URDxzGoiL0mjfSnWa83iBHOeiX9uAqlV7tBUF/FcO65CV47Lee4qxIm1K0XKpM7CgmwNIye1DDP1Ye/BrNTtqOA8a2r5+vNNlfO8O+d74bqWoBkxb+WOr1jo34YaRd79UX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786694434; c=relaxed/simple;
	bh=bl58TOkwrVdiyIDFmy+R+63SxwyAe2NZVuxGnhYuN+w=;
	h=To:Subject:From:Message-Id:Date; b=jmBJwah3UGJ6RfDPrcIxKohecVqsK9xogirqejbFRPMOB1ZpEfH+h4RJQ0SPGoOSVMO6ddnYudKY3r9RiFbksVp57JW/cJ8TQLCXyo6+siETa6qGQq0a+8u5oMPJkNsMfZ7Vsd7V3lcQ50rZkUcO+RD87RZvI20YxslLb1OIOXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyKJ5/IC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyKJ5/IC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86B1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786694433;
	bh=bl58TOkwrVdiyIDFmy+R+63SxwyAe2NZVuxGnhYuN+w=;
	h=To:Subject:From:Date:From;
	b=kyKJ5/IC8toQAprX5fyGuyfJ/EXPLkF1alwEim8ncrPf0voYWOf1fJn6IclSeTsRZ
	 BlVoNAPUvty2RQntGkrIDvzHQzrBYuuCwNaFzmKd/wIIQlugdr48MLVKS//tR+TCky
	 IaP6uSMrFWT7c1oRAh62YrXQSedcsAqnBYAoKU5wFufL9qzPBCLZO94qCEwZgpXoDW
	 h3h/O6TpTTTndvQqwPykPJRlnKC5SMplzYWK0sGxL3BVKdf1zc4HkAp6lMUcgTRmvZ
	 AW7smNmG+1+dGWkO7FR50lQqb6FFRCYZ5xMlFmCz/JUkea4qv9TKu0LpG20IFf9g57
	 viqtF7umQw4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89D2C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669443368.11284.1550004584321436891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7d4f07a17ad3499586d8f6694ae29805a942f7f37905f17b16655dffcfd28c
Date: Fri, 14 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786694433
