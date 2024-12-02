Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2540A4A29
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733100954; cv=none; b=L4tGF/36TyvRqO/HBkN/n67yDITE05wNb6gkJk5ftU4eeIBJF7dt3JxC0qchDxwAv27Krncvisb/GzK3luBxJI6u2swpDRSfsFXT46y0Fj4AvP+IgZgJYFJI9BA7JMCZX9g7C3Rv3hUmHIowXydJ1VLuEj6Oie2+7ubrph8nK+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733100954; c=relaxed/simple;
	bh=9r3mlPDcwSpj3VF/RXB7N6XRxpkBjExD4X2AIAkQgMg=;
	h=To:Subject:From:Message-Id:Date; b=MC1tl74yAOlOIHa5TTRP80I0+xtLr+Oc/nVpHm3Kp3gni337JcTfOvI6ZGni63cBv2Cln4JLTFYkj4Kk7jzzevXsup0EePTXjcmPv9VpNtkWFRC+lu9F75Lfuw1JXy4vuPYmftEBM7bSd/d5FSOI9ySP99s0Gjqfb+LGck0emP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igUwXhgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igUwXhgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8CFC4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733100953;
	bh=9r3mlPDcwSpj3VF/RXB7N6XRxpkBjExD4X2AIAkQgMg=;
	h=To:Subject:From:Date:From;
	b=igUwXhgh8sLJHKjjBoBa+E7GpfrsnrM8HgXVZKTdMLVRmiI5dNjnS/CNl8q+f+X/0
	 KSvS2euy1YBVF5VLeYAMCVdduVcRUyBFpeFjTKApKiU2w+15uYvlWNZdX6pN9ty/k7
	 q9nA8ALcXU2qwl3T4tljQEg3TbC8pAmu5zf+i/MuMZapisJfKQ9miAivVpM9lC9Y+w
	 CF4gnBxn6hGGYrcvBLLulJ5xhNyGwKltVF3I292oJweGDcCi8yklW8mhg1IknXbrtA
	 +eilhi75sof5+3szioyq9DxqS7hBtoCEs/JdCwEdxZTBz2aSkakHN0NIMAXd3vAygJ
	 4L5tiQCb2Ga4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE8AD49791
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173310095361.22353.17732147135274385696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38babf1fd7805539f46dbb93c2fc46f54af03c552c80189b91942d6d8715ecff
Date: Mon, 02 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733100953
