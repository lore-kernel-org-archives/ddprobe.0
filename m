Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAB92119
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728443754; cv=none; b=NVBeGzgFzB6fTmmiZl1uOHnUB5MsrxVzACdD5Tzq/wecyoTx9eL5rYyizlTIcB+jsZxhQ7BR0leGo4LSlihkrmz/3cDQzVYhTgw52FdE3GdGS+qtdJNrlL6wcbRdorDnWqyJ/YgCQWAAsPqXa2lmoSMWG5PZURqT2s8uHUSg1w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728443754; c=relaxed/simple;
	bh=PCtLpkq+5yEXOv28/IrD2gUweSV0HQp4H1b96wyP+w8=;
	h=To:Subject:From:Message-Id:Date; b=YTAs2YPBFwawbqIFRNCLnKLLLt0STji4rQWWVXws0jvo2ZIRUFDi6JDCfd6fp3mx+e+f5EpPp6KJef4NE9M3t+wjJQ/YcbqK1S22LpkzIdMxNwfvB3a06Fh+uicWUg0aecN0I8DlTOJCPjUUWCoUnX+YWJcHvKcJdIzI1jPzfnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnUKoECp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnUKoECp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF28C4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728443753;
	bh=PCtLpkq+5yEXOv28/IrD2gUweSV0HQp4H1b96wyP+w8=;
	h=To:Subject:From:Date:From;
	b=MnUKoECpGDWN6r+++JSpRzOSvaUSWfyvaVzICOk1QKeiNogpCeBwhBrEoMYafpEaD
	 LI3iQBwGMcEwTpxYHbtAGzDUDPImnTGVsJBGfzK6tuqJFwMQna54Ig0IIUnznRw/Rm
	 cI1WReCt+d6eTT7yUZ9HG96q5ZZojnwSjn+9Tpm3SKBQAKPAsMUIV4cJqsaUVVVmae
	 vgwEOmthC+0U/nWGihvab377F1d81+Y9KLYfsPvTihvRqRYI7ygTEKfqGBAw5Vla06
	 wWlxCVAsDHZ76sK5L9fP7QDvFdxYkMvCvjO/d1oyHClF41CaaS+1P6n49JQckmLZu5
	 LEfmEClcV47MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC09DCF0433
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844375365.5828.8277059724974038301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b387a7f0f5dd34b8b0c336407d475db680793f0f73c568f5c285d480bf032d
Date: Wed, 09 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728443753
