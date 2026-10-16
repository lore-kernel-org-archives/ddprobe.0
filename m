Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3C93B0581
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792131634; cv=none; b=RLDKFat3AjbvKjjnzZPCTIe2iKGNNnNxnID9pQZIcGatWFgQUbqx04h5UKwapxpaYt22kLpZJgHy4nraSXCrZ2f/qEhpKHLGdtJrTYb5SSJngt71WgczSGkBTvaXY2r3raUem8EjgvD4lRZ66E4fGllUsw8N69mR1lzb/5wGnWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792131634; c=relaxed/simple;
	bh=1zxf5ew7cdB2WuDeWhtjdeNZvFIs8wmC575f2uSeRvk=;
	h=To:Subject:From:Message-Id:Date; b=THXI3j0pt54TWHlO2GB9FAmiewF9utEUtGiitH6CdUui1aItJEM7mb2OaO/O4wm8DlDO5WFUJLYJ+2upfNpOSOIfViCywMpDrIyGy3pBGe++IDzWdw/dEHXddBG5e75hhOsd2FpTWuDefjOZwY1EdYLCYhEahoNtvI4hHeQz7fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3mzfYv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3mzfYv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECA0C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792131633;
	bh=1zxf5ew7cdB2WuDeWhtjdeNZvFIs8wmC575f2uSeRvk=;
	h=To:Subject:From:Date:From;
	b=u3mzfYv6UOhjXCuVR801PadcsTft7TVG9x1subUHXC94hYXXHzN2umTL/aOVgEN/r
	 eFsVN5GweIIDL93wsr1EDG78lNb4QJ/sVuhQPVK2tLlguBbRxoSp4IJxUuo8dZ5Tz4
	 wYFwe2ymam9YyMIGm1NXS/XwP4rptst7jOa1LL9xHhMoXwwhlDyZrQ1fE9tn+RzmEq
	 P3KPg7uwy3+3aSo3RDOZ/dN1wj89I0y2APQ/T/XOVBWrnZGjG6yn8gEJwtwq09vrDO
	 j9oWyLxZRmuOwmnsy/HdLQV7pf/K8VDFpRZoryE32E1956ocY2uiMgaXyoK7WUTnbD
	 i4U84ta+J/nEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C1CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213163369.5578.16616926986331453717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e576cf7aa2e1533190b5dd0beee50996783490586fd8351c8b4699931d4b19
Date: Fri, 16 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792131633
