Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FFC372ECC
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779814354; cv=none; b=gVNzcN8KmfUiV3bmneH/XXv0u0D6qvcAvU5YvLZtwwAKSAVHSl/+TRlsZUEs1Tk+Oy7jQ0Wsz5Fcp58P0D2md2WCdG5n4M50DsVl6vmQjda1qyYbbVSeziHvS7EmOTI0y7BqHReVFTbFeT/FO2kIG7HW6aibsfK0WiiW7gRET7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779814354; c=relaxed/simple;
	bh=kPdSxfVasws4422SwO1OyNxDWBGIP85b3wW1JurejVY=;
	h=To:Subject:From:Message-Id:Date; b=P660BvJKPqQYHtoJ68eR7L3y+AOncJ5riZmNMFzZBsWyeR+azHkX+7wlT5Uq75cH2FJ/mb3MRBB0x4YSdiqZT6D+q9byn+vdt+ePG4KXV3oRZDWKKu+efO41i40zFOPcYw9rvbRbleGUOpT7X3wZHxs7gnowRY89L9RqmpjxYCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK4MONXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK4MONXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBBEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779814353;
	bh=kPdSxfVasws4422SwO1OyNxDWBGIP85b3wW1JurejVY=;
	h=To:Subject:From:Date:From;
	b=OK4MONXXICxEaBDMBH9kwmEDz4BRMOYCGoWdISbu+lRtAMfekY972n4atbQ9Aytw3
	 ClmpSBZ47FlFBDHb23IO9vUhl2CsSx993GEhIjSXU+ZdEUO3j6UjcoM4d3/lVm+pOR
	 MsieYkoFMOiqcRmf3qBMzLV3WRhNFGkdRhpplOnmEJPmImnCM4fKb0hSvlUTsQb28w
	 zpFlTZb1OABnZ7npDDB+7W+gp3VUwj4kigZZOg3EtgYa6mxGj+3j1Lk/brv6RbeCfS
	 /k0G38e/p55k1ZLLmNWLglVbFiprPI2YtFXGR2rU0OIrDrPeLa1g3Sw8DUyZEDtpZC
	 ru5iR+Pd19vAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAB2CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981435369.6311.4769787848867681724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e45bbc4e907b546c98a574254740265b7b04a5fb06b7d25e5325bdeb2a2f10
Date: Tue, 26 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779814353
