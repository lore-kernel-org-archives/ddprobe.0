Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD2512C811
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707211097; cv=none; b=AQEba1GPUh/Qocp2UN83NKgxSTf/6SDeV6B6depxvVfaXm6cWNFbkBiJp6ARRVMuKJV5x+i1gqx0zfyUQD3s/NSPiD19o/sTv/zGf74Rjw79CRfjUz5t6cPGau8P38lh4HF9G61j6QQ8miFF1DbfDjDHzYYTPKijDmamY1xAhSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707211097; c=relaxed/simple;
	bh=k1NsdZXFmf6ByBHh3dUkdQVbUwQZGrDWvQSXecR9iLE=;
	h=To:Subject:From:Message-Id:Date; b=sdkDZptWRbGdeczMAA6PG18YZgZlzyBuwXrBbxTBk/mqHC1agkYEqLLYCyVzN+mAkQM+n19AM/qrG5JDtVedeqNe3t5TiLf3VjiTFVFpESffH7a+25XrxkPapsR5qSZE4kXUmgwTx8oeC6/JjMENM5DWQ0bylFg1jWWQsvC49OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yh8NesFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yh8NesFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE5BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707211096;
	bh=k1NsdZXFmf6ByBHh3dUkdQVbUwQZGrDWvQSXecR9iLE=;
	h=To:Subject:From:Date:From;
	b=Yh8NesFoWBy/ZiUU9cKrbccerkf7tSPE7g864jeX2t2WnsSABlX5CS/LS/0gwlDL8
	 V/dvIvuav3+g2Rt/rAM82FQd4Iy3TSmHcv4vFSRxWOdEAh9PZpQ1QI8T8JQM2wTMlC
	 nDa1kGz5oP2AesodHcFpZgUxJvxfuPnX5/ZGKvMVWMRQTNILmlM6sNkBwvltHoMyK1
	 OHn7EG9AojRTPK4QzxjTUR8zOvCvLV4A8tZsHJZ6+FdCYk+EFfCEiusVFr5TDVWLjG
	 L0raNtRfNbHdzPo77OBhyYNrKVJzkv7GkRCxqxdACXJBtWE6ZvO3yFfQhd2eQlRKeH
	 EiHAOKGhKxsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611A0C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170721109638.27741.5046404648291910241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaeac395281c3ab13bae8534844c048f753ea1fce58684e343d455e19ec6703e
Date: Tue, 06 Feb 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707211096
