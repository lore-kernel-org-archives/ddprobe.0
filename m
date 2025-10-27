Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB0C2DCF5D
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761600594; cv=none; b=LytL+Mgrlm4j04xCbPqF1uJuS8eBARSLJklSmcC8DZcZQ8QrXNhHbV42ojAoCqdbeDJ0axrZ1SLOUkIhndcBolyxqw2U0yzO6HYvXHaD9cMHPf5bczcDNG8LszfQEG+k1HuiSoFezlvpG6dX+3LdpwRfeQbgcPq7gvkBhcPbiVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761600594; c=relaxed/simple;
	bh=ZbSFK2ocgG8iWHocMDc25uW+xckNF53i05P/X5l8+Ik=;
	h=To:Subject:From:Message-Id:Date; b=K/GsINjYBu6sL4JFxNTph3FtTi+Is7N3gSy+EAP3D8VdlfEidUOepdZyiH0J/taetlE7EFhDtvevlVkvcj9ArO0HTRLdbZ262WMyxoLRr8/wUxPLrOkPeBuB48zO/dSr/MsE0N8mfHAmWXQlWCZdnm7iuouQrPcofenMomrfV8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSJSZ1mE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSJSZ1mE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27FEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761600593;
	bh=ZbSFK2ocgG8iWHocMDc25uW+xckNF53i05P/X5l8+Ik=;
	h=To:Subject:From:Date:From;
	b=pSJSZ1mEwR7m+zblMrNmOCsxrOONdVxSfm+O3h7XPp3V1vTMfQWtH0gBsesYgo9F9
	 9fI9NG0NQGcHATZcaoD9AEx/c9Bi+1fIYaLHZ8EXgCg62AY7WbvEAWQ+JnbG6eB+lC
	 0iCZmagPKSDt5ky8Jq7oG+dD6Wyv07wAck9W1+h2A+S9UzCnN2Ov6A3ekgJf74tzY4
	 GJA/gLUoDW+7lMBtTZg2XfjDrWlrPRIvnTgaD1pJoBrwEXzXDANBj+IoPw721RdxUd
	 lsZ3/2BuQJSKQioJjkQyBJr93CJcvWgsVbOg8CFqXyCTsZRy3drZ2opJY1GMRtHyb+
	 qiZnCeuB8RETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F060CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160059357.17774.960635686730715427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7b59874e9437088636a6cfaa63f620f70a0c662eeb564aab2eb5fc1489b945
Date: Mon, 27 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761600593
