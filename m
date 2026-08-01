Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC148986D
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785552034; cv=none; b=HvGrIZ/aEqhKwsidRI90y5k/qIdBYpczuulAA/dY31hSAyG62KQUR2jiqjv9P64+mVFMg5PX1v7XbRMnoT9Rx9tEi8jWa5CzCCiAtBAgPYAUROomHh8NV2cYOZxagO21njELFFxzuS7whJFLgd9I7nUULnVPblK9uNcrtsuLV9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785552034; c=relaxed/simple;
	bh=N2PsYj45En1FPviBLLxDUaZSEUKwuEh1Nzj6gm4tVEw=;
	h=To:Subject:From:Message-Id:Date; b=qdAZsRMH9BVgnmDoBctpDaYRQEEiL33V/Eu98jUSn92E+/J6VYirhkn0yYUvSIK6NXhmn1gigul/pFk150i7MfJsVFHZrWI6OMw9BvhfhhH9J7tqSxhYD6Vq93J01gNq28vLp6GNkAQBQxzQVN2238JkHtiAn1TL95pbKqei6kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtFiJBzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtFiJBzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D570AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785552033;
	bh=N2PsYj45En1FPviBLLxDUaZSEUKwuEh1Nzj6gm4tVEw=;
	h=To:Subject:From:Date:From;
	b=OtFiJBzp3XRwnZ9l24yNQsuuhSXhoQrKsWiNZJoasfMRGv1X3zV4fujPUgztiBEUD
	 T8mMVaQglv87MEN4WzSglbQkfS0ZIJUa70R+bK6xrMcit/eaRkL0d27//gjcsAHETv
	 CEAJvESJSiQlgcO1ZmUirXLR7AKN0xufnewQu0Q2PcGNGgcZVz6ozwKz59v//+xyhp
	 Wa3BeqYcsoLRezNgiHpCSxwBxR2qehepkCx/DTUxtKI4LPRk0tYYDFiMWe2Md2RDmy
	 9TmqWx9dosuzJTOVsIG5R5vsJuInCiZn4Kuc8Q1C9t6FixJjSjVZOzUy+eKogIJ+Zh
	 cy5L0VnCJB9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0198C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555203370.16518.14605315019509697206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf366114f79196856147eb47a9f6a2d0f8da78c5e3170758216ed7d2259f6c96
Date: Sat, 01 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785552033
