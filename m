Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C3C621
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725515154; cv=none; b=QocI3XWLVfvcv6FWNBkDT3qo29iU5ivvx/j3J634DKa50WFMtRci7wYbEhUcZzlX8S4rTX63RNm39+w2PlxDwDXTt1KddkI8+7KnIoavcvN6glB5RXODXCltmWOeDQHXba0PZuQWy2zaehP+24xQbqUPuzv96I5RYeHASWzIaZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725515154; c=relaxed/simple;
	bh=8MCpBoNU/BbvYbJp8GWKNsdTmv9qp6qWYjUDRzhP2Io=;
	h=To:Subject:From:Message-Id:Date; b=f4JTlpJ40fDOaa9TB8hiXlwL3xm1vBoHSSE1Gti0qesUkrG+ZSZrqHPckEDOYsLiIYUAHnOfOfdodiNIck16xT/iN3qUvZR2zyhTnJ8tH0I8WtlT6hWHK5q0coAoA2m5D3DWQ0nmc+kZwmrtYS5a4oL/cvv6g32r/kVZ3TbQROw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWXr/80h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWXr/80h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B318CC4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725515153;
	bh=8MCpBoNU/BbvYbJp8GWKNsdTmv9qp6qWYjUDRzhP2Io=;
	h=To:Subject:From:Date:From;
	b=sWXr/80h2DRteK1PikP2ReIt2uIVJU3jU1NjbT6LvCKJHRPwXUrimqSjuz8plQUIl
	 kbnT44dIjyrxPn61WpNa5vRc6uZqSgZETMN1HjbCmfGYdn2JmkatTMLF76SOHRCKOB
	 i0da7NL8PaTHgAPNH6YyYCYqcLh2STFnQQktmjPl8LjIObHteGSK3guPgmhjGoJEyD
	 7mZ/q1fzfdSpJ4QSyzD+pgCicS5cWBUvltgieqrMmtCN5NvwnoIAdjnP1Tr2l6pv3O
	 7YrsTJYI9q6KAPjgFC4jYbl4SIVgGdoE81GeGIGjizJpU/eVl+15mz8JefGN4PsX65
	 7Im4qnrphk2tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E94ECD4F51
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172551515364.30011.14073466034081747725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257000501c7bd0cde662519e6b20922389f4c900a69d57a757486fda47aedbbf
Date: Thu, 05 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725515153
