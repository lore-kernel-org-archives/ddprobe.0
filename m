Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F91284881
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761119994; cv=none; b=iehDnawRsyd+jxuE3lL9hXUZnmTSQQBDzx8ti9iMHoiqmLCLb0+92zsFTcrA6BfQTMLUsB29GFpmKmFB/SFlClLf0UZAGyiZVISeqK1hADe4KH1DE1eryq33X7XOcXatJAKHKNPNronry5EiWzfkinPMOVH4zIRacCYHNPTRRjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761119994; c=relaxed/simple;
	bh=jRt3w/8CAZxZ4QQr9+VnNI+hbThFshQLPvAK4kqxHmQ=;
	h=To:Subject:From:Message-Id:Date; b=BF59AKpzZIuyRrksGhBzM7ZLiW1220DbzqBN+rLfq1i4q3RgfdODIwsHK0+6O1njHQQc+02NiaYROfMN9j/DqWDzGvWCadV2OkoEeqBkQ8lL8eKLdC4obX1NmVgOteRkfa+AEiij+qy9dv8AEqvnu4AAjbbS5IH2+Y7WJBe+NkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uX7z2Rmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uX7z2Rmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4C7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761119993;
	bh=jRt3w/8CAZxZ4QQr9+VnNI+hbThFshQLPvAK4kqxHmQ=;
	h=To:Subject:From:Date:From;
	b=uX7z2RmgX4g9kfFJdYniTRW4Hr7/hnlz3I34Nx8DPT60UfcIzZ+qd9sm8zccWS+88
	 jXul2LZXlgDFRuN/3+48Q8nlx9WCZf1twazNFjwmDpSVNg0A7WeaAt1ymGiV64duIG
	 8HJAGzYtaqSro9Jnjx2HAs5nMw8b378Q81zVdzhkJIpk6d4jdfIg5G0bJXa2SWZDCE
	 QBZ0GBIeIMyJI3nFpDZO+pzGc/eoTbyeW8Blzokme4d8ykQaI2nQpbbTGReQNiKxX9
	 eJtUja9HltnmQK0ZHmaHu4L1vn/pE12dY58nJGfOC6RuVNSssRGiwo2D8bmSd942pX
	 969I11blIlhrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90995CCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111999358.26691.2476973749500277863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0251be241d059bd9baf47a9bd027ada82463068f138a8af1b118357c391ce87c
Date: Wed, 22 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761119993
