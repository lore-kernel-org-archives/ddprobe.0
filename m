Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3862035EDB2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769543034; cv=none; b=peSX7Ta63mWBLLUVX5a8pQN6KrqnFLSotTAnvZm/xoe4W9eRV70bXTlBy6Ol6yxRLTysooSzKjYeQytuPJSmVohM1Buv8vegZTsg9O+WyAkI5OnKlRn+kERsLIlcr5iknFdlXFfqoJBgT0lju4g+paFLXvr/CGT6AxFrPC3JmRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769543034; c=relaxed/simple;
	bh=XODS9QCFKTUToBtorgXy+UBsss/uRIDgzGxU9tlb/so=;
	h=To:Subject:From:Message-Id:Date; b=RdjU5Av/D+g//16liRm5bA4Ab1IAyC3FMSk+S6ed4/W+RWEIeXOuO0FYIigAkG5El+QURBvrqDDKLg3ZpoJKD2OrEnmZrcnA6TqfCHsNkhmrdW/rsWRb8MjfQoZ8/9q8ELA9wXCzBLfa6lBjxC6jqjN33pYXOh5BqqwjoD+SBPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot3Ea7iF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot3Ea7iF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DAEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769543033;
	bh=XODS9QCFKTUToBtorgXy+UBsss/uRIDgzGxU9tlb/so=;
	h=To:Subject:From:Date:From;
	b=ot3Ea7iFfo3FaZOxtH8EyYWjMhWg/YLrhSXrtOZ8wPBkXMwTblPnedDzuorhwWadq
	 z0PENeTGBAcSDTGQA1rT2zMOQtckCEIh0Yf9qd2J5w/7BzSCxibMViI/joT0SMihmY
	 oJF0kBQ1myfimdKyXG2e+UFKdGHdLeIwpbldVReMcXGNBpC/b6sGo8ljvzRFirETmd
	 PEyH5vxt9C31CpKvUi3e7X99NAUKfvLErGA2GGCxggOkvFmvbzwT//gs+T7L18pKrA
	 iss1PfEj560ANVdq3uIYRS4bzbNMkmP92QiY3HX6l6gAT3we14lxRTw2MGfP4o80UP
	 QsL99MADDpcsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9477CD2FEDD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954303358.10561.8782384636795105855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120fd6d803a4a91920657d8171fd97684357c06c4e232dba4ad96216e6e0b7c9
Date: Tue, 27 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769543033
