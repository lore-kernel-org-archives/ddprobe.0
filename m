Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1485E1F3FE2
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762594794; cv=none; b=WshHILwbZUjICqAECXEzKtzhRMHEjlx0eLfpaIsGRwxtSN7bGMnOEWwsddJSYN91ZGkKb+jNj2HZX4p0SydyljWzWPnQ9VKafvhNrnzlK91wWF33dg5DQDCwNMHt0kOozx1GsgbF/kHwArKBDnBuquThqv5HVZYGVKZooDNqGxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762594794; c=relaxed/simple;
	bh=s6fPdp6ysChAOarNBG6B29wYDQGr/Iqd72Z1cRY4lb0=;
	h=To:Subject:From:Message-Id:Date; b=ZIQ7JPKj0qaXaAzEAV2R+0hTJIKZLFNFRKT29teISQs/7h5T/g47EQ2jmlyK959rUSU2FwKMlxxI1Wv3ddeGo7Rs95fmv0yWWIYNJtNwwT88M62Yv7u/KmBX08fBe/5MfJ3qIHBF/QwuUOrfI2g1vuV3TcUKJpf6F+UZgrnwpeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLgNTsbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLgNTsbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFDFC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762594793;
	bh=s6fPdp6ysChAOarNBG6B29wYDQGr/Iqd72Z1cRY4lb0=;
	h=To:Subject:From:Date:From;
	b=nLgNTsbMHXazBXO26eD034sC2UjIfmL+slmurU2O/B+cBtJmYY6lcC0YjPKiVwIwc
	 7x9iCRDxFM7JvmeoHW0vJjR9ZJqR8tGEHeE+TmPN6shF213OebJEFN4/N7GhRBCjyS
	 aRVBR0q+AyTF2ljlgJ4tPrrqE6hKwOYbOkecbsx1OTHoj/Uz6Oj7tm+kNfan2aYEZn
	 LxH5KXnHqFh9FKPa7nTYH2O+UYAR6qef6uqfoXkXcJzs5c7hkkg3rPNUe8yOUBKxP2
	 NqShqdFXr439y9Vl2E8g7jDuxLWwxTAmHOriCrz05Yyfrvjysnk3lzoO7i/z59+LDg
	 XVAsSnklPa42A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6ACCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259479357.12916.1326747463083266637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0e7c9a61cade46374436ee177b9456b7988075d543c240bbfe0531073e0bb2
Date: Sat, 08 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762594793
