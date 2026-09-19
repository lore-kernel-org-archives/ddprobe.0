Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5983014A60F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789809634; cv=none; b=KGXPeeL+lDDFahfG5UB/rewoTofdfo5E80yQXQqBjFGn5tZIfdpxMLzRsM2gFzoL24sy04ouLQgilTQq7exgdEYqZ462CnmkbEzksKEew68p4orN5r7Oq4pQLQmO9LeeJ5DjVsXevVFurhb166MlUFiJl22aS4L3YKplr4zBn28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789809634; c=relaxed/simple;
	bh=blCTBR3jvMiWni049CTjELrJnMF/0veeayYUlqIXLlI=;
	h=To:Subject:From:Message-Id:Date; b=e7lXajoWZtK1MCRSDCTPtrSlG5obeAoZ+UEw9MXc8NODzm5kNlAucZlnldEB5nB2YmrVV32rh34UOGxNfhrzBErgOfFwVATIw3dhqWXkG//Qxn57io+djuUykeB4dCJOCS0FCkEDo/FsTQbT79QOtJRUBSQ3eF5qCI1ue1EewvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAotWDE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAotWDE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF3DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789809633;
	bh=blCTBR3jvMiWni049CTjELrJnMF/0veeayYUlqIXLlI=;
	h=To:Subject:From:Date:From;
	b=DAotWDE8+9k1TweWQjnCz/cC1M6c0bnNKIGVPkUrlwsxoOAvfSLRdjmYXlBGeVo6d
	 s7XWaadCGNsDSKVo9311PoqnPOZNCxMLRzRJuEBch2VqujO/1W17qzMSGZIeXq5rlN
	 ZDXKLXEQVNH0hvczSTZ9iNEQ2lwsAD/4zcxjBpUAH1dTRX1thsAWyjnq/eEAdipQUM
	 Xv8TJEb+dd8GzyURjOEoExyTd92wKJJRcXldBacX5BnJJwFH9ptR9vL+W48Om7kt1u
	 rq+g3ojREbjA/5iMWzv5cvYf0MEDSzyS9kuDl5ozcW++Q/xCA5X0UpOb0Q3whpvJfp
	 y4GNM/jNjPpAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F7C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980963368.12994.6575782790864869947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a902794c75819d0c3f59cc8e9572a1e05aea72bf45d1ccb0b51b4dd575569788
Date: Sat, 19 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789809633
