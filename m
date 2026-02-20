Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473FAA59
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771551294; cv=none; b=koKJYy3SffX4sMzXQe/gKdKEWZgILeRA5jTymjPR1X4ybeZwOMoo6VLLn39AFwD2GSjehVanblmDJE18kTXXRScf++eOQcW+vURsteTGCREBLoLg3XiakjgtwuVAiXDfM5FHHRRQp1yOcw9yJ9lluN4psGaJ6SUlppMU2VW4vKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771551294; c=relaxed/simple;
	bh=7c9xjrT/xEVitTdBfuOLd5UYJ9UBZy6eeKAJok3pY+4=;
	h=To:Subject:From:Message-Id:Date; b=EYGINi8B4EcjaTuSeqm3kPr/XrJtTiIA/92BRUC7O3PHdHzzeHX1eSX8mOzWVhwnRrweIYRsHyjf2eHPnXiOTCZsigtAKIUcsinbIl8VXwMz3kVaa/bD8Qd+XWwlrjkODS0UuP8762aAYUtPLrh8UvrIx/HdRGDKPn3siFd/USI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQTsdckv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQTsdckv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30F2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771551293;
	bh=7c9xjrT/xEVitTdBfuOLd5UYJ9UBZy6eeKAJok3pY+4=;
	h=To:Subject:From:Date:From;
	b=HQTsdckvtTnkFNgMq44qcFGsOo53LgGVuCPTFWG0pj6vu7DKm2uNuYhNaZGvDc4aW
	 7NbnyqTuyDlTfftXimMofodxU9ucBKQGXBaGdYTAG0l79LPJfjigerWZuDkkUp96xT
	 QpAO4WfgUEQqYsxgP1Z2CyxGj2gr0tq3gRWM7s1wDwgt+HvI5xD5anGcgIZHvXe0ia
	 lHwPMWbwhk52/VTgsSn+q6ACIvIBeOylkOKGcA6iSW2vEffjd+5mUUciMfmZaeriNL
	 hpd0Zf6+8Se9zzWNFYuYTdOyN4A1sqVJhqa9Llcr7Rk27fqinmdv6GLji5y8mKKjV4
	 2vmYkZ2KZRxwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97613C531EA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155129359.2994.15413537440452089707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324388113e4dc4285c80917faaad4ee473e18ef02c8d194f84fa38fc26a8850e
Date: Fri, 20 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771551293
