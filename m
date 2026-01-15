Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A94E1E868
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768443834; cv=none; b=r8wkwUHT5zqV0DhuDDhjFinSl6/iVc+U0x06ON2NTLhvsv+M6kh4hQwWObvF4u8jRoRrSw+hJurUKn/X388lyO/6wUUTJQjDn9FEKAM0jMP3YAfyN019ITkgjA7M4zI/Fhfto8Xx68W02zdJRXtN4Ci8umTUE6ddle4pU/Ey/rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768443834; c=relaxed/simple;
	bh=ZInylhEFuZlti/pH2PuZtv8pIJboUL40hNqLhdkslT4=;
	h=To:Subject:From:Message-Id:Date; b=Uz28M8cnNL4xzoGojQAuVjN/o/bm0TUTjXMA3OwtsCp2h7BTYeFiMg4gmsK03LcuvtvNZ/pVxFRWbv3bXt+Jab6cTBV3TLklAZ0OawoYsV4en33sESBA2umGkfGscKTYidHNYVwaKsdZyVoWnpvQyVVKIemRqyTe3EMHZij6k9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ljd9LS0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ljd9LS0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9CAC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768443833;
	bh=ZInylhEFuZlti/pH2PuZtv8pIJboUL40hNqLhdkslT4=;
	h=To:Subject:From:Date:From;
	b=Ljd9LS0oCISsAOiTS4tfafsRwtZNUC2GGi88xyam6GnFw9vAeKJUWvvWXnCDNVDsr
	 rqwr/DNVy7rQscBk1YGurY+65+Cy0s5gpE41DXBIpuhDKr4qQGHjij+qs/BGSAtMII
	 vO6H/nnuRqk+1E6M3kDSIirqDg16hlB8ug2fwlRc9TGdZOzNmzgGQATxqrLnF7+gU2
	 E4g85Lib+lS94QBZxr8fpmYZfDVRc6walJnbepHDMBLONIjX/8Yf7ZJ4J50qkZeWUQ
	 B31n3ch0pg3enNDBqpj4EH8i8tuuGGiUMGkIlAFPVdDrH0yiwg85OTNbVspW6OgLW6
	 zyA2mrYxJ5rFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F475D3CCA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844383357.13942.5784122639932418658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8559e85878cb6d408d9ddc89d570b40fbf69acdc6423b9bacc26017d10bee5d1
Date: Thu, 15 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768443833
