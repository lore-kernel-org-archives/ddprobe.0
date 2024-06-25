Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950B5145A0B
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719302603; cv=none; b=foxatJLg0jqF8cbUf/LfvoWCFXg/MT+208vQpOnN3pW3p9MdL1dhUZrnxkbjr02YGLUVSdVmjKg4c1wyQdnLDzzyHeO7f2s6qCwbXFEQue7z/mPrlL9+VLOioMQSkX6M4MuJqNqKUu5NjhrREkvtvXrWUj75u3qlLHD2MWXqTZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719302603; c=relaxed/simple;
	bh=5cw3QCYdqxYJf+xutkMzH1TSxgBUqtEzjNdXozCASA8=;
	h=To:Subject:From:Message-Id:Date; b=ayD232NEVbUi+I8s9C6utmuXaXfJn1yOvaskFDsHqQsCuVwz5b2Vx3MR++RugJXLHUkmOA7Uhdo8a5kBszxS5/T1ZPLDXbJKIFKC7W+9N1FztpQ4mPRrhJLmzGPuWz9HFTCyaEDYP8CthkKiFPCguKrz0+oyuU59108FuydKOfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3ZAyNTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3ZAyNTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16FF6C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719302603;
	bh=5cw3QCYdqxYJf+xutkMzH1TSxgBUqtEzjNdXozCASA8=;
	h=To:Subject:From:Date:From;
	b=e3ZAyNTdE0uzVL11+KDGrVcMKolyxRf48c/xTlhiB2MLfXegUgdwC+Vu4u/5QEFxk
	 YRighsZN9CLyxhI5TD1vb7QmQxrF0y008eMnABrmfFuej0caevMw4mO6RtLaTZVDa7
	 SVZd3eSKIt/jU5MnN22TxSoSeccLzak1t9C0zolALCOg5dOs+dbnTEtwUol/DlP57d
	 37h1bHDsS6vFjwgpb3KMs8voh5qZq73kpJ5kX6WCC9IRMnFeZVNHHQpjYhUwvdkuaY
	 jBD6u4zWz2iu6qdwwTqN6fgXvHysm9CAXF5nO4NAPLCp2NYy42v3IbPKyz8QLW56bz
	 Y/HJnrxSpMBiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0039C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930260284.29951.861108464697273833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a52a1d3c1176b023d5c0542d97199324be495631ba8a99988334db9fbc529b
Date: Tue, 25 Jun 2024 08:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719302602
