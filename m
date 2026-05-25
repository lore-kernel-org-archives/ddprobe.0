Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383EF2772D
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779684154; cv=none; b=Ae39fF67KFfpoEtQNSzcZpPR5YLg/ZDrpaMubJBIIjtsgX7roWCVC1Z8F0Qxpgu8Q+wj16S4KYWxjDb9sdZg5dnQmddObVf16UlsAL+01QO3bkO5uaOuxUcdIc7gAEvO2Eox8atBWt9jHOOjIkOrS/5QOJy3WloaKNjNgqoZzd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779684154; c=relaxed/simple;
	bh=QKJJfeNymkOX7ztwA7ESPJbmRfoYsps/LjVrgpIN+6o=;
	h=To:Subject:From:Message-Id:Date; b=KZak2GbtfRAx6P2AzrXF3mvgXooaiDq08sSsdgq/UOjNoxuQsDT00qIlfMErceTOFi/WNJ4dNP3Uf/+JPZow+wMYmjDvM4Nhpn3twYFJq7qo2pP1jMCKR0MlVQMlpFIw/PkiQJg9xPOP45KLL6Xt8aXvvdAXTxaonnKP9jhgOIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5uO2Zn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5uO2Zn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D84C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779684153;
	bh=QKJJfeNymkOX7ztwA7ESPJbmRfoYsps/LjVrgpIN+6o=;
	h=To:Subject:From:Date:From;
	b=Q5uO2Zn0JFu+IUNeIa6Cd4BHJSguf9J89uZ7hLOHgGFq0zacsAVop4AOZfs2rjJfh
	 gQPpjqv+wRRNZGsivnSTpBtM171qWgqJrM7W1uMhLiQNkhx/P/E/SZmu4Fe5YkPwoW
	 LqYjacro5X2LLxgQc8FTSQ/fPOCqNHst4IFlvAnd4kkz2d7n6O5H1yg/34rWp+3VtU
	 1+fXEBHZi0tHNog7q2g+qS9bHNzspVS73iD5LPiOWLExQaGgC6u22XEF2h46da53iY
	 FrUM9RWOXkuyrNVBKbcdiP/biNtFzSgYFkZBZ54l6OpwICwiIzdIEwhAwe1SUrxfnV
	 XJ+EkG26tyTnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DA1CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968415368.9725.16715572565275564432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd26cf15ad1ea7c0b6bf4a6ae0f0bc0c1c45b42bff40884033f97aeea0f1938e
Date: Mon, 25 May 2026 04:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779684153
