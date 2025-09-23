Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216F31386B4
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758590395; cv=none; b=eDvs9BaG25JnAlVx6pP7TM3mYlAKPqLRE/h275WeOtvERzjmwztfO4AbRQA0QI0qyHdbDOeiw92SRKKcy+TVmDg0zq7a4Jcz+M34zL0j2q+klMQG8D1lEN/6Ww3Bx2wYQoWHq2ZHNS0JGgay1eFhjblkU2XIMrhq/ru0UTChjAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758590395; c=relaxed/simple;
	bh=SRnE914CajANPMp3ijfM1+jPeoQEew3z5VSSImwco68=;
	h=To:Subject:From:Message-Id:Date; b=MqTKdd4BLgdx61fzn3XRMKoRKRqQ7v4NyfNxmauBjoRFfE1YHl+TjterjrLmJxJgzNZE7L7bWvcc3GayIcyaVSoEWKrLUpCObD8tFg/MNcBlEMv5l0EHzcBeZ5rn5q5qcXnl6mgFQ2AtPS/zBplObxWXDwCPnQn+crA+0yBONOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZOKZTMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZOKZTMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CBBC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758590393;
	bh=SRnE914CajANPMp3ijfM1+jPeoQEew3z5VSSImwco68=;
	h=To:Subject:From:Date:From;
	b=XZOKZTMYYf4T0ClwYavf+QWlr9Sm3lEQnl13Z1m2vXR5PS/xPz2qBbhBeeXch2ftS
	 nY/jTvF7fJtA59eHyBxXsC5C/HQu/VYJ3Ep0Cx2pyBDhyihayUaxujZrFkAY5/OkH/
	 wNrjyqqIS2eQmYqQKzRgO/HHsEoJGKyUfEnjqaB6QW8VHB+j6Jn2fOACq9qz3KAjrb
	 wdXI6T+UpvNQeGYZf0uTsYmjg7XgUtEi8XeoJ0z+In1Prv4q1b8zMWefu+M7rgOxcy
	 XcMCOH7frGQzl7J4wOiDy7Sg4OKK9TRFy7uZIohkHaZ8y9p9nqLI7oeRrY+5Mo5dD2
	 ytjp4GmSEIs7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E7CCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859039357.14776.15406344859520680662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025b4df126c72d195f08c9e5dd43181897a964b36bcb86c277e07489a0b37a73
Date: Tue, 23 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758590393
