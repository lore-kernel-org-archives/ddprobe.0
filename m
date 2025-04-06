Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6ED2AEF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743913194; cv=none; b=D6PGnrS92NZ9iAdFTb7/lLVSbEoPcWL85IvQX4lKeGmjWKeTcnzJxXWwQE00uQSN9sOumOFyTI4rQSPYDCG8aLD99XyncN+ijBQIso8ENyRxKPoAuJiRptx4/IuYZapcLYlwImvb3vX3TXxTmMe0LFMQfl2/HIJcAOmBdFysbLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743913194; c=relaxed/simple;
	bh=G0foP1g74055od7AEasTTEby3tgpMMiGX+NjQzqUCl8=;
	h=To:Subject:From:Message-Id:Date; b=phgkDGZjeNM3yupTIg7IXFjt/ACddcb9J+5Sb2xdlZMMVo7LFi0kulvFno/sIdPEd3qSLk3GyiOA4g0mJPbG070xJqbH7UUYBXh99iAmvnpjGSQ8IuyJ+EphN4CGOBoH8OqFEdoPArV0UyGgBYN1Zk1w0JWMDeht5CM0qNjMY9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrkaM8L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrkaM8L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8B2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743913193;
	bh=G0foP1g74055od7AEasTTEby3tgpMMiGX+NjQzqUCl8=;
	h=To:Subject:From:Date:From;
	b=YrkaM8L+pujlxReQPtkeIbZanuEPrUObq9nTX2ObACOD+sulILRPux/2EdnhuzE0C
	 ZKbjUrwOwxKoTsX4U9Phox1cO1i6jKlghNnV7Ff+Uj9j3LnT7i2ovw4WO4w5PtyuOp
	 f68+7xVHrcrA8BXh1deT2FcnO3GVmaHA8zNNT6vP69vXZGe90LBHg1uL7qvqXHVl5p
	 miSaRx5Rwp8IDPE48fMuBCF/iV2Jyh2mg0bPArACT3GbeT6wDYQrJXKh7VdYxHjqhd
	 B5gAm5s0ya2cne7uKDm1NLv5KRMZWr1rqv0IMOdkeJK1ljW5JbJXC/0e1xOrf66/Q3
	 3t1IydMP4IcsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B764DC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391319370.23187.13764326778699416437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f8969b7b875b5dfe0a896f89c7558dd67d0a62a35ebdd0ccdfd039c1e2527c
Date: Sun, 06 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743913193
