Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2F833F5BC
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791698434; cv=none; b=j1WCtu9eGZtTM1c1Yx+o+U7hPOyPaSXsD6OJ2lwOHhDEKzLZ+Ur+IAbW/ymZ0kCylDttWh9+zuZ2gyswjE8PN9gPQqCGB8K9UHKNJ2xzCbsJvjroVK5ZFbIOxH8aMbqnyXFFU5f0dbnEOlY6bG4kYR/mNEomLbZHcVkakxZxCA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791698434; c=relaxed/simple;
	bh=159vyRIIh2W0yuFRqofAVFzX5H3dPBX8/0wx6fsI/tA=;
	h=To:Subject:From:Message-Id:Date; b=W2YZRat2dmZKkBKg91Truh0Nb3yvdAX+1fSFmV7BwuTvfbmKYAlIIdZgowMQL8XMuhOEkiQs7gnQH6cxitryxyWK2FZHxSn5fYgxwhsxyKAAb0w0IVduPN5JKRA0X97fLFxK6vVp15HnUvudEvm6B/BqYDDWoYI7W80qZHrK2A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5Dog/CM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5Dog/CM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B86C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791698433;
	bh=159vyRIIh2W0yuFRqofAVFzX5H3dPBX8/0wx6fsI/tA=;
	h=To:Subject:From:Date:From;
	b=s5Dog/CMoyKMmaDitmWN/Lb88p4ublHm2cb2+cQZ/9iiYUV6i5RfKANH+J4esFEEO
	 O9PKem+QmnvJUTv0MJfNDqaN9NswQpXeTxrIVch+1dYOYu9/uUQGzQRW7pt/AtPBVK
	 CrUSBbsfpMNE7wZrpMf0lGTeOkj5BP5qQ3KvtSZjzW+Q49foYhklPB6dMtesSIbeWj
	 qK8r2A1KMSmSy9WbZorJ9fo3lXyATN3uh46MawFCLVSZg2t5lV6yi3rBG2l8rfRdUW
	 knc5/Mv0j1mUBtNVI/mdTjfLV118N6U+3sd6D+UT3zuhE0DCbX7V/Ue3L00iIm2oNx
	 e5gM4KomBkiYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C7CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169843368.31294.17523995046587917395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662a278b3d280334883244371ee40ac95b84930014918c044234a67e82b9ea95
Date: Sun, 11 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791698433
