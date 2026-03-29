Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055F431E85D
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774803894; cv=none; b=KUA1f13BX7ChochwgeGaZYpqFOochWZXChxyDKfcWZqjZCM60STTp1LCeL30WCocGKrHilq2UTit5x+X0/e0gb++WUsvA79TBt8KL53klTL3yyg01U4gxnH9+2a9Di41dtbvNb9th8TJrSZt77eH0OxgCSdmJ4x1fH/3jUwXJAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774803894; c=relaxed/simple;
	bh=/g5I8bk+d+cKlZTC5S/76N54Yz9aSTCe9wLxd7KdINY=;
	h=To:Subject:From:Message-Id:Date; b=k7r4YYnsJkgMhywaIiFJElT+eQU5GsAhVdReJ4Z81W2tXJqNJ7nvVzqwd4LSUTeASJ1xM4TFFrxalgcQ0zFMPeRfhkcLthP23zOifijnquAIE3vZFOGFAV11Y6yJEfSNbyIfv+jQieO7NueVnfRAW3gaIgifOXOz4fQdQjXbvrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmZBGg9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmZBGg9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA746C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774803893;
	bh=/g5I8bk+d+cKlZTC5S/76N54Yz9aSTCe9wLxd7KdINY=;
	h=To:Subject:From:Date:From;
	b=lmZBGg9DXs4hupUFsOxaD/6vTYLZRpkQ/9DnQ9N2v8uVoeekPgbQHDzUY+AayIqpi
	 h7tpH1jl+70+UrqIKtE4xbWm9BUnWaNMcaWwM2btF+DGpEBBooedT3LZLHTrUssVr8
	 /iWwlt2VqWKpk/AdHsiFDdSTrIHrlHmg62E/8xOoiAm1LP5jlEgimOCzskV69UHgSV
	 +FocWEn5B5ssvki2oLeTY7X/tWp0O9xb+SPYpV7+hGelV7tLP5gEcGXwTIKuyIH785
	 403FxnxHOHzqXDLjp7SWZ87NCc/zMif6JCHm0JZ9ciDko8j/X1ZDeZYZ+zNFrAmHNy
	 Y65vdr+cpSnzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97066F3D612
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480389358.8282.13238846684511806415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2250282bc948cffbf5f79a92089422ff6745ea8fcd1eee9e2968f5e16384a2
Date: Sun, 29 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774803893
