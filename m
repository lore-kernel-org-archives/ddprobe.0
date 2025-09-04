Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2066A29D291
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756971594; cv=none; b=KazJwWw+Fd8WxrlBlEUCQ+ufAQRbCViv1YiXbkzTMfIBTOPomvwhFckPlm6cF0dd5w0rVCc6hOov09aqcTGt6Wkcre4UuB2lOvGi7MiGPzoLnLlFASIISvshx/fmQtw5YdU3oyz32Mt1u/8vMu7v5puf4YvxC61oXBKhCjv6UTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756971594; c=relaxed/simple;
	bh=cL1baX36eX1VZw7HcmnN8UmRGu73W5NH4l3S5G7eTFo=;
	h=To:Subject:From:Message-Id:Date; b=IMk7mj9gVaoZfE/9aOCZU5wXdhEUCyGGSvEySDxFRIsoibzCoDlVgsKnVSbG+7pyRZWgSWrcTe65d5eCbXcQAEilIQMSf5YHr35Uz3h18ILRNh7pXcSOk6saiP02lwNwhugO1iNT7xNKuxJMUD5SSkVaTzkDFGiopPtiEzCQeko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdfRq/i4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdfRq/i4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0777C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756971593;
	bh=cL1baX36eX1VZw7HcmnN8UmRGu73W5NH4l3S5G7eTFo=;
	h=To:Subject:From:Date:From;
	b=XdfRq/i4viRx4zbE8l58tA4995wNXlDhaZhhgiQ2+kpY63dOFsXXtqq83VGhvDsFJ
	 l0ROjtWqfu9nQjWYs1Rk0uoO0tzGYK2QANs9ODYkkQ85AkH20S6YwppKoEzJdvFDcK
	 1ZhQPIBsUTG5D1yj6hPK7douprdTQjEh4PTAEllq5l7A3HBZGxCFwVWqaZw1ZYX/4v
	 n5DzrtlCmIdkugPuf7xrAuH0VJxqgpNVL8zgpX4X81ShTQxeI5Km9P1QT2a0dtL+0M
	 FsgNGx+KIJiRPlc+nM2PTzJfHUIQ909DyccreV1GJqoG5WFIo6FirCBTIawmRr/GrR
	 Tp2O5he4BZLwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F314CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697159357.26910.7100602764787136150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516caef4616b924acb0af6dd75def88208fb6b110544dc39c36aabec7cd5f355
Date: Thu, 04 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756971593
