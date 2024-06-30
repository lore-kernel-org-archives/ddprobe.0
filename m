Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238AFA21
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719713663; cv=none; b=qEJnB7c/wIT9a6wHHZRutxtehBGWue4ahc0TB+pQQ5z35Nu8oXbgIPhvu6RwgnRNQAabWPwLzAAJJmj7U32FNau4+0T+HD7f4D1Uj0iv7WXwoASDu8v6JVp/54VjmRxLht6or+mVahAVID5yI8pIAl3fPaQVpErWc28JfMikF30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719713663; c=relaxed/simple;
	bh=tfB/U9jwR4Vx87HbsKP0rxsk0sZYusLhkWrlYsYk4WQ=;
	h=To:Subject:From:Message-Id:Date; b=SRbzTPyIKxeRDpKOtiyvuWrIp6SryihEJWRJmYMuQ/n/EdxiAYwMrLvCzuRnx3rPq7sUrnIJN3s6yvfMPRxdMejhtV2R0K7zkDW0T692goFeyybINnDBdhtShYi7VRNTGZYQflI77xFELGZCNqV1B3wDK27Q1gJOWoFKyjyAlks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIKY7PZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIKY7PZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE63C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719713662;
	bh=tfB/U9jwR4Vx87HbsKP0rxsk0sZYusLhkWrlYsYk4WQ=;
	h=To:Subject:From:Date:From;
	b=NIKY7PZRvjnZAPDQaRooKRLIvYQ+s+KYAmOm0X32S3F+Mxy1rxwEpV1UNgu8kr0SZ
	 XVKYg4gyLD/qymMHbLvK0SINvOma/yWG5uZZdgnSSWzOB0YcFwpqI4HAMRpgyFVLus
	 re1rmorh9Cj8nz2ZP/PvMqj9+EqibUBt5rQhJGn0mNfbvnFZ7Cc7gsbpInw9n7fHw9
	 0Zs7OhCLPnkb5CRUb8GGgv708Y4oWI/7nYeFzQIIObHxdIG+TIqEHe0NpfVtuIcaki
	 v5N0dT7FMyFgEwaTnaVQ2TodzdhXtTozjoiG/scB7JRrx0wTDTh8Q+Fw7AywRtG9wr
	 r0cS7guq6oL7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C910EC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971366278.18617.2161920605922910434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40774e41d991e77231411047f977a136a3242bd6d267b6c51cea0c16551f0ffe
Date: Sun, 30 Jun 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719713662
