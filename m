Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A7054652
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772511894; cv=none; b=NRjaTyQQ8Ey5cja4rFQFDnQlb7gxJvqB/oQaMYU1oerNpFwzkFewMWzvBxjXNXnvModukCVmO/+JTqD76oIWxKgZbgq/+jVLCDUrfPpUUMvngJV7frCnUOaWUL+2JxGxIQltz7lOXt2Ci5V+zAfH37/rCbAqT6kxZVsu2htYTAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772511894; c=relaxed/simple;
	bh=HERgPn4QQZp3awBcVnsSPlQsdiimTGpXUd7cxQkuQ5Q=;
	h=To:Subject:From:Message-Id:Date; b=oM+X7UcZR8NRq7pINJo/6xi3NhrGYhiLC3Bej9RAqRv15xN5VNp4mDGmTASbo4r1uRJwXEHRUcSuxNMgtTgdCdU/syed80BjkY67u+q5v1wX9a901sMe2tcQPCyckFfu+LNIcZVtCUZaii1Pu/8rLmMgtLjyeOefDfXFYE2IfPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTdhLsvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTdhLsvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88D2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772511893;
	bh=HERgPn4QQZp3awBcVnsSPlQsdiimTGpXUd7cxQkuQ5Q=;
	h=To:Subject:From:Date:From;
	b=RTdhLsvI/Yr0F6nS6Ul1ExISz/acolbl8flvFFbocaPDsw5U6CF+YiqgXI56dxsIs
	 5ElfeltnQ0cnnYhR1QXWRKNQyrKPjemINd2t+aYL9FdwI2t7n//HEorznniBneqSw2
	 Er67T9ETRh8Y1VCU1QL0/T2YzM30a7h7w0lDtmOHAaH2MGa0Yy/L39KzHh8pTeeuy8
	 wmpdERoKCRzns48ldoDScRCjB2g0ZV6El0A35E33tDNOG4TyCSINn8xoNdUf7gOlF0
	 V/s/7k4VqawyxaJCyLTJKnXsIlu5MCoX5xiFg29oNN96PI9rSri8o7YHhj1CSCKrqa
	 wohkZeFyp/psA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF91E67A61
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251189367.21831.15732066207906504563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1495cc219b0519e401c1fec6942e21760c86a3c3cee9873d973fdaa5bfe22071
Date: Tue, 03 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772511893
