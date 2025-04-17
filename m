Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E30519D898
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744903794; cv=none; b=Rv/qpCQ+5w/CtTRf6g+q3hHedBqtfkwjPrWXTg8HD7ayEklYG6wF5FOu6sesrUtJLTVtRTKu3QqNE0m0WReIHsjdTu8By6tAi/D4JJnsjklPTFqR0NG5fi4QehfzFkMNq+mCRczUyIhdxFfUMJpo9RiRicI6+vCcFpKWcqIlqAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744903794; c=relaxed/simple;
	bh=xyVfURJqxREvjjSAdVD4C7bnREKkIlpxsqddsXgQXo4=;
	h=To:Subject:From:Message-Id:Date; b=U5wzTsvOZfadhq6Rb775EcbeCDi+MtT4oUd/HDkeWTxja9xrHttfEcaR5tGbXKQGVoP47F+BV6bmZl5MKJ2ON1ZTJKb8aBFPUbfD8cBAhPCDvRhJchqYi5Ca5K3hrake0e3jd2+0uWCCgz5tZPP4aud7TAw9M1cJsX28tJO1H2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHmdUU+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHmdUU+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFD1C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744903793;
	bh=xyVfURJqxREvjjSAdVD4C7bnREKkIlpxsqddsXgQXo4=;
	h=To:Subject:From:Date:From;
	b=CHmdUU+BcpH/YoNWKe+H0zxfzMUXOnE4zkYCNrZdpfpS3KX0GMlGXKYoJjqH1MU3V
	 z22wItkP10Xba/GUBAAjovXq2mFjFLoA3zpgEwyCPFgQZotRceGhg8b85fbjk1ZjFJ
	 PFmos86yj+8UrI43y8QG0oVDagc3fVd59LYUDyRI7HyG1CcPXjFt1we28Lr7E/vqQk
	 YsrSdXmyvu0JC93IG6rMhwVW+pWWHBJuH/YiiwIAlA0gsyKfXjVAtL5UJdne9AK+TZ
	 Qb1Wf7J+aFDcsIaeNuTpzsmgQoteYrEOwbPl1nEnTTT1vWKRzIoItKAgpwoxToAudi
	 Lly4L09j7aTMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00A6C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490379364.16275.13743362244421262261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a41345f1ec75ade51d2e846fc30f24b47c0d63da9b22a47c48373dbe662c78
Date: Thu, 17 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744903793
