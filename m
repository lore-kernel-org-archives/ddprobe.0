Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F13356759
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778659234; cv=none; b=UHcKHIP0ubUZuBF9v4V1P0ZYM0tb/BPUh3OSuixNboRbxyzxwYyj7pP3as1L46xsT9eLS+cSthXdbaeencOAPkOxil0ZQS+T1VwvYIWVvlcy71ScM7AtA/tsZGpj62CpBSY0YHKsyo0jXsQiNRZfFjpJ56XXuR403qJ+hOUIJPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778659234; c=relaxed/simple;
	bh=svrEdBT+xKutqSCXa7y8jtGi2mpimG1QUjMMXg7YeTE=;
	h=To:Subject:From:Message-Id:Date; b=cq5/iJXtJU1A03eRsQQ4fx1a8JcGTWHd665TVIaUromRWED905KftKneqOFXKXMlZxlOXgfwBz69lTEzz8T0B5cwl39/w0VJNO8lkXzSVd9tfGfuQeFMYqozDihuhemKgqviaDrf5WW5br53hPaJAPNIi/nwEKeFvJLnbeg1vz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taKotEgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taKotEgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BEDC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778659233;
	bh=svrEdBT+xKutqSCXa7y8jtGi2mpimG1QUjMMXg7YeTE=;
	h=To:Subject:From:Date:From;
	b=taKotEgJvp445rhEzwODI19236ZbxuUM1mOGoKhNleVwXlHsdJW/4MyiUDBxBncDc
	 IUAEFnImDQ7oX8uSRJHaxSM2+HoWiv4QyCmrMwfBMaP8/TJTDLkykGY0GXJ2WAo0q2
	 iwQAQ+zSMb58wLznxhCpXAKJ54fjnV4NvY3kOgaGJ50hujio266lMnrNns0DnvYNcx
	 w6GpHM8bgoK4muGcZ8C/cXN+VBRN06KS2kzUWrzi9sfYjJzTNOAQ2fY0b2lOkVLrn8
	 JufQ77s+cC94xX5YbLQgkXNDo0LKVMXOkJWYBsIA5zkpCTF8EN14L0ZAb1u8kArQ1z
	 HLTEHMFsD+seQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF9CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865923368.31068.1526070586213092621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9de65eefe9b4d11393e4bc75d1a15762d29a2bf44e3dc6bffeae5327296b177
Date: Wed, 13 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778659233
