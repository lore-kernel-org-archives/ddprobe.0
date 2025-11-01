Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B73560B8A
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011594; cv=none; b=HDEI96W4AefTBLSLSLf+sL7CTd6ow282cYGiZBZx4WHY9486fQGAOZUJAiKqs1dhoQidH1+ALfmSjXV5uR7NCyUdqmGPWnGzX0ylzKcnrWESHYeTW1KzMCirf0P6UwZd8vcneW+GWrpf2GRmSEYLlqNDhsDRc/1j0+R8dSHlyEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011594; c=relaxed/simple;
	bh=5rzVRoEIB9iwUZPjp2PQyIMzryyc70pSh5bY5EctMCM=;
	h=To:Subject:From:Message-Id:Date; b=mr5H9qRUTim3t7r2cDNaMZi3LwlTb1NpqlSeZ/3dP3EKXPnBsqtcQWFq9cV7n4VQpiP1O4IqdWTd8gSLrtdT29HnM5u0/Z70a/hQJcjjZscySiQrIb9akeaNgvFIjaXtENr79oD1NpAD11puj6ZOKULUXoPKCg0DXto1XFvSJGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlp+4D5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlp+4D5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD86C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762011593;
	bh=5rzVRoEIB9iwUZPjp2PQyIMzryyc70pSh5bY5EctMCM=;
	h=To:Subject:From:Date:From;
	b=rlp+4D5Hq5aRkR5hcCTkpAlgagfHwfWuuVmBQI9+Akd1fWExyikVNNNcPHT8f+cvw
	 1FxcHckQtS1T19mR9F3ElHtDSWbLjT0K7DPlbviYvcZaW+frjAlkprpjzF+DElWQ1b
	 gAu8apY5zqeRIL50AQLGlbGseUZpMJ9F3A4UUWJRA5UjgpeHM+PkQNW549bnuvKmnc
	 lSRYbPxrgtvCPw+FzY0LzeHLnnC6rqNUDHkh9TrxWa6kH/KtcqkdImTJthPaWJHtqh
	 qCuqWuZ+aiYZGht+h+7hcMceYZA31tI8GsXThONwByKq+RHWIHdJPcCnPPn57sZHsi
	 RNhfkZC7iWcfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9842DCCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201159359.12005.12855263577844259407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a2fca7a5c9b525609b611c904ebd81773b654d325815976714e22a21502c03
Date: Sat, 01 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762011593
