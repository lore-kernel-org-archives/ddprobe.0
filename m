Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257BF275AE2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749815394; cv=none; b=iO4Z4FT5yGR1pfdkcfyC/8pA14FESSjtH8RAJiFFJDiWL8IeMP5TnqMIQwOVd168sgd5sxKry52fkFOtNnWiPn1F5jYnYbWV24Mkk919em7/jw4I32GzLL8iYC6wxXDOTSz21ou7EXQJ2cQ1VuTcWHe73WXd/Fa9jK/ugpZeWNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749815394; c=relaxed/simple;
	bh=lWSC+ljgjOoRr8J4jQ/hPmKhARscMZQxYRDATEUd+Go=;
	h=To:Subject:From:Message-Id:Date; b=JmrsM/yov+VPPBKXPaD2jspAFOxgX19EY1JsC4MJ40fkqXLSJmVcE2movYtp6xnWr8kV+v/HiAbjIs3CZf9Hib0v5qmWKEwU4CbhudXWZ1x4/gJOHKCWYc8Ub+FpXAQ/tPF5IUETNe7sYpvdTMq0HkYiDXlGYvszqwOTNCvSRRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLg+Ij5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLg+Ij5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 971EFC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749815393;
	bh=lWSC+ljgjOoRr8J4jQ/hPmKhARscMZQxYRDATEUd+Go=;
	h=To:Subject:From:Date:From;
	b=pLg+Ij5sel8kcr92jAW+KadN4B9gE//wmG4xIIxVUmJj9yqx8ERWZXsguE8YSYg+4
	 wb0fvRIm/vHCilJwel+MRIm3OlGAz0S07cPJqxe9u9ZmUsLtzBr+ru0vNwQjLOy4Ar
	 IT7+9wud8lhP7chqvfgCRQEtXb3WRvz1DU17bzDQJ2qohxh9yMQJnG6U6oXxnsSLyx
	 W7wlBo/9s+TdYwKRdipWZFS56SgViAMpDW1lJwR7kSdhU5iF8CxGKH95ybSQlmkKka
	 M40LWsvM/sGTYRQYQG9ksocE/+mnBXI/t5mZdbKLJUgSS7Bu6fmahiF/crWDtKoT11
	 RgjgC5Ng3Dlzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90178C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981539358.21259.16172725983196618635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e75234faf520f1fbb53fc2bd4c285b6547130b28de3ce732181199c3cf8f030
Date: Fri, 13 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749815393
