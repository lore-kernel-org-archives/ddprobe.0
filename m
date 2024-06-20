Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F63F11CA1
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718858963; cv=none; b=HdijDAqsBCY1jtlR670ZYQ9gyZFeSe/YVKB045I3DBio3uM1dgITALjxbcHO33gN8TPlxEXSYCenhE/qDUKxiGCoeOMay1QegopSipem3OWVSrfiDL9WrXDLjkrTqkzuM8zeLcFbhzPhfGKggfXBdX6octge13K1KjKDd0F+QxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718858963; c=relaxed/simple;
	bh=kGnPt/8/GRm4SPEu9920Ypglf3nDZ7p2A8Yta5CnWk4=;
	h=To:Subject:From:Message-Id:Date; b=Ui7kRBoriollvpiNyLhOa52P0tO7Yeeieng1Lgt5g4oNGNnve7LmAZj+1Qu7dAU5rEuiX7ESJ11H30W6Wtire6OSvqK+0TIn1LBdwoMajy/HBTIsEl5kBY1aqf9GksVwwih0wgTYsmCyhErTpp70mfJGh325XIejX7YIkP6gMNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siyKghv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siyKghv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2901C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718858962;
	bh=kGnPt/8/GRm4SPEu9920Ypglf3nDZ7p2A8Yta5CnWk4=;
	h=To:Subject:From:Date:From;
	b=siyKghv5mAMxdosmA9ryT4ZJVGtPzExF22XxqZrdugfOuoXF2QqYKPOSY8n2r7bQt
	 6R4KnmXhHrZdkRAPHQlPwW7ObjMF1/gYIlu4a9tT6ZC8EWM7LrSAukEI1VeemBHs6P
	 b2Lx3HqzyaRVH7PQj21rQX8TJ8lR2H/N5kyQG5dZNq46ioLe5oAXZdHyoKaD8nxZTq
	 towXU8RDNHQSY+hksYKVa0zjS2v9izdywllBqh4tysimCIKD4ij5QNWWvn2AAUe1p9
	 33E7xOm2tv4C7M0h99Yt70H+qxTdZEmF1rQaBS9UNzlakvySkfWqY6BOb4299NSi/F
	 5EVz0WxfMYCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE2FC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885896281.1675.9477133154237978968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42789b4b23e9dfc635b684b793114b299e374e81c4159db9d7160573a09dae1e
Date: Thu, 20 Jun 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718858962
