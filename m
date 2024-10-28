Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3079B1DE3D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730130954; cv=none; b=b1mGvaLgSIk4836iwEpECAzQTom/ZzTSJ2duqUaIidYQi/YmluOCPFlhYikq15Nkx5TA/bnrrB35WVT0PfvmyqjfUhnpuMyVbN3F9CziKdYsSH/AfCKxSerHapYxgVNTrr6cpmGUMoeLGsDlgDcryg0jkZDQywp1+SqBK6mFRqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730130954; c=relaxed/simple;
	bh=rEyO1cOwnLzWWvw9CLPIvLVV1nLxUPW57pygEHJT4Tk=;
	h=To:Subject:From:Message-Id:Date; b=uD+4Ge86fCv1Ar0+mf4C2u7dMthg8mLBp9+CRZMc83q06tKZ82wWaySzrXaM2+XWIQrKlCI5BSDv/V8VosG1erFeeEsEvGGnjq2n7E01kfCDkcoPiVPsbeGJiVgypG4+i1GJ8msT8D1Vm+qQ8o71MQpEumX5VCC7nsijlSt7TXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPu+oME3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPu+oME3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F9BC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730130953;
	bh=rEyO1cOwnLzWWvw9CLPIvLVV1nLxUPW57pygEHJT4Tk=;
	h=To:Subject:From:Date:From;
	b=UPu+oME3upWR3z8+if0DlV7vcEO7wM4ClHGe/o5SAmnT1mgzVJcGlLwc7ruYOPjz0
	 KKsJLtt7u2m53fyCA/Hn2+aOYFFCAWrQY069uoGDPxbO7gYEWxBYZ6w26BWrrUx32e
	 ue42gRZpYMGn0MSBKLwhDwh96g/TtEi+xp7RNvuFpnrjpm0O962NjWxehUNZCA/XeW
	 UI7uqfxmT5o9xX3EG3w8wYpOXrUHjP3gOxLZfdixnu2OsfaLMYUiBmqWBUrzjrLjiu
	 BBYpCtixlIwSjF1yPOVoJ93vLyFi+2MENid0K4B2Ajimo1MYoEi6XumXRWDYqqsjIv
	 884guLuUNuBxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A125AD3399B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173013095365.31030.11867603698376295879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80b5735fa242ef1b5337e38c020f2de8f454d50c475acf6e2696ac5c6a44c6e
Date: Mon, 28 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730130953
