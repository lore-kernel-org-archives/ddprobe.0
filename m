Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A16513D291
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724715954; cv=none; b=s9nVaLrGfqExfsD9B7QRa0NHl8OSpqFF44NxSZ2DZk7Mw93xFI1vTN1PLNUMh6qDfNNh++ma52yTWiVYD3ylxvL6a16Qymds2gkIW1OKtnFDpW8ACnichGa2A+l2BrelnASQB7n1xvG5ukmu44bXhzQHyc1jnhtDZg/gLQHBchI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724715954; c=relaxed/simple;
	bh=kxycyNwGJ6nLbVgeTffjiTZlOgZzo3N2bffN+VaQD1Q=;
	h=To:Subject:From:Message-Id:Date; b=gh3W3Gftmr/3XmxSZSC0ekrMGS/mUP4lgMu36UHLryjhK51ETakMUdiEbYcKVyadVu0B140ps3yMzvkj66iFcPsPaa1kWB0usQOtPLU6OemjBOvB5EEciAIrgvxSqxzSC9RgdsLtWq9JDkqcfY4fJkg7JnWqeFDac95m1IVUt78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8gCg2NM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8gCg2NM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8FEC8B7B3
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724715953;
	bh=kxycyNwGJ6nLbVgeTffjiTZlOgZzo3N2bffN+VaQD1Q=;
	h=To:Subject:From:Date:From;
	b=u8gCg2NM9Pwk0mEh4n10ImZ5T2JoNIAxsv9uPE2tUttob4bDisFHYu+nHckuGRwTe
	 Fb9VhvXUGx15/UelUMs+wkAB3Arc5k4+1cYV4u8fEXRddNc+ufEiKCV7xJcqxRErfk
	 AVq3GdNE6OKVvNbzGvMvpmDGMQN82kT5WH7pxTZGSD+WK8n1xmIcLUrv7Z2sTH/kNC
	 m+UMz/V93cI9/MIX2ckj+SfbqFKVRJDH7bcLGB9+DL99UsEba++t7/3zu8N7zGaNl9
	 iJrZsHkFQFjIdSI3oQEGnMiZP+EpmdHkBDC3kG+PMJc27TRSFkbSbPYjQ8m1EuaM7R
	 NlZzloYQeCbPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EE9C5472C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471595363.2139.18260192220261991146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f1495f209cc803abf9ea1f50a9a0c14b1757ab21b0baf6d2fbd4c45a983f2b
Date: Mon, 26 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724715953
