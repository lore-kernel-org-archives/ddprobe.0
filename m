Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066F1611E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774846494; cv=none; b=q93XSW7tcVeNJ6LN1TYvSa5gSQC2ZjZhW78Qt56rbz3LS33chug4aQpen8/DDUvdCeo2Xk2D5KYxt54TqAlnZUWWBIaobVo1UuYxuXY21fK7BNFNss+brEXunB9FwQPGXGHbaQALjRz0S/2KmNwO3yhqEuLsp8veS7JCUo8TsF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774846494; c=relaxed/simple;
	bh=zSrg/sVHLLv2h2TcxRRUjXReU30VNqokYBeTZZH2CK4=;
	h=To:Subject:From:Message-Id:Date; b=g4wWJMbmATkjlroVyGJo179IWnKGHQ8mmOGTjbVnatCMd3Rb/2+lLgQMCyNqpfJUo2FlJqJuNE5OA2UdiWITx1EnIjqE1kEoLUESy+9jf/bu6qXa3nNwRgbZxf5zBLnrZHuXBAfJuSeEOFWqjcV6g3V5dFmmOyfVP6bIE0TsXXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UecCPDBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UecCPDBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4590C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774846493;
	bh=zSrg/sVHLLv2h2TcxRRUjXReU30VNqokYBeTZZH2CK4=;
	h=To:Subject:From:Date:From;
	b=UecCPDBFFKRJU0dyv+lBGVZYl68a8Ubfi9Q3ajyJIXKqfTCeFslHYmAsTv8+IMZU7
	 RPOftk6BV1XTvShyWxRUFca6dhi/ZZE6o+PiE4RxNWzWU8qtvxkQYPzj7+Pc1y/qZi
	 RQBIJ1qxwcTzefjp/MQM9+jU6HNPvyRCkPhwfnSraLN09ATmKL8nhkx2YlNiJRnQXo
	 XNFMZH0AP71h2apoB+/BQ6IlBBRcAM92CALJrzwn9bIYUASEJUGb/FGmK0MJVf2i7X
	 hJ0D+Rv/XynR8peUiS/7UQOCk7fuBmcsGo3jQu1Mh4pD6a+IzueKiyWe/lEg/8z02T
	 2i69Cv9aKGcoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95564FF4940
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484649359.2897.7021495156815983240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab26b595ebbe3b0b2c8fbb7a595b8a1978887fc845dba1ef03c2a812aae8e14
Date: Mon, 30 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774846493
