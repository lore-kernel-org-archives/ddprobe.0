Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AD21C6B2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728100554; cv=none; b=U3a9ZSCY33ciCx9ZIEObyJNl97/GVcmtmy6Zzw/Apc9gvTfpA5IyOAyuCXObr63WS4EHHH5TgKyADy99RKAhCAOt1BLjCAgsgY3QLL7qRZc6Z2WZsxMC0ZRHV0mXC4nnDJSzodbq05dQqT1ZLn7x1ef+D+bj9yE9wvj5Ovx5Sg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728100554; c=relaxed/simple;
	bh=+oacljaqqiRDtPJ8hJ2wx+u6VZ6bCZ5SwJEkwrOkWPY=;
	h=To:Subject:From:Message-Id:Date; b=R2afzFsyaD6Rkl5weJohP3ewgvG02vrMi7ihkB/MeA/Hsa3L9hw4AsNJkfOmpMkhtGFdsDtbuvCht5mPkwKYMepFEmqg3FzmULqduOkAqgDxnPupMkPf2DIABgJ6BlvPCDj7+3qjGBu6WWTr5dCa+KSNQOkv1X6yPUgmmYiYHT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtO6UPaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtO6UPaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F7AC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728100553;
	bh=+oacljaqqiRDtPJ8hJ2wx+u6VZ6bCZ5SwJEkwrOkWPY=;
	h=To:Subject:From:Date:From;
	b=YtO6UPaBoZyUzKCdG04SEYw3fO3axX9zxTKnJYyfpIWrhaNocPttRTQJaAQGKVq3K
	 2I/Ln/f67rqigzqouCoFfixcymksVu7AelBTUcETNIs1FodOjmFQoMKTbWyxo/Uk5l
	 TJmiRsFPUG8vhA6kzcVlL/SbawR7fFUrgdhmUCrU5G+L7nagRpP0yBdoOOQvnreCrA
	 E+QTEQe+MJ8coWp5cTQA99aYHmp7Szc4p6RrJnCopwj9wXB1H2YXZd/RJ9dJWhTlQn
	 JdVUDBL3M925P3XMJzFCXzTH5gKX7UAmkkSS+cobjnw/yoiwE8Rm2vArz0Rxz76m6C
	 lHKp79rkSC6vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AC3CF886E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810055364.17664.8698517573304053883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01cde67f6c48c983601b4688a439b7cbf64026d91162c17b5ce70f9d3cefdd2
Date: Sat, 05 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728100553
