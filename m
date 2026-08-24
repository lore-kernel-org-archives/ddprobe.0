Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A58B357D03
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787596834; cv=none; b=XegPpM5zxFLezre1jje/CkSdb70ITX89bVjavyn+vA8aYzK6PH+m2yNodllG7hrwaTt8NBOwNc7lLGqzZDIHjZ9bUB8TZw4le8eoygzVw5pxvAiyJYQ1HXFLDSS+85JNW3AUoBRHzQqaoUqUAFn9wkdAvm901xci3EOg7d6+BuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787596834; c=relaxed/simple;
	bh=E7Uvam3546IBkkTOONh6VAhEMVuczTfKprqzMDxGdhU=;
	h=To:Subject:From:Message-Id:Date; b=OB/NZKURlFHwlrUMrSYmlP034Sya29hM6Onr3DEHN9PN3tGmQLzvAh9rnansUAm3PH1tdXabl7r9UTT3sZW72O4R0Qaq8OAy+gPhqrVIBp0Xl9ix86DFG3FCP3C7QsEQtabbUiB7EdaxtfeLeZxQpYIiyO+dFJasPjnaFpbM0yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKmEbr18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKmEbr18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC96C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787596833;
	bh=E7Uvam3546IBkkTOONh6VAhEMVuczTfKprqzMDxGdhU=;
	h=To:Subject:From:Date:From;
	b=pKmEbr181EwG0KTctaTQqRNff1pZqqI2f4CK5BKqCrpZP8AMsmI9a/8ZjShqE95I0
	 bvdDGWX5sx+QFF9r7e9YUwHFfx7eyPA5X0Sw1rdCS6/UaWrohnOYA7+boPni7H1ncF
	 tkZ95t03jPA1POo8QBCcpDN0VfOWMJUWiQWlb6Xsv8A7jNgcdRvN84PqcaZlryL5Tx
	 3BjhXnvV7yB4rKmYgAy1067wfF2A/QVtS0BKJxrtknPiJfEhjoFpFsaZ3p4RBMW/LK
	 yowQ1gYi5G/3CbqPSgN3qQGa/VFgLDe9kz6j72mYZ6tE16e/LfcSJhlRiGlMS6hxka
	 1v7ibCo3T/jzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4294C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759683372.4831.4702992068387445487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2144ddae58ddd09dd267fb31304400fc0a3c10e60ed04d6dd78b4b48fdb530b
Date: Mon, 24 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787596833
