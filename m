Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36551195FE5
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738962354; cv=none; b=HIAj1LMg9i+/H7Inw0DxJNJFv1NvMqtMRPZhg6/hPdPNJeei6922UCjHCAw4mTr4LvYCq/KunJE4keFjzoF6cTzFG98+0wYTjS8nCxzZ8NNsSFuXWZ8C+z2F1PEzv/WrAcMJawonER1yL3DTq1UKEyqGpBm3NyrcQZGnuaWWd5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738962354; c=relaxed/simple;
	bh=USTFyLUFga2r7wyN0cu29j4f36+n5POZcZriyFkJYIc=;
	h=To:Subject:From:Message-Id:Date; b=JKDMtnP49KXADG+HRsmaxWR2U4YzzjjpZohxC0nQny+33o9M9SBmZO2/IWYIICjqVlQc9QdTwaNQvC3hFoLduuHkL+AhJmOdXAEq4w0DrzuRiUq7uGv4dA7he3mXk1WXInLmkEouxUNKwkGBzE97JYd6BU68EHaAFYwgwaOKLoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGAk+8gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGAk+8gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C2C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738962353;
	bh=USTFyLUFga2r7wyN0cu29j4f36+n5POZcZriyFkJYIc=;
	h=To:Subject:From:Date:From;
	b=iGAk+8gbHMxgTdW+k4D3qrNSVmyJ92jxv/7Qdxtu+T5ZodmI6FIZ7AzKdtjO3tHCA
	 drjsIyzZhkwod48WuTJjqWu//wVkxrQL8MKFwhmQGWR4oHgJHhpEf0fWUqchdOpKUm
	 lZ4/mzgSLk7qZDUjDNk1V3QXilgl9ZWWoXRSr24+fNzMaFwoeYBHrkFes7J4ZrENOK
	 kMpJAxjie1uIwNGRLkURE3DKFlkiIlHpEoOrzxKbgFlRdLRZShxD1vyWx8CfDpLCps
	 /8oR/1itprai7Nk4jfSdBT1EPuufZngpIxXS0ERgcwT8AQxIRrhUjzWDCenY2qjimk
	 Mw4FRlZPKqFHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901DEC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896235358.19506.13562495638829773975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e0d9564384b605f69d0852213e61aebaa87cd0e3b03f296c3969ec7a3f3489
Date: Fri, 07 Feb 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738962353
