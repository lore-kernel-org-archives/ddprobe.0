Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86C1DB924
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751707194; cv=none; b=FgtGUj7bq1xILnX57I/bkHpR22FikTkyLthDtu61pkBADYUAaZ/YGWCBYvuU2RhgOKgEBSBuNFs/TLVkSPAxFAgr6BVlVPfY3QgglC4Cwg9cBPAwPbE2UEqxk7Fg6ou4d2LswgsodUzeC3eYhWEjHMJh16ZhyuFYfm61PZd/k6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751707194; c=relaxed/simple;
	bh=iy3z/b5kUhQJ7CfMSs8BtHc6KNlEjIOekSs73vAfJTE=;
	h=To:Subject:From:Message-Id:Date; b=Q9QMvCD3vsC5l+ofsZn60Bq16bHo6BvRMcyjMRuicROTFMlVvn1lrsxgQGjF2QG7/zUpR/rEZGaxdrG2XRt/9sQsAYUQPlBLXqqECGYMHTxoi4SSKjPdwScA0+Dq4Zac0PqO6j1keDIjBv9D8iGVskiN+gQw6hHI5nc0pkn6o/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2Cj79LQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2Cj79LQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B22C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751707193;
	bh=iy3z/b5kUhQJ7CfMSs8BtHc6KNlEjIOekSs73vAfJTE=;
	h=To:Subject:From:Date:From;
	b=S2Cj79LQZxA2BhFrZqXt1+nwTW7k95cHBB+R122x9806bSyu0bPrLNCDGc5FI1lwb
	 6SYL8WrwoZxDNujpDrYHdnhM3UNcnFP9UP3IQvTJyjZ/ZXledMDTHnMznDGxR4TZ5R
	 2iKLAoL3bWIZ3tKg0GSBd/vlJV/VaWNMgBkcBFSH+/YuiNOgeo53I6iAjznIuGjvFa
	 zzzbAxa5b4QG6Sk1Tf3OoN0NAeoKZgAYPVjKYAxt45FKMP9bweXRExRKZXk2DBKTMK
	 YbhamqSi3OCZ1jcWBUPAaKLhwQRQXdrBYtN1scgniJivCuVLVtaeeCd9A9FBddxqui
	 /dOj8W23lUuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D97C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170719357.8758.15455589371567838013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b224c0f36c8fe12baca0b628a8d0da1c6c777517b09f84437aab1fb3b29e157f
Date: Sat, 05 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751707193
