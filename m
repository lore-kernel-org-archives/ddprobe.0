Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33428227B88
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747999194; cv=none; b=glNv2ss0gQfUYBP6uUVEEh+tJxqKvrvLqbOiqJcLkP/VTMvXXoqjaakhhHZI0VN82ILuA8k3xfXRQFhn0itHOxWX/GPAFvbBD7EhQnuRaNrhX+0AJbL1uyHqKbhvc3y0HhhFeYuwb9ByACh1oaT+OFUHBKDAcGEVOfUOpSG9q44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747999194; c=relaxed/simple;
	bh=waT14lXAIhrf0IMZGm/ylgJNMIfzKHh2Mw1pcecSnjc=;
	h=To:Subject:From:Message-Id:Date; b=XfGYjC9QrLyiF8NFPxcPwBYw1TWnV/HI0k16VR4O0DcvYZTaA4yFv4tGSTI4m54heg554PVo02mKTYLcsq0NBxp5GAqswaqJX8YIumB19tH64oUPxusWTtlYxbFzd4I2wy+nC+1fZitPPqYoiCm8MqZcOINuY78x3fiPoXSE3UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXUOvOFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXUOvOFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11F9C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747999193;
	bh=waT14lXAIhrf0IMZGm/ylgJNMIfzKHh2Mw1pcecSnjc=;
	h=To:Subject:From:Date:From;
	b=cXUOvOFcjEPobGfxsM9TlUAtqjPaLgHZpBzXBqEWqUtphAhzIiYCttW5LSu11+35g
	 cWT9PtzGzistGRJqW41FvbbgTqOiIuXoet3PIPcp1W6arX0apvPADks5rwng4GUWQG
	 mndmTx0EFUOF897b6hBs7Xub/7XyD7LOiuPa5qcDot7C+XgtRmY2NjlhdNz6osE/tO
	 YM0EUJBaU7ggPzNW7NvNL5ODtsCTpIEGYCL1xN6/271kU32Ji2+Xw4pIjyvGBVVQM4
	 X01OUTLBjzK5/ibgtBCjMp/99qQaxP7hZa7EZFA/cHgBehCpmBI7vWHDcjjXeyE3NR
	 heKTHwjRB2JYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D6C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799919358.3174.7167054166354694510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9d9747396639e5bea59ef306917fa807a0749e908ce2b0796d49a4e7fafa6b
Date: Fri, 23 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747999193
