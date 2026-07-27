Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A423DA7E4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785136834; cv=none; b=BpEhI0JF90cy+w0GOkm3l0UofYOzWqDUye3KUb9lq3dtJfixleW2tvmCrtQlR9kz7G0MIZzWzmtQZTGivRXANoiE/gsUvYZPe8cj1hlEtbfHQVKJ833M5/DYD/1hUkat2eVwqtgTQx6xKELXSuhWqxm8lKjuEJ6E/pnOWjrLJCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785136834; c=relaxed/simple;
	bh=dxRYTqSTO+OvxaD6+ZzQr0vDIC6xP2OEl8tAhJE20Vg=;
	h=To:Subject:From:Message-Id:Date; b=Xft3tXiIvphw9csSIk++c1YHd4YMfgpt3CrBb9LDjjRkB+mLpj5oSgtAFbHcmFzO4tRGCrsxUu7gVVTvRzjy1MeawF02ZtUmxXRaeVlOM5xqsPqD4696K1rMIbIZbaeOo0lb1ZYMEVkrAcvAelkCu9gnMRbGIFqMdgWAG8+jRqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DT6mPeSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DT6mPeSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB42DC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785136833;
	bh=dxRYTqSTO+OvxaD6+ZzQr0vDIC6xP2OEl8tAhJE20Vg=;
	h=To:Subject:From:Date:From;
	b=DT6mPeSXT7JrZ7r6Wb/WzGDCCPPNZBMSUJt2ucWo/6p3Y+96Nb/TggSCCSPHQxBi4
	 l2qK5AeRGYgTuFlQ6+M/M9CzUXv7UEOHNwq6djBRdUKNF2sGG0EqUI2ErUAhl2lYnS
	 v28L7fArgw+7m/bBeMgZZfpRNlP62A3Gh6DHgNqqT9E9tY4uauFbUv2ieDEvZXEMbJ
	 iAKonQedfoXTZr6sv0FixkaN7wFco0c+EK9dv12e83mLnepF7rRUgHgyUyJisq7Que
	 RTUCeXkiYI5JcAVW26/4dbHdYh+WwSSbDaQV7uPjonNs8fkHZTLxKxbwVuDeIAX9jR
	 chUE/gDLaY8ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A967BC531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513683368.32110.14501773891135245631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56af9bc7c53277ed160d24b8b028d435c7cc37ed4dd7547851351385e223a2b
Date: Mon, 27 Jul 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785136833
