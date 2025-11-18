Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D87B2E6CCE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763446915; cv=none; b=R5kvOnG2p0iT3hnZ+IgM0LdwO++7PMula7JlQ3KEmljAJfjEt/V4w5uA+SvoIaEHP4tR5SK0UV4a7wSBL+CHn6jAQukylkuyQ1+3t34fKfOiYfLlUiWapa994UXMpylVp6jg5/S0El2us7PgQi69y8F+1/1SUm9hv6Fm/Sgupec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763446915; c=relaxed/simple;
	bh=XIOzqKyx5jHpfu+jiSQa1ihDrhgM36c6OAJ9YUkVl14=;
	h=To:Subject:From:Message-Id:Date; b=XYffl6Q1GXtHw6IHcIJQu2g4p8/HSKYRxczA2U1aD5rSvRqrLb5ozTz/p7/lJVSGet1XpGpkvJU7wpVMHEwUK+i+kpHpX8uGqEimT+0zzpsH4EIPiX3HULuqLGxApMpm5/+60HXtLyY8wzV3MhlB1z0dpNj7f2dgjsV2l1eSYxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAA7bEpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAA7bEpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D56DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763446914;
	bh=XIOzqKyx5jHpfu+jiSQa1ihDrhgM36c6OAJ9YUkVl14=;
	h=To:Subject:From:Date:From;
	b=HAA7bEpdoGoswl/QJ5/ozr/Pung+HQG8TyESWcBb8c3C+4uqjaO9yveAJij4b6M58
	 ITZIB01aFo6yCVkqmA3sIaqS6QMHAhNFUiA2jY47+oEEMRArxotaOsyEr2L3HoaCGw
	 HdknDdXkwznDBwyJuPvkrEutst7hTG+kFykrrI8cHTMrT6x3mpSqBkotc1ml50nNoW
	 zl7qVQKahkgReXfs4Ea0E+FBPEDvq54IMfo2ev7iz0sKkMxhmkHqdT8qGNaLZyk1j/
	 JZv6pHw77pT8AmUhy32OciIgiM9G0JNOo0aBWPEW8q/6yC0MItyJwC6joHjErHH+e3
	 3ZhhxjekO6Wew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0361CEBF97
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344691363.5299.859847199889917708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270f238f80ad5a235db1dfa82053bf4651318ad3c7f6f74c0c6c7b9e3da0f8c6
Date: Tue, 18 Nov 2025 06:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763446913
