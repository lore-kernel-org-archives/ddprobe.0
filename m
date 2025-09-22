Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1254F315794
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758562794; cv=none; b=sRwVbHoci4z+9WYnHQ8VQgEgAOl6ytgvpbMHhURGeKCqB51zAwpSeqrHtwaMY5J0baG4Ydy4EOn2iEnRWh78un4OKNrvct6IrpUZU0lSYjrHQCgLa8+NAINismKEws+Cn1neD9om6J0ATtqDxGSgS+ssXhJltjFq8lTXbOil/ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758562794; c=relaxed/simple;
	bh=katC67caxibNt8eya243zYfdDN/efkxMD10NqyDDKys=;
	h=To:Subject:From:Message-Id:Date; b=bsJbAmh/n/G11Fyotzt3Hc7pfDKi1rIK+A2YFgUAaLl1wJmfJEegq1l9dQheiXgPN4SdvhjU41h0riVLrb63ncOP/onSGT4a00qzW06iLW28wHXVQojJOSaXklYTH4KvCvvR7vkEh4cMzAGkEETn3aXs8UsoX8XKqlAKLy5pk6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6GQgfDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6GQgfDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00D6C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758562793;
	bh=katC67caxibNt8eya243zYfdDN/efkxMD10NqyDDKys=;
	h=To:Subject:From:Date:From;
	b=t6GQgfDKchx1Sm+vUsllnEvi8zuFr1g9dY9QCzAyOKVLR5/ur2Jwot0OjQE+Bq6y+
	 hNzV4852rzO/kI4/R61dQT8UokmCUczYRUGW2KSfrt/Ap1VamNuj9GjdwEx0FaQ4Se
	 EbQFhTgZbuHC55iQz0/usm+/EdgwBO1NwcQ1gmnjAiqrtGaTTM28UgnB9GCr8V3MBu
	 nzIBEtVK5V4H8VOLVvT07GpWLSMr41yxPIBhLXopIBCN0jJvhZOitxxjc/GWABGNYS
	 c5d21xVw3xTrRk+KRHB2lydQAyPYbZ2WUYHfOuAKSeLNxRRMtVBe5cTjfVvXGewgxe
	 0v5bmJMwfzdCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014ACAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856279358.28828.12227644327515810353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22035994d1e46dca76e6f539ffb37d5dd5764e675d32669d1b7269984d8a5aeb
Date: Mon, 22 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758562793
