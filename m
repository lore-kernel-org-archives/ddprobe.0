Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD3B269CE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747902594; cv=none; b=I9RP1XgMkvnF3KRSdOinuZ6N4uVMNa/wKItK3ajrnLJv2o2REOyf8rXIxAHLmxAbc/5igaVs07FqwWDjlgV+LYPEi8Pe5Za6zRwav1FIEWp3+WEzycRDkHM2PWSa/z0H0HOGIJILdekzqN/7rYLkwahDk5bdzLbZSKnhiV92IvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747902594; c=relaxed/simple;
	bh=CWDnA1adGx71QdU7Y8kdu3tm7xkrpg4qw3jo8IKZTrQ=;
	h=To:Subject:From:Message-Id:Date; b=JaKnNXopqkik3Wq7sKYneoCC7pXBj5Vd+AgfeM+mB46Sg/aYGjN5wmXWaeXcM1JBIzFMspDCDhiQmCgtfE7xDMn/+ww80PsUFZ2oigWZzKlgYnRsLJYcCW9PZrz0zbVadyXsQccvCNUNNDDlp7Gjk4D+fuzwBBZPWEakIa9xffo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxOldmXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxOldmXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A51C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747902593;
	bh=CWDnA1adGx71QdU7Y8kdu3tm7xkrpg4qw3jo8IKZTrQ=;
	h=To:Subject:From:Date:From;
	b=GxOldmXu1q+kHZKslpVwPuIgaVgapXD4YEPsuj9q1ptBS2vthsCaEiai0KoKFB0TT
	 SRbU/0mnHz6pDVmqXduTmblL+0dJUIIqfVUMQEImWgNr9edNsEIx6gBwSvnA4o6aaO
	 /QzkyLWyXZiJCByMdPEJXx2MuNNOinuNRhTN+yPxjEdeBBRJvgDoaUUT6LWq0SOo2E
	 MtsZEL9Tss5GA35Ot76vR4ignaYCOMfxLHoHFd0NlKrxS+o9d2WszAFEwuuMhbVa1z
	 fxvu1sMRyLd6G8rqvG1YclNf4eJUh20aQpE/QDtyHCqSiDPvwROeQm3O9yeciIOb4m
	 +uC3IQO1U1tVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91522C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790259358.12187.4162979112317065057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130e94fd5eab45efeba137b4b072786fa973c54a86981d95962cca3af3b1ba8c
Date: Thu, 22 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747902593
