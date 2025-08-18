Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C13F1799F
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755481794; cv=none; b=r2JREne1ypiaUopIWtcMZJqR4n+h8q22iongEIqNu/k/MK6HWQwqnkfkmIol6YvJfcX10FACZ8np8nXrNhdt1cLayUhDPTu0oGpFXZTbMrCa501MNLDSYmV4dZY6wm0/PN5RsmiAgsDw9kBZoZLOeBkFH8GC9g9LZFT92s9rajc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755481794; c=relaxed/simple;
	bh=2uwUE76sRjCz52rhnGv8EGMfg/1XjKw3Ua6f71XHBtA=;
	h=To:Subject:From:Message-Id:Date; b=O6uxYwSD8HTOdqxS7FjRZHH73AnXPi0glqACB57hgxMgabRIksIKmsdWWZNFsUMWGEHr4O70i0QkMzH6lGxSDWMWB/WNi9KcBTd4Zgtjxp9AkkWdD26hC4nUzvam/HEyjHfDPEkJUzRnkO9HuhAjNccyw0sBXxJrsoad2w6R+xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0s3mKkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0s3mKkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E54C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755481793;
	bh=2uwUE76sRjCz52rhnGv8EGMfg/1XjKw3Ua6f71XHBtA=;
	h=To:Subject:From:Date:From;
	b=B0s3mKkdCTHa38hniSEvfVgZ+3AicGjxs6uFHFtg7Z08KlUfeQEMgYiLZGN9xnscD
	 UD6k4us3++WnC+mktqPwFD96jPjwykAmF/ue0Xr/F98gGWuXcJRqeVcdnGSyFT3+3I
	 noTHH9j3EWoj7cuNOzqZ/9ju74mEFMDGl4cxwBGWZan/SSy4xD0F9iDi7oJ8Sa0yDR
	 hq6N+TYFeR+y+fWc7QOiBEzUEW1J5uxvuLpT5qoCfSpylH2ONfk2oEszTzDHKHgBNv
	 cjJ3g+6fhHOuSJeS/pzFtiBWvjl/SP/7z7DAWotr+UcThkvE1sBpmne0sAYRxv9yvD
	 n/kr5qaw57V2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC6CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548179357.17691.13162875371989254833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4568475b456ef2d85a1534f93e3aabd38f893ad8fb63715ab43c28af043e81
Date: Mon, 18 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755481793
