Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299BC2FE04F
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756991394; cv=none; b=MX0hfy6er4y5EipMXfWPOdycgN2fnDNBfUpo+AsB12YoYi58pa/6y/UhLYQ+nsLQZwHUsyBpaTRj5g7TPyOvRKiP0amOBjDUWYIrV3mglNb4exxruhZZ76mAvBiTuj/eMsoJ93p27uXWQQoI7eGzh7plcZh+kFeimQKjZC9ZGsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756991394; c=relaxed/simple;
	bh=xFcHJqbKbYCfU+Rliqpyg7CBUSWr6+4sRddyewy/84Y=;
	h=To:Subject:From:Message-Id:Date; b=BwhZS6KTRI+E+E0rVwEBLbJZwE60TFyvEnx5bJjQ2S21jxy1xIrG2TmjIaJGrzd9CJykd/OfmHj5obvZy37ojENTfgtsp1dR1b9AKBQvgft5LHN993pCzpMIeCYbmILnEZVm4+hf5Cu3ZFXmf0pwFb005FZAyvh1Vw2p/ited9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzUj8znu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzUj8znu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07F7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756991393;
	bh=xFcHJqbKbYCfU+Rliqpyg7CBUSWr6+4sRddyewy/84Y=;
	h=To:Subject:From:Date:From;
	b=VzUj8znuELY86qNejwWFcXkDKUxUa0uLePdLCHzVOSRX4ss6+VA28nsD2X/0HvPy0
	 n+/K0rTTPmmgKO4vGeIKXKqY6Fb4ARAvn12zMRjKve19znjf8GLH0t8aFwArZvbcG9
	 oHj/jUKLpVnZROse9l0+dfzVGZfn98wT4ArAU1LMy9VxmronlKN9GyhvS6BQWvb7bz
	 VU90AV38X6m4RLr7k+ZMAbvQDcN1hiX3Z9gUKyF4d+xF50e7oKK2+3/mLFjMLkOugB
	 S6BL7enujrBRAfvdqJj1z9k4kYs1yccBRqvSMs+B5lHiFZOLfmptFRvfTeLkKrImVV
	 qMsASeV9LrEkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FBCA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699139358.7426.2103859728713397674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3ef227a3a1b372cc6a474e080d0b06a1b488e16d6bdb44e4a5a93f4879e954
Date: Thu, 04 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756991393
