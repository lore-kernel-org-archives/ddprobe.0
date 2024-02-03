Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0855D5F54F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706977097; cv=none; b=Vh6oBLv4bTuB0fL2peuwigSGVqECdrAjTQ7f02YDvWcsXfJ15DM2zW16YBIlU6GOyTNXLvfpO+G22lt42uYCH1w3lB/dx84QOHQuV/iLSJV78rBA+IlRVLPujd6RsjMNWdS3VL+N1eD3M0J6c5R2Y4lV3dyGvgHkTraVPplVpNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706977097; c=relaxed/simple;
	bh=Z/LWSjw3YqZiwZG/7KGrtOqYkZ7vHIK2yMw2X2SyyWI=;
	h=To:Subject:From:Message-Id:Date; b=bhlSX0iHK1JrvJoxdSNAnwI0SbB0W/stueKeeskAluBFRG32pbiUqOHRWMU37/QoE7eHbHY9ht8oPnc1ZOD9Cpw3Lq7bo628pNvDNEuK8+zAIk74AGKH0sSso/QlbCsJv0Xwpgvji1wgGrHmxTqZorHoi++k5aJt+EJf21+GH2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6yVioAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6yVioAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E91DC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706977096;
	bh=Z/LWSjw3YqZiwZG/7KGrtOqYkZ7vHIK2yMw2X2SyyWI=;
	h=To:Subject:From:Date:From;
	b=q6yVioAH2oK1vTmXBGRgFTft7Fb2ZMQKW7mcBVe/mcbHnW78IM05n3K43ETd5/MJk
	 zKXqE85VtPlkoDPszZ7QPoTVmYSUc/78sKmbEIdp44Se4kNknDqj+6WeC284XyLzlH
	 L4g7rxLiNVyvT0vqE3h36Bs2BjRtupZEiSLpZpiavCOq6X8fewVmJCXsI6wrtw8EWu
	 bq7m08HDGDLAEXhLI5+p8slNyhEIPf/f+obVuKO6JpIQZdyJJpQiU8DeVZWNSzmJ5c
	 p274TtLWeTFNElGMoIqR6YPOYwTFDl2W2bxN6mm5jNlSFzY48HBnvIOjC2P7nyYvCY
	 lVO4zmMrC7Izg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61943C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170697709637.3144.11314020950407002373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad06bd8b6a2ff8eaee73d73dd5f90ee18639bbb07f547d8e543b6748e3ebb3c
Date: Sat, 03 Feb 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706977096
