Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145371F3BA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775261734; cv=none; b=SjnTOrzRLn9K8isD8aLRTqV6Y3M+qrifjcU1ZE64vLY6h29SXjYKvYX5EAy+jxy3RNwlyZEe12betsFEXpqDQDSmjr5NjJBEnbOok6k2Bo+bjO53PwHNkb27PcTQM2rUCd+nq8nZY3ETgU2KrJDTaVKvOX2hyE4Y5Gu2VDF602U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775261734; c=relaxed/simple;
	bh=wjiXuRKRU0hpT18tj9TJ1jJWEz8TAC5af3QL1/gic2c=;
	h=To:Subject:From:Message-Id:Date; b=I7QgsCxMoQzrs6ku5I0p7Vht3TEPaPCt14iemIA0fFF5SK0JLf4whkR63bsK39qR+PfI8svYTaQM+CDXrhwHLIuG7/pWc1i2ilssCLFzT8k6O+AviXv8TWVxDykiQQJFBIRdHegDPiXr1zZdZz2NXgsaQnUzgbF7eMcpZJQkLQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihS9SOCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihS9SOCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01BBC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775261733;
	bh=wjiXuRKRU0hpT18tj9TJ1jJWEz8TAC5af3QL1/gic2c=;
	h=To:Subject:From:Date:From;
	b=ihS9SOCueghYq5pR2HG/YvUlGdhxUvOa4kl3GH2qRa5vePw/DIcMoU5Xapp2DToWo
	 b99Y/R8oXB1irrMgnC4cFUXvWZw+DF2Vuyguz78Naicg2HPvBcte+AY33/RTsVEHPO
	 1kMOPXZraSRDoZUXNHnPOIy7Hs2HiKrnIIRnL/dwvdI45hd7ynDpRMrVhvQ4gboZKB
	 XYRzelRoyLPUAoRaUf6tAY918eY68HTffZZjYiL4GJFDqaX831OpdnmWP3UUFUp8Hg
	 uNBoRmohSjWLw3yGAUNw/0udTiE59NLG50gaC/H1wSwWZloMMwXe+94mYYZPE/+O3g
	 TUBFXioC3ixSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE378E88D6E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526173369.15141.5698191255453670619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034bda01e74af6b78408140ca43327ed0c883eb4b4af32cc746f25c696960756
Date: Sat, 04 Apr 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775261733
