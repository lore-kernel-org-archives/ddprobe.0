Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D051E5718
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765377774; cv=none; b=MF1KaSfFk4R5JZD69yo+FdONhr6t0fqIgpqySTHRua8vMsB4neLos8Vigk0UdcPc+nZ17gs627ORjDYwy72Gxm4V8kznmWX8KNQt38GZUEAzHFHi42I/R1RXXYzrof17Wa99GIVT924zd163EvLh8zksy3Ma/xyhaX8kEyTDQOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765377774; c=relaxed/simple;
	bh=X29/gvbg2kCZW+KyrCB+UKtZKLZF0pKgAbB8+Maad5E=;
	h=To:Subject:From:Message-Id:Date; b=sQyR39aJULX1UO7MZBkPNuHo8rcjYiIs5zo/vI6kWsKA0OMOQ1KXkHO6iDXY7D2a05+MoSXJEjeIiK/1z8RbMO3iKGGj9akKJz5JKkSE5Zd6f0egHZRKjMV2pP6Q1bgvnvTngb3RW0Yvb23SRW/IuM3rj5B3nZ6/pFi1i8Qyg8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfR51dBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfR51dBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C339CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765377773;
	bh=X29/gvbg2kCZW+KyrCB+UKtZKLZF0pKgAbB8+Maad5E=;
	h=To:Subject:From:Date:From;
	b=JfR51dBo4bA9tvZKFj68lY8EbUOcc4LRBp782BOb5QhsrS5op1LwmsaFJIpNmEmph
	 4G9Rczj+P3pqfJouARqpQYvBpTlmZMLhc4DoD98XuK3lIwuzfr+YfsfXrVMT+7Z5d0
	 PN75e4vc4uIA4UQwo/+qq5Cc8y8SUzFAWZuJVHJ0DwILkexjd4E/JD20HV/G1mJSGm
	 fzjXdgPFMeTXQ8SBACdy6zXmA16Mn5xOEWi+thgGcHiJek5vZil5AM4ZgriwM0Gyz+
	 WeOKZlm1SIMUIzpF0voinAQuRmLddsD0ITLDx+aTIutyZ8SUOCpLzQVPu+F0f0fL5/
	 eMnx71Dtnzwig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A669DD3C912
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537777366.23174.17454863886769947527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cecc87396e7c308a6cccf4a60b262034821f0b447a8ee9988410003b329d13f8
Date: Wed, 10 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765377773
