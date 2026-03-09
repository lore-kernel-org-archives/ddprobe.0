Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C1A31077A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773038694; cv=none; b=XF0riZqSV3dRL3o8IdIJbbSja2F+QXDG93L54GOPJJeVv3J5JhJKzftPlj18/8qUbXldvMuCBwpXwapnOqShUmh64vh+4acVJefKIDzir1iyvOmrrkOQL9Xu0THOb10F9yjzdxq22lpDU9/ppjriMd+rN8T3xXrVWTK3XNd/FOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773038694; c=relaxed/simple;
	bh=TnAJWKnJ8WgHrpTkqz1L7s6ru1C3AJgPYMAbIuOGbbs=;
	h=To:Subject:From:Message-Id:Date; b=AOhxTJBFSiiqJJVoCRcWLW1ZVB6k5rzodY5t/DRxyilQtysXndbNBizNplX5YKDmH6mhYSRo0KXqIDHd0zOG3AI+mm9jjmDEcOU+55/iLDVEIasKz+Cc1EHcqE9eSMN1P/9eHUQdaKg+46YRYdjmt9hCpG/kY/RVHGMiXCZ7ur8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKfcJYfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKfcJYfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AAFC2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773038693;
	bh=TnAJWKnJ8WgHrpTkqz1L7s6ru1C3AJgPYMAbIuOGbbs=;
	h=To:Subject:From:Date:From;
	b=GKfcJYfp+rBg7p0AA1PBqIwhCcIOYgsUHczHD6A0rMSR/FLVFQcWwD22kIN/Hd2SV
	 ebuCwWHOcCAJUAZ4DdVZImEKo6npsRVthy9k+dVWrTsDptXYju2tllXM/mCf3mMCRi
	 dpT4wmkTdr3Z9im5AQHiOJSUKYTUDFq0GBqI2T+5t+g8dFVCkvArRNIk3L4p5sXSWp
	 qpSbe3fKmzX+thAkzxwvHbXz7e9y3ZPXCHs7gKvewdK8hZYVeQ449m1CsmfqBEkru/
	 I0/y4Xsw31ROHH/lt4Nmmm9U+NkrNbCXPUU033XuVJT+O/43/dDjTtjKE/uJqwcozY
	 fq6B4NPiSzLcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C4EF36E5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303869359.25327.17730243912892127617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ca0e056bd4551dadc5934013a82b78378bde16e896aa4a0b399ed53b17a4d7
Date: Mon, 09 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773038693
