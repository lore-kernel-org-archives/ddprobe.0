Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F3384FAD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744690195; cv=none; b=j83Lweea8px5L3QESK6Iy/HUV1212zzYd2P159LdZ7WYZV7rJuUYN3IMqQGPTP2hoR0ffUxwqtCYCUi0hivGoubYGbMl9ZQScmtnKBqPvjEbv+5jqyny9kMkQxjZ6hGe6OLWbWVxt4EiYm+A/otizk/zzFtsMlk1FW5BmLYp/tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744690195; c=relaxed/simple;
	bh=hBQPogSZHItkqBYmXGKhUsYOWhM65K+4DOS6wLaW3mY=;
	h=To:Subject:From:Message-Id:Date; b=kTv9vWxAZTaiSz8T2TxJBvCpt1/gsAkVxqbFVu4R/eMwkqVOA8UIPTxppbzvrkyHtLnYF3Lx12Ik4iYo3sQM6WJnT017fBVi5KZBvbupvEyOQ0iZtSmYK34W1ryW5JqhJOVXyj/NFlw6dvojPwKphcAqEa1aORpV2aUjiw0/X30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udJ+BGJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udJ+BGJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDF4C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744690193;
	bh=hBQPogSZHItkqBYmXGKhUsYOWhM65K+4DOS6wLaW3mY=;
	h=To:Subject:From:Date:From;
	b=udJ+BGJs6NsbTTPWmDw6sN5tjJ99qoPRQBAaCICKrCai5pyOK/HqIdeEZZcnGT7J9
	 kLyn/IuK9j6Pi0ivGClZuHydBsTVaa9e44jsfcIZgjBHqR16m1Es1UrB56Bbj1BmPr
	 ygWgebGvepB3QRuyO482S+endRiKtVF4ZidwThallKfIOM1YpnnIHVzvgDQuuMXgii
	 Z3/oZuWYKvCEPsGhgZhlhgTfBA2GzFxHR2owby7Q3CTXEggNs0wF7AU7JMDidnAaDD
	 7n3tVXTDtL+Egw5Ar8eMoQnwe9RsI3OJLux5UTZ6/KU99zoESzoW++/CCi4scUZNJI
	 fiQDTtyyphBnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098FC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469019358.7583.8927584882883349029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b69055691b85e78da052b9196de0b4a49f077689d0d069cd1be545eed8d5e3
Date: Tue, 15 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744690193
