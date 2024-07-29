Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9341459E4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722252354; cv=none; b=Adqw3pQmGVmslI3En3f/BLgig1aqgLn7HlZRbhhnfHjBdzfSXXLCXPzB6VEdbtTMCWswpsYfRsluurB0LSG4R/6Zr4aK+P2Sec8edwtxvniXqSF7+ieB3Tu9GZ5N/zYyN6LBBPVK+VfunfAojaj2uK0wP7PpqCdB4hLU06D7zKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722252354; c=relaxed/simple;
	bh=L24ZWA/OuH388oLjoxHgOVzcVVSmrGEauXFQq5jIy2I=;
	h=To:Subject:From:Message-Id:Date; b=sb5HIouNE27CC14Vn/EUNKt+qyM9xNcX1yiAj/QFPBClO30innTwE/NK6ofRWiAODE9AEyWpXSCkxH4aZZEjMfdwVYM3Fa2H3tkzlHJYOXGUR2+nR/Mu6xC6jX3M512+LuebICgZAw2qkxlfztq7GQAK1M9+Y9HtVorbhHY77pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKd2gwxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKd2gwxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FBC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722252353;
	bh=L24ZWA/OuH388oLjoxHgOVzcVVSmrGEauXFQq5jIy2I=;
	h=To:Subject:From:Date:From;
	b=lKd2gwxA59MjVr7Yx6XyhVymkQUwjF/cKtIFFn/xX0R7FH8v3fU4DJgG+EFEp7mCT
	 FL4Gd+ZyJXiLxulsbCnta7zB57COedRmRr3SWGIxOx/mhv8pflTEybmf9VdpjKs1f7
	 Y2snVYy/g3dGNoA1DHuMdYYTMPF3RhB3IwlIhRDO1YK1X0TE2yRmxgF9guQtQUogCM
	 6o4vdO+MtHGrumYHXLifAiEagqfsoRt5QnynaK6ZJH8kX4UklIZpWcXI+5Dp4um13t
	 h0WpMsG1PKCEfSv/nOFL4DgO5XEJOP1ah5YgjqIXrWeeKNYBu3Cz6UnyDaKv04D2qA
	 TNpfVsM4AwB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96377C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172225235360.1236.16926826985642017488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11503344bc7bfc7d4bb76343f586c6bdb20dd703828b5a77f842994229d14e7
Date: Mon, 29 Jul 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722252353
