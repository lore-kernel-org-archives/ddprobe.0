Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D006D19CCFC
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760356193; cv=none; b=eHsPkrLUzeUKVfVBCZxRonWyJPG0TlnwbldhYR7u2HSNMzFChUZySVDiBcHyVYKUWSj+GpFZQwHgCkHVYpU1MEP1C6U62YrkQoFsBV/gb8nuK7X2kZa5l2IWE7yTkY5Mg1Fe7X1RllugdDFdLVSfv5yflLZ9QIC/VEmVmmuhc7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760356193; c=relaxed/simple;
	bh=bPB85lhIQ6mANEe3Cc8q//yTuzJNY6ZDu1nu3do2VYA=;
	h=To:Subject:From:Message-Id:Date; b=A8ZuJF5UTKGTqoW3lor805y5N73iGx2pjvskcI25AJJLLEdBbmJVGh0dGJtUBtUBljGt/9y7Xclc8LOMFYyzPMBtL9Fia03gjSC7zhpBqpOXLjr2rBQs4IRYlC2iw2XeEJuLYgQ+/6gkEHeAwSMJjUY7AMNQBYKZF9rOCwP0HT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph03u9cS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph03u9cS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00DEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760356193;
	bh=bPB85lhIQ6mANEe3Cc8q//yTuzJNY6ZDu1nu3do2VYA=;
	h=To:Subject:From:Date:From;
	b=Ph03u9cSbuLFhO72toX9b0PgF7AJSU2o/V1K6I6SgfiX/c00NuVfZPeBTmLkgMLuz
	 X78ddJucFoE8E/Xx1i8ZttVL7occ4Cfjp2ClPk8Tr6+Jq8i7hjFFWp/DX0+4fHeT9/
	 BLMstKBSetbMHKl50i4ByF2pQl51q+Ys76nKfUZzJTK5MKgh9E+XJpojogmdujtDLn
	 1b9EBsDaUeUsgRyDcXFjDVsTIIgAL5tkD+JDgQgqyyi80onEnEER45l39FVlmlPvis
	 S2URyJtpBoEyBfHXwf0V/jgYwtIdMNLu/fLJ3DV11iSkcf9khl65l9/MU9YGmrg/Pp
	 nuf0//6Z33u4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F5CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035619357.12678.8662896610679054980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca5a68805565c697ff4ff1f3595bd59ae66ff6cd0be8d8463840376b3da7b7c
Date: Mon, 13 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760356193
