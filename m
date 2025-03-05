Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0D5249E5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741155535; cv=none; b=UHq3MqK2KEGPISOJoLu6enpjgRY7uKgDlQJcZ9vN4zI4I6YHukRtbBNx24FQm+Q/AGYve8R8/MLtu9qDWaStGyTdTFri99BRD3LLW+g9YuEU1kM8ppzfdYi5m0uhE9ibNxRTriaIvsDW0895FRUyGinocdxVDzjobb7Io8PgjBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741155535; c=relaxed/simple;
	bh=PWFTXq2i9lWouoToMQ6RiSm4uEPeNFkTwRTZEb1qCQ4=;
	h=To:Subject:From:Message-Id:Date; b=syW/aCF/1A6BF8sQEGq69kd7kbeEZhjkTVHO2RY1gx+m+qNo8y0aqFIbOjDADGuoTrjNoXj0NkBWjFVJ0Ls5pWpBHa9wjHqQw5RJogY4t5/oppqxnJtDWpxTgFknelXAdUpTDFIE5elOQJSZm9QrnsD2p3L1nGWzJtBjy+svJ+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnOz5NFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnOz5NFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7CCC4CEEA
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741155533;
	bh=PWFTXq2i9lWouoToMQ6RiSm4uEPeNFkTwRTZEb1qCQ4=;
	h=To:Subject:From:Date:From;
	b=XnOz5NFh8Kpitlay65mBYqlDFLnajD8BddHtPEsTtkPgC+HEv2JuvHbxj3K2uq9rQ
	 7EgvV8nxLF3FUfUsGUGI6ndJinmzMzBbvfMypMdcIOhLBdffD/BJGIllYjNusIjjpP
	 enDljdwzYPg0NVPlY6EznIXxK0OjiKZE9w/PlNel32Lbm6pBVOHiu595OwdLcL4ljf
	 nW94bIpIfXD34TunVOp5AfercTAXCixJTkJ4KI5iHRmS0BGHl0qKROyuRPWAoOYEZg
	 j6emXNZD3zhpe8jlPj6Jf4NtolVHVmFRdkXigWoAhppNS0WEfTx46rBnxNJU7N8DE3
	 vbLzrV8jjecSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC84C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174115553362.20480.4806652866552774894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7000db7212689a2ced62f13830b9b4ecf5beb224bea00304603973b52779c2
Date: Wed, 05 Mar 2025 06:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741155533
