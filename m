Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8422D3EF2
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775091934; cv=none; b=M/7b6lwML7V0RW46aT0sfn/iKc5kM/CI8+c+NEVP1cZPeE6Hkzk1ra2tYh2LaTMTjSv6vsmaIaOHlpBmnIPkbshaAK/fYCKlqXLasmIJGY+jEX7BjhrNh8MBPxT+aV3nXvxflfb57ip0b6mLPhzosET4sfL0tUN4KmSpwIXZUjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775091934; c=relaxed/simple;
	bh=1wfdoKE0XmnyPUwi49pprcEYC713g5x10p7mcSeKnDc=;
	h=To:Subject:From:Message-Id:Date; b=u98PJcmpm4emSFjweoZXoedpQoNbSQ7XdDYjCsuT2d9tyWJSD748GkdCzyZYbLcy8md4cXuyTHhKbWzgeOskht3NyoRAEviqgYzPuGBUXQmOr1dU3k0L5H3lJodjeV9FUUT/3B3M5TV7qXpp8hZUM4+V8LvV0G14467bWqqKjYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVNMDYDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVNMDYDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB466C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775091933;
	bh=1wfdoKE0XmnyPUwi49pprcEYC713g5x10p7mcSeKnDc=;
	h=To:Subject:From:Date:From;
	b=aVNMDYDU3oho0gijXuhH9NqP6zJc/HgSD+MFiW7TlFU16VG/dfLwIhiF5RFLwz5M3
	 Ebn2E+MP+rmO1KbGh0Sdpy0Yk+ONA9MWY593d9C3FUCK2Ix0orovkEoGyelvYA3+4u
	 foi2XQlAaRQay6j9nG308JyZhXfI93zakOAKmFlVvZze7MMWcZGNgittfWfgyh7iUW
	 5RpVNIMxMczgGbyGsQIO6mYokOxw2/45QZWm+xcED1Osn9V+AE2qAogNIU09PnOHFa
	 ZgFRi5s38YLLOdyq8bgiQ1hRvCbjT/9YH3fQ+XT8bLCkekd1YunBc1+EfLd0l2qjN8
	 GP/cK+6BU/8Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB72F1112246
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509193369.22116.10884663626864231550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c7d0e5ce7328345359e94a6bafc06cd77c5437308265b095818b983f04ca1f
Date: Thu, 02 Apr 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775091933
