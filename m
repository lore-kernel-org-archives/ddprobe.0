Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6D448CFC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745900394; cv=none; b=d3jojhyxdBTKajMXj/xdQF7cuCkX5CSlHN/YxORBAOgqbJhWk9pRfZW3/H1YRu30BaILT5c4EPsqQDqaXyn8ijRo7H+b9lSDuAnyyh/07yd4sYArFwB1v0L956UZKWiN9FG3uMUbr8AlanhrEhBHnByB8Yp0woDFz5VF8+gkNmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745900394; c=relaxed/simple;
	bh=sKpkCXfo71KdVz09g+EuXwx21n32ZCLU52J6LJI3cSI=;
	h=To:Subject:From:Message-Id:Date; b=DFrpGlRzt8tJQ6iwg6EyaGUq3mT5ol7c3ElQTGbDYhsGGS+Dp3BQTd5OVtrc5iUqk+WvWRHc6+fu6oviwpdaaaJZTX8a4ebAN114XDnnJwINwPXpsNi379LrAWZqPQkN2PEFWckZqujdIY0xZyOjIjnQ45DrJ/DLAEpwzrxyHQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q38dC35F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q38dC35F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57BFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745900393;
	bh=sKpkCXfo71KdVz09g+EuXwx21n32ZCLU52J6LJI3cSI=;
	h=To:Subject:From:Date:From;
	b=Q38dC35FiV+lyTsmFcT7z6qvfw5I6OHOqxek8fRm7TMytz86/gBpdPWuoNr0BCESo
	 fBbML9fd63R1kezQXDGq4xtG3WRzQ1RWZrdsSa9NQAIar5Jm27MfrbFPForKjKr2Jw
	 Lm2V4uroS7ZPttLjt3s92DY7JKQHZmfz2c+h7wjw7io+jBBoT9xys3cx0w49ksfixF
	 ASgy14X0Yij4UWPpVYEMm0prkkADKtrsnYPtfuMuiWh+k8FuP86/3viKliDPK7dyxq
	 H+IT0Xvt50dPHsxuJhV8oF/1dlTFRIfkI7CBAqsl1iR897QwRhLTcEvEiyMEy4zHCN
	 CW31Anb8Iv5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033EC369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590039358.26888.12818896209900128619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a797b5353fc00b036cd24a3d0b305e34e9bb3a583f28ac5e1726190741b30d65
Date: Tue, 29 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745900393
