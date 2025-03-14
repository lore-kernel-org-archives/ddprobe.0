Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4738813D8B2
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741933734; cv=none; b=HEFSUPhjy0nSI/DYoV8cnqbmt+ynchezAqjGAnGG0u5XsOT+1056eJ37XVVmCmViUNf/wcKm0KeUtb6Z9sYTR20BF51F/c1/XE6DhzqA+EHGdm3HKqZILI2uJJDT+eQ5Ui0JMRO3XdF+LqZ4qx/eGmxLf1p9Wjr2xS2ga2EOFwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741933734; c=relaxed/simple;
	bh=L1Rp4iBA/mTq7hGtx2B8GVFlFLXFb2axHySH/svTkiI=;
	h=To:Subject:From:Message-Id:Date; b=MLgriHTb9EWG7Au18r1ebQeldrNpKzK2L8cAlNoy8I2zbFauxRtN6SMbx7nyo15eghhZvBu2448HAPAIf21VSS0tXuCjtWB6MIT0Eaz/eYqUJfmoNTEICHZSMP38eWQzjAl9P7VaZ4phCAdMbtz/42tWALfgt6/C7Qqi0YJpNL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2bWjF/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2bWjF/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FC7C4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741933733;
	bh=L1Rp4iBA/mTq7hGtx2B8GVFlFLXFb2axHySH/svTkiI=;
	h=To:Subject:From:Date:From;
	b=W2bWjF/M1w7EfmuRzfmNir4x38QhWo2LddeNdR/Do0CHO1t6U4mEX2aefHRoizrtx
	 RSjeNgPi6BsdQZDOBC44/UgcuKdvJbzR/uKLeGO/NUSMFCsADZySEGvuawQMRUVtmi
	 EeR1RAe9dP4b6QlScvwQFfP6n5JWMXHRR5BTpWEJfWow+Asd44n3XL9yKL7uhT+s1V
	 dtANog7y5v/y9M1IhRPQLcPA7sS2IGPnomBJZiRQ16qj0xmtqdIjRZOEWju+2brpS3
	 RxFFP1ajdL822yc38QzLYDseJt1ON4+h4O8bpBaoXuG+Gc9JqfcoPthfldIuZICj9W
	 NvRGRCw+DTOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980BDC28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193373360.14820.1212164501615357611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dcf75512ae4d754cdd0dfd6e4f755c3287ccbf807271113b62971a4f2b3fd1e
Date: Fri, 14 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741933733
