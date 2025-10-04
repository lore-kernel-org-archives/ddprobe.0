Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130561D5CDE
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759594194; cv=none; b=q7SkrWDJI1GiDbVc0j1Ey1PU6fsF9lou/flMi5qMwJ+UMRBcLa21zKA+r7OMYd9qXG3d5xRM6IWSaS8qZodLP6xEq4pPtrF44IJFJqL2JMJBVwfTeGf7+M9489F1R3R/gGp102hSvEKia3AQ+HY5HLVubumcE4u97aGnf4Liq2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759594194; c=relaxed/simple;
	bh=TiO/p1IgqUEKGGri/7ujGO5BNGX7emj/V+yg4ILUkvk=;
	h=To:Subject:From:Message-Id:Date; b=mguZ1SKbQ+Ww0Y61SV4umeA+i9LmWjIQVH/pLBnmSdkyALtajz6QSf0qdt2rP2czLRBzQJ2PtcmbNVbNPgiDHFfA2/OpbyUWArGqLLa0iv/cRC3tibTcTy0j4jsKXToIs1IEsQSXUYJ96K+CLuF25sl3CX45ghVclW62lwktNSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZgwQLon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZgwQLon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBF4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759594193;
	bh=TiO/p1IgqUEKGGri/7ujGO5BNGX7emj/V+yg4ILUkvk=;
	h=To:Subject:From:Date:From;
	b=OZgwQLonatSxnLfdmrR2+QQEmz7QUNhkS1Cd+TkX9RRnPxnAgxT09wIynuyCCPiDP
	 lkh3R4D4JCHspbIrumyEJGqOUfKNR/bcB7XFYKmDbUYf8hTFNlvtRaTTiER4jqC5bX
	 Z4kJEhTf9/QhaekYVUn94YVBJNCno27laGSNGXMiSYJD5PMKzK5AAx9rC44BRsTZvY
	 rv9uZnyMk3zOkm4W8qBsD2uW8dI+maBTSAlLby36skmUQOwkV1o7qWlVcnaK4AIssa
	 RHJMj2u4TBGXqvQtxZDQGl3UrRcHz214eeH9UQaF+8B3n8C1xu8lKRtxyuUf0gIUvS
	 S93L5fN0f1LTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC3CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959419357.27009.1341669178154662849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4708e92db684c1d8761a11bb8bc8d4fe5514a5ea08a44810fc727e07557577c
Date: Sat, 04 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759594193
