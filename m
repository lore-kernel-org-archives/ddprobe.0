Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAE13803DB
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771936494; cv=none; b=nlAvdbDWRiKwNRMJBaIoUIr9gE8u/++FHzHxABHhB4oLAy2QiODf//qVMOUQe8Rc9e87qg7cnTsBceOf3+DVg2zFBWddUO7woTgECanzSHOu7iX2HtgMCbDH6dzA32TlIvokc9zgfzbbR47UpqLv5cNt3k/cp2BkC4/lsL1vwns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771936494; c=relaxed/simple;
	bh=qCPgXtxpfR7eJsryvADGuj/G9RvklRSg66On/S3i+yo=;
	h=To:Subject:From:Message-Id:Date; b=aq7UAlRlC7Q9MIKv8xCvOzoxxpvDmfugE9pY5zS4J7hUWmofsogbzMoHwBc4a/6h/Hyr/Gfj3jPjkYdy7Kxya5D+KfCLdqriHf7W3xeNOgao1BAq+5QqBIb8IyfjVR9q2RiorrzKkvuLGvwkzVSD6CpTKu4F9TWgK0GJD6uay+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYD419O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYD419O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF432C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771936493;
	bh=qCPgXtxpfR7eJsryvADGuj/G9RvklRSg66On/S3i+yo=;
	h=To:Subject:From:Date:From;
	b=hYD419O9ELZQriDaWISCWI1l1hjDpWP5uGXgt0F4cAqwxbQ5F3qm/PNcVYaHIsaAl
	 egAEb0qeZyebO3oOS8kjiPN8YqovO4sRlVKnf9Fhf8iF1O8FzEiwo6if3AL1tppEy6
	 5y5HQ5fart1PN8NAI78WjR8gwFH+wCFClzEruZMWABScZ0aE9ATL7AcR3wnT5EsDsb
	 1JHIbvTrv+G1ySUp7BXqiqqcpizsXxp9UPF0fuU4BPSdZ0zJ3T72H6NY3WejoHAPOG
	 zioTIOV0iAnwL+yhyJZ7ArwmvPn8LgEiW06iatHvdS93XnWO39UFBles3KnVk8AvH+
	 MKnoqXsnprL4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A9E9B258
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193649368.22758.8688101546430242649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11d3aaac592e8ea77ba1351fe6c4133370b55c400a9d7ad6e4c4b8edb1349f1
Date: Tue, 24 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771936493
