Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8B63214
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710737896; cv=none; b=Sznr895rXWYoKGm5elPDt7NMG8ihEvXYZg17uwpQxr/lA72wbDP7d/E1iUwk0thZzMOznCoPFqrTSzJ4r9MC3A3+E0jfcL+damvgSmwE3V3TvEQGIOPPzMzt2w5ILaHZS/X/Z6EAji8/dY4RhXIdXcNLLyspi57+usI21cse8vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710737896; c=relaxed/simple;
	bh=ydZ9NWDFOeStCWasE34WPXRQl57MlsW2rYJMEpUgD38=;
	h=To:Subject:From:Message-Id:Date; b=AegGz+wwWjeBe4VpMa8ifOCFxUVYque8zWl+tyg5YEaOZWA+CeapfqFzIHFLlCYiNXpJUnmCJ8fwLG8pXsSpvYmJexMf4/mF0goGhwcjCmWwbbbgNXKvkA1aOsrtRWDgg72IwTkpOzoRPOX3V0nTpOEt9lnu1vOm7D1pMbufpeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK0D6QPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK0D6QPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B81C433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710737896;
	bh=ydZ9NWDFOeStCWasE34WPXRQl57MlsW2rYJMEpUgD38=;
	h=To:Subject:From:Date:From;
	b=WK0D6QPptGWbQ8jDAJyNy+8Nn5+tUER5u/rrjIGMQYoTHXFL2BpkOoH9j9MlEO1eZ
	 DivmXqzVgDzF7kvBzZXm5gHHZ+SIx249sxKNczjYgfeVNCm14+j93+hEF8PbSnplTB
	 jE8TXyFTYcY6dJ53E92hXY7Q7M0YRypsvoa8LOVkV9h/x+SXb2IZUqQBEdAn+tVfLd
	 BU1BvBxaCQ3eqttBeQ2Sein3+FVssLWecbNRxpv3y+31dkabJplSkfx/RnR4m7Sku3
	 XhCvq5Yd0lFBOBUuHEivs0oPdRmCpYB/fXrYGguwFLqnRhKQJgB/VrziZF29r1bcJZ
	 nX7KmakAeVdFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E552C54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171073789637.23629.12697135615164544064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e29ba82dda862c3dad4be260c88b7986f5f7bab387f79c77ab6723ebea2a1c
Date: Mon, 18 Mar 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710737896
