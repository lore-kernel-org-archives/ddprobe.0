Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446737A821
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784653714; cv=none; b=oBS/Tp0LQ+z2RhjEb4jSnciv9FTsHOM+eLTPkPtfbxASW8b4QDEvept3MV6+wb/OWt1LYGMjlxgBIkIQXA38tKxt6VXUFysjW+x3TDO88nm4WnKG9ENhYPBZdBtGKlLIb3k7kEwspf7XQPfn6OvHDq/VlVwVVFhSScxwH5xEz58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784653714; c=relaxed/simple;
	bh=Rb3bhNU5mQKthw6YxXIg7AOMBdNf65IaHRRB0/Bhx7M=;
	h=To:Subject:From:Message-Id:Date; b=noBg8mCIavju5Tq4kcbsWCjVnHJRl670W3zFB2HvbAEfmJq3X3whmNiti7AjVw6a9DiyhQlNY3wJc8O4cWkdhzC5v7II7LBCdcrVrFWF5Xhd9w2FGBAyjaMAVvK9oXsdQD4kEG6Q8MbXr8Kw+sah32gKKs5Y5AnFR8yM2k/gOLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oeo3HNbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oeo3HNbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20F5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784653713;
	bh=Rb3bhNU5mQKthw6YxXIg7AOMBdNf65IaHRRB0/Bhx7M=;
	h=To:Subject:From:Date:From;
	b=Oeo3HNbEaoNLWTA8Y5TaDW6GyIvciVNuP5uSWPAVDOjOWjkw2aRnVjxg75b1ekNpj
	 sPSB56xtrTQ0kxyoZAaE3JN9/vTrefzuSD5UFE/1OQXquHwHqwg86cIRyNXjXjmZ3e
	 +Nbt0KuF97OX8AD56Fn8bKibqSbxgzbystXsEq3rCXRPE+oeMUXXK1VXA09gktrUcz
	 1C1pJ/gu+J+Mtl+AmwA6dorWp1kD3h2T6FcbQD7olQh4F6ePiyCzDe5VJ+hKhxQSkG
	 TDhpoAXKaNLRLaLqlAwTv9gpL8b1G4WUCVC9QlQC9du3GHwmSr3RMehLEjT0bNyQuA
	 WXOResw1CunQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF93C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465371369.8408.10964939820006012881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537712b12d3b19d34da5fc9b8485a2dc5b9cf174c4d7932b37c5948808c927f3
Date: Tue, 21 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784653713
