Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E71C346FB0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763574714; cv=none; b=RoZA6MPptEZJXjMHWKAiXDY379W1q4yxMA2t67p8kORMZM+u2L1PFY5rX/+9YTG59V+QPkaug0si56rQu8r2ptMhnM9YC0lzZTyeQDsRDYd1oGnG4nBR4fhcwV2movEVdNC7p/HC60pjTi23qXIPymkUDq8aqSi+2V2nl0vVfF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763574714; c=relaxed/simple;
	bh=M6w0oHWwY1reGINd8sM9Q+maV9c5mZ5ZOYXRhjXd7Zw=;
	h=To:Subject:From:Message-Id:Date; b=gj/S8O+WyXXcdkp2aaP0YCQMYOXyaXRzH5OE9ESHAr3SbKmy6iqRdkgfUPSQQBOup+PowffrmEFGSIuA+xxxKwS7Xb6Q+Q0Xu2ibyriPn1ecwsfTe4obD7SVOjW4KHf3pJHcn9aUBxRNtRYaljEitNX0nX+tlkudT6uO48/4vvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXiSCthP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXiSCthP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF452C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763574713;
	bh=M6w0oHWwY1reGINd8sM9Q+maV9c5mZ5ZOYXRhjXd7Zw=;
	h=To:Subject:From:Date:From;
	b=eXiSCthPHnULfIem0o2DUlZwJNrGoxkcB2dxEi/P+0Q9AGe/CnxY+/h2Bc4qQt0GT
	 5v+slXq5a68a2cefy6o2OI6B8Vzkk4I4K8jSAp34WO7gWapTYGFRhzm512aVFZulCh
	 czMEkRNa8CJKdu1o0H1wwqkdkIqsgKUhYZcEhgiTuVka8b+vsbXjygup7ZNCOyEy8B
	 qzPBV40vLSfdH3yD4osZHk/5YgCZSfBhRkoxbM2QAz0fSdtqKb/V3XqaH+zCYaijen
	 LJB5/HIBYmHeYoVJFAVm9+g3C4oA5Taw0iQw24/l89nEbfY9Bmti3lyS4C2Cz6pTlV
	 YogQOem0qPuZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B03CCF58C3
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357471362.6560.14438858060633679183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29a69c7007ac9edb8106bb8dd43ccb90bf99de21c856b5b6f32a3044552e959
Date: Wed, 19 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763574713
