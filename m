Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B226FBF
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760489394; cv=none; b=ZVjGjpp0gFAoe7GeldYboNypShItoHPfm2ufwYF06d97uNSjdmWdCa5zaDnWiSqlWxu9wfykm/h4bX3PIY8PRNaitOZoOWE7G7fqYzrSxIZXnXYeM1ow/1Au1Q0mN93aeN7dO+0LRVty4ysLH79fBfzeuzqZONRc+zsbmufv7Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760489394; c=relaxed/simple;
	bh=Xr+ssVi6QRrbBs65OMxDcM86z1hxc0962GwhvZUNfoM=;
	h=To:Subject:From:Message-Id:Date; b=c7HtsDkvDOpnlwVQ7EYWtxneT1cBArSPhrz5Ds2ebXfpgwp9OepXQzqqnzdbwviGj9w8t9vulwQW7RBmalunvmNtbLkXXwLR+CvO2vklkEE7z9RBmmgtV4Oz7E0sKa2G+t+ZMnsFV3RfcvBhyGw0AVyxsFWHgwyahvBgKYbA+Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZmPehM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZmPehM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4601C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760489393;
	bh=Xr+ssVi6QRrbBs65OMxDcM86z1hxc0962GwhvZUNfoM=;
	h=To:Subject:From:Date:From;
	b=UZmPehM35qmVLPL3lsICtOgW8rLPmQ6rtgeWU9ckdIWps4722FfcJaTHFVVVmudUl
	 9d46V3DViLnrztcJgI3xRxCNLiZloxT0lE08iDeJqdtpbXrZuMYf85+DcpEKGOEzPA
	 A1D18F4ddl8lbZh1PJstulVTBHSpAKrLa/RQ0tCC1tNOj2yW/wYpjWbcc+vAFZ9Pea
	 wbm75STXnj+Mjp2nnW5CYkTe+dnq3T7ELTW1FMkNRAAFpTs5bpBJLba99vOlO2JK6T
	 XbST3DwLq5lK+3ho9trRpbcGl1eK3hEEbfJWRH21G6vE+MiNYt1xGZFhWO9xhJvTgW
	 p6SgK/E2T69/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D96CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048939357.19451.6803663352016635777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85f523557de98c97057154c5cf5abd61b30bbc3e18979e5904aa4e428e1efda
Date: Wed, 15 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760489393
