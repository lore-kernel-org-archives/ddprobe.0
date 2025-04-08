Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DB725F96E
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744097995; cv=none; b=ikzT1YtcMhqTWpWelRFvsk7jrWSpTPdIA8MwhO+k7jYhSNrnK15zLuV89pWqzkvhwu8CgyM1gVGiBKI2zKHtowAm7sQW3zj3yacZ3JqOR01ozgqy4kRUD1f4I6yf+Jyb6n0VZc+g1Q4hblhSbQXoDh1WX+barhLRg05pOj2Qkbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744097995; c=relaxed/simple;
	bh=XELt0JCTKlEzACwJU9cmgMSdjHRc4JwZ9rbHig0Gd0Y=;
	h=To:Subject:From:Message-Id:Date; b=lhNbJmEkXPoAVOULix6wtGFGYdnHjq9sigpfXZzEYQ81rT5XRWj1tMdyrDTtuO2tFchFP7Jg9gFu7VJ1KZJrXyPkG3yc/CSgeGN9HB3DZn+EPztLA00vKFwOq9oLXy7nuSshSl1HRX+e32MFZ6pkZgg8JDYoXLSl0zJa13zWFso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0N/xxwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0N/xxwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB53BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744097993;
	bh=XELt0JCTKlEzACwJU9cmgMSdjHRc4JwZ9rbHig0Gd0Y=;
	h=To:Subject:From:Date:From;
	b=a0N/xxwdZDaf+51NoXAICLplAijX3FjMkncZufBo8iMMp6Z/06Jgc1FMjEb3c488q
	 Rl88CXHPut5vQ50bkntmXrSSh3Jhkw/6tex6NO8RRdE7sRyiQjAWFfaONvX/cnMdkm
	 YCO2pV8FDv41CAPb51Wi4ltJlXtQTiNryRumigh5K1jyWso9KDoIFQxFbB7GEsTbH+
	 u8m/Yin5cNozV8Lb6rxh7/6PoZv9F3b5Dcv4UuPtERhLbTO9Vlm+GJz9zQ1gWSXFLT
	 A8LRBlhTdnPAWzz/78XDOddQ5OD9Z4liUpBo0/GN108c+sxakHnKXlHGkkZ8NmwSls
	 Sby4JAmvynegg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95411C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409799358.31129.13671383475122579100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbb161e4354eceb43ac1538c84983a4481c8855762eaab0d56a22bf70e2493d
Date: Tue, 08 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744097993
