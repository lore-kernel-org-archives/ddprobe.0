Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BBC2560C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706456897; cv=none; b=XxEs9danpsWq1qyz9EhEvfiyHbQb5otoDHlNHLBbdH6YXCFDDaGeRkF5MuBMse3Ohc+Sv5AMBSemr3mDhAhCvF3yJgfFBNyVBWVB3A6ujfXockj/Lp5iYdmlDyFVWRaYEFvrPPrubKl4eDGKGhaNGO/XX+As05g78dr+LXPYxHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706456897; c=relaxed/simple;
	bh=KHmJwSH1Yi47AsLwb8Q+XVByvu5SiV6xHG/w9HPxxSA=;
	h=To:Subject:From:Message-Id:Date; b=KHTESezBVsQKTiKLRGn4W8uQgDiul1ga7/bFxJUlvth/OTaJP8V/PU8buHtH5QDxdNHYZVAMAVipNi7DDKe4fG1h/ygGOB69fgS6lCdz64bZ0gD+oTGF/ckTYGBCbxXZQzqru/4mwNcLlbe5YzNDLPaBl8Y4t3+Af7L/jtBgZdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkBxkCbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkBxkCbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B667C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706456896;
	bh=KHmJwSH1Yi47AsLwb8Q+XVByvu5SiV6xHG/w9HPxxSA=;
	h=To:Subject:From:Date:From;
	b=FkBxkCbYN9Bypyf/yi8Sjx/+nBcT17VYfoCmgcAzvLm9jBEGaTzYnrploR/ZU32RN
	 MhXBntXvWaI9gP++kNh/ur7rpv/IGQ+CyG+Ni7SvIUTmeiiJVQ/bnUvPScPqwVjTMK
	 i0N+yvLu5GX+lCaVXSBQF0r+F/9WmICoJbWCxPfPrjtmx0ihF256ooGzD0nDgBakmW
	 y7pmBSFBd79OeOBOak40nwsURCC8wTG2dYnYWMO2BoKDhZ0lL4ZgDQFFFGpBMmgZqN
	 9C7dEw8V2ruMVl4SqXI4z1mshGSSs2xJP5f8LgACTQqQ8KcW5AP2VuS8PfPIqgY2Cv
	 T2jfdHbPCStyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7FCC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170645689636.4441.8758605056656839415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d716e379d4b1ba25aaf99698e96b0d3a00e573212695327873bd017116603e0
Date: Sun, 28 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706456896
