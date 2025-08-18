Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D7226E701
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755509995; cv=none; b=XsfkRiB7zFf2iLuJjYd8vRLixovIYigAZqhSYxKAeWBb11N1Vx6E3IF3yghVrgCquiNE9h1WPJWEpaikD0eoh5zcQ0X3AYrH+yWHuY7mnf/gj0oCRVisQ6jGqTw32JFqs2HoPjx2JnaVQhT5eeuTZyJp6Hzv/6L8jGwOkgSpODc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755509995; c=relaxed/simple;
	bh=QrSacNM8MM6VtduZAg+FfFaeLLn05AayziFpR2Nvmtw=;
	h=To:Subject:From:Message-Id:Date; b=e0N2IYEXizjUYCH9npP9fT5n7mO+YxsuNDz6K+bfOpO+QNeZbFpKj3DpJ7RtAD/hy00KS43dgK3tdc742Ekslk42xJ9YcUZ5/xtWdg/+duvUQsd3lpJ8W2xvS9loHNz79y98+8Dpp1jTEoN/Zzf6hqqHc4BmXk2jCxww6KuL4Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNfFV072; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNfFV072"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA7DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755509993;
	bh=QrSacNM8MM6VtduZAg+FfFaeLLn05AayziFpR2Nvmtw=;
	h=To:Subject:From:Date:From;
	b=VNfFV072XDxCYNSqS6GIFo0if38u7i7MEsFJME+wmQ6UBLkmRp+/6fszT2eCmfIa4
	 AbJ0iU5gxZ6zXAnXsa6kUSTxbSw+Q4B082KCWQPHs+3ukcT0lUqvVpdsq59LxOVkfy
	 FYtyumuxWkLW/5r7W0d+zhoahoUK/MCZRcDPQub2aLLNe+C0BMavlgUwc+EOTNc9nk
	 7h+gbG2oL3SrM3moAWFPID+pgXAcdhpzSz6w8AHmejXKURQkD5XmBiuivJ8eqMLkPx
	 vNlFFFsMqO3j3Xawl2j8vVQ6kbD91jcdG6pAkz10MWv7a4GZPahFE9/fNM9QZqUytK
	 TaxPtsE/lulSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C8CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550999357.30571.3079814414989009833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aef518fb4316193aa037072339488a475c089baf727c1c6f10eb77e4d00f779
Date: Mon, 18 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755509993
