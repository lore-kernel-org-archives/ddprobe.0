Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347162629D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733337954; cv=none; b=ppIk/NpjEhN3IJy8Tva4p8GrH+lYFy/7t9OHpm558427mO+1pU3lUrZouZkEfXgv2HF7o7zYVCvPmoTn1IItkeAlPR92JetSQ7/5km2JeYhucJKkW3med79gNTrwnFUjQyAdvTda5kXqYUSbnhq+dL1Qq+4o39LRLShD+/CnFfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733337954; c=relaxed/simple;
	bh=2Ofz3qANb/jqB5eQI/06YQPRfyLrq1tlXzNmGlWbZfA=;
	h=To:Subject:From:Message-Id:Date; b=QYliv1Cyocmq4Hlda3i5R956J9hTBWg3ZAEwFyGQR4fRWs+PL7sKoYqgPNwDijx1Hwq7/ABS6t5CY7Gpvi3wtTXyqtjc/QERriFxV1+Xl2XwwbP83R0tM8YhcNrcyFJ4mpYM6V36OuHQKHa4GbVgsRraHvRKYUFeTCUIwZCSwys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGBZxYnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGBZxYnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EA0C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733337953;
	bh=2Ofz3qANb/jqB5eQI/06YQPRfyLrq1tlXzNmGlWbZfA=;
	h=To:Subject:From:Date:From;
	b=lGBZxYnhqgnNQ0tbYByy5D4hd92tDQRtKwunQKh61APcVXZkocKmjxU/ZfGQxYhf3
	 vMm0a7/UDhfp0OMzQXoYoEWreSbWR/TNG/1ExK8THH+pJ7pBTuUHcp06MYSHMzLBRP
	 //HRuo/LPr2BLvxTn+RUEGqlfv7a3+wPg+b3JU9GTY0SrQlj29CejsQ6Kez8tkI6JD
	 Tu+l/CCfP+itDcJTkJVSvoe/f0TtQbfF8uhG6hkwH80djPSU6lLwvXOp9z8/V8IA2j
	 9Hmk8tppD/LtwwEznqSp+v2GqixdnAqAktByTUFco8LoOrjHkOFXTk86faJH1Xk720
	 8XeCS+UD0U1ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2227E77170
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173333795364.4365.14464761162995851381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b83a387cdc1289903bd35cd4322df7247c264e52ff0d791d7a8cd9199c8f072
Date: Wed, 04 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733337953
