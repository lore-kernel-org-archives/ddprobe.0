Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE902F5E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720923623; cv=none; b=F2x6SSfKylMMUYKgEicW2luTsfrfsAqC/r0XSnSgHwVdUkEj4u58fDYOxl7Uvh26pJj3FE3IUz2EPj9hwtqvObm3fsAi1fD/O/sMWU/HpRaPzqxRRZpvYo2as8bAnONLXnWMFTbtRrDXIWFzulTjghE9fB4kN3LV8JTG1S/KxjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720923623; c=relaxed/simple;
	bh=RTM9STorZAaV9JQeZM71OpKXAEP5h/kTAqm8TkQDHNc=;
	h=To:Subject:From:Message-Id:Date; b=Q47lUB1Mu9mz0kzUKs/Dmoap/CWrl50xY/v19aI6z7qZ3uaVC03p2VZMrVum0qjMq48jDLiX4uBFn5vhhETCtgmSlz++NvM3cnhqhoiZJABM+RQev8CJhWb7SAvCC2kJdemTpfUfOu8Rku7ZbfWGjvCt/ZfNXDjyv2DY7bQlveQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyVe+qOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyVe+qOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3972C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720923622;
	bh=RTM9STorZAaV9JQeZM71OpKXAEP5h/kTAqm8TkQDHNc=;
	h=To:Subject:From:Date:From;
	b=hyVe+qOxc06PjMHDcc5haWqZxhGaMCz9Dewe1VnoUCtLclNeXxeRKxgaREilQ228j
	 mVrG6LybjdZnh/FR/XCA6f16zqiuy/46mTtecuhD4+m02G8Z+11Ifh9tJBzOd5PJR0
	 yhx+EUxCf+jXc8bbcA5mGybCjU7nK7BBRQqmLrMYZetEhzP7Kmb9hovlnQ6NXm6Cep
	 q4l9DEFLDyk5naah3igo8ktro1wpAxuIFmSNfLtAtN1qBBkBeKB7F/qMOcOoaWdOCS
	 qmWVakKC381QCR+hvi9gY0le86GV/XJ3SYb26BDFjtZ7kTb4wMkmd2wI1zsdrJSDZ3
	 gI7xUCPAfuJww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD91BC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092362279.24480.5595056322896278557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf37df840e2b26342e8dd12f15a39dc51bcdebc4de478b0524ac6640e0f161e
Date: Sun, 14 Jul 2024 02:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720923622
