Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B424C79
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750380597; cv=none; b=oOR25we6fTAseSF/p454jZ6YD8XyQd/6jp7P1P2MEpKXfBJ+XvkpzjFJK7FxHn0Bqw6YDijQtGC/zgBIziHh94z42a8iZ5x7Dr32ThUFVbbAzI8/Rx0srrWE8N/xUSxTASedyH5MI/Q4Hh0oTOGpCALZnvHwVthysB/hvMQQXYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750380597; c=relaxed/simple;
	bh=UUBDs7vhRmqUSfDlhzVQ5LMkRKHrOlmQLoATnmwM6UA=;
	h=To:Subject:From:Message-Id:Date; b=GVkXi1vN0YiGeQqWM1+qTEhw8xUr7TS8TdZnJZ65JAb8vASsSbR3tO9HoXrgztHrqqH5l8MRp4xZz+uyXYCQCApVpQHjs1dRajHTzm/67vn2caCUC2C7RZXYfj+UaJxp3waXjND1I7KI4Xt76beG/0fDXE/TmjvYEPKlDTUp4f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAs0YvfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAs0YvfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54B1C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750380593;
	bh=UUBDs7vhRmqUSfDlhzVQ5LMkRKHrOlmQLoATnmwM6UA=;
	h=To:Subject:From:Date:From;
	b=HAs0YvfCXZk2lt0DbzCBwUpBqPQ1QIHf3VVwJYnQ6ZvhyB4g8effoaXJg9VUaJGry
	 tgHtjlfmJUeyzNEji5aqYXzC63ROHKUGiSAoLXpey3uNw3fSOjkm6umj5rLO6UZG94
	 0q+6V0AnPfE6EDvEkrDFrWuBElr123E2tiQO+vo7hljCmVtVfFRmdTQkkujhrjqfcD
	 aHIU69UBNDJVZAl6/OBhsyQK6anuQbfHWxgtDtxm+2rBceSBMVTyEVqmihKCPAou+7
	 L3XiVaHBufOdqSWHJDcH0awguyVk6R8xqScDFNvu2c0tE2RW1qQEztyOuIFVEtijGH
	 mGY+Wfz0jJgPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926EEC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038059358.2971.15141971601188523937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619287b4446df7aa0cc3c135e36bb28ec3f9fd6f1d55feff4f02e8e8958ea347
Date: Fri, 20 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750380593
