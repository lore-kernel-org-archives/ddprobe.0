Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4926A155330
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742541594; cv=none; b=ct1KjUL51JBRqu00sUpM1UONgl09e3FljE3Q23z5z8KMv3s0RVT4UiEThudesrkyCrfSME6xjEbeBIiwbwcxRBGlTr2sPPr9E+wwFzFe25SbJIQNV8xH2IdwpFkTgkWue3QVam9CNRLiisp1fhsktDEOLQBOe9e7P6hDiLIx4Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742541594; c=relaxed/simple;
	bh=/hr3amfWjxIaTYbyXbyfGZK1NK4TVIiBeOVY5JQcmaY=;
	h=To:Subject:From:Message-Id:Date; b=o4kz5EowIE1D3h7E+T6kVz+GWrRNOz/HpVt24MCBMBtvQHhwFjo19JMvwt4nqsEAvEYrTK2UdrTx9BDoAhoTmH72bl8bdl9gHn6wjohDVxE29pDZrV3aPiJ5lFjyv0p+msoaOej6/E9wgAEt+STWa/LdLRA1eFjSKB4P/UCL6q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+ZOviTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+ZOviTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0B5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742541593;
	bh=/hr3amfWjxIaTYbyXbyfGZK1NK4TVIiBeOVY5JQcmaY=;
	h=To:Subject:From:Date:From;
	b=j+ZOviTn/Aw7dYzU2wzxeZ0sQsUbAhoRabQIY866Z17tw7yTHu44pzxPOOcvaZZe+
	 d20tXeymnjYvwrItSr30qbV5kqkzgyPfm2gl4bviNy5pD4z3EGXt+v2pzXHUbFg7iC
	 cBoQoBQHoG3tECpUwb27NbXBRvxHF+elSo5xiv4LieJvl4eP9HXGauaU5jz6Wxw0lY
	 cjPjlYL8/dWAglaVrKDBAua27q7AVEPO1Ni/U/YJYH+gKiRmS2ugWn4uACWAZs4NOj
	 tQswl8j5Xg4BDvDyJktU7VzNASt3z0Fng2Nrm5n9SDebpZqWGrIr2YjdSwkygsFpDZ
	 MvcT9jML84tTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE0C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254159360.27817.8116272163601241350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0096ac4a3cbe162435e76ac90ea88a7fc0fb233010b370cf1616171b36be6022
Date: Fri, 21 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742541593
