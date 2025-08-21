Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1317325C80E
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755757195; cv=none; b=eBQhUV9Q2fgetIVFhnhemhtQckJd9TMrliwmksoa/2Cu2YNEWy1k8K1uMqnt1LJxf5/VIqJBOMqMruqVLgwF8Up/TRp4A3/aWszzc5EBzg9oJjwPD5e528Ku7KPvAevTISmfBMKNvUR3+JcSuTXJYc30XE+OZ/ipFgKsTy42FaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755757195; c=relaxed/simple;
	bh=ggP8grSXIjXYUJz5LrXnplKa7ve6ZWYyXrEsu++GGdc=;
	h=To:Subject:From:Message-Id:Date; b=k1sbs9gVCE2hV4wXWjvOzJN/7Yu3gK3HOLRw7TykkivQvqk5t1RKjxI1n5PStfNCTI07ttSNm6dcLsu/xl1tNM00DFbzpeZbajOpoHxrhGXdx5j6UBfGKaijBXfMktFRs55cnHW9djtDN3MHgsIRlngqPA8HpN+/X1ABAg0BFRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXXL84jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXXL84jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D817C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755757193;
	bh=ggP8grSXIjXYUJz5LrXnplKa7ve6ZWYyXrEsu++GGdc=;
	h=To:Subject:From:Date:From;
	b=bXXL84jfZ2kBDfg4iR8izphYyFCga73fNlN9kuUjq+mnbHJ7nMQEHAwqIYxiG5M+7
	 41QPZK6moynO7EMlEsVPRiN/yXD5lXuqG0mYMMn7UME6GKjG1aB+FXMUZSlN7xdCOx
	 GWJEjhEK586zlnsmTqBYKh9qIUL8aPxGc/f3Po3xWtJycGKpKP7EltQRgV2SgIYYzf
	 Fa724u9BvPPS0W3GmaxKGgMD2sfRVOTFVPPuXIzDcMFl9jzWdDsfikdpQVGqDErqC+
	 LoD14bdPWsZriCkeFb59VCnL5iWSTiQCcLsdwMB6R2mOoiYpNCxGL+Ira4tVCFIh67
	 GUDVxfsWH3ecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F145CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575719357.28167.9465233221007066405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b827445b53491bf2181201cb5e1340daf54c35b11c0e0a8d5720abdaf4e0739d
Date: Thu, 21 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755757193
