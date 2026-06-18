Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E61739D6D5
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781774794; cv=none; b=HGGhaA4CQ1YdBjLIXFqdGCJiNSVOHCDoZQpNyBY24G1+x94xBtLfhlPjgO6Tzk2ThjUdAOUn698GWJsadG8rnMZY6nu+mTlGIWnRZOWFrroNf6xwJcrJJSCx/hpFFp9yqTM6kj8+sfHKcxYYRSnGL0Tu2fmCjyBvooVDUYlLcRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781774794; c=relaxed/simple;
	bh=eTQrAvP6ooSrAjF1fYxEFGTjPld18jrBHxwJTNI357I=;
	h=To:Subject:From:Message-Id:Date; b=DOtV1sdpAaUrxvc60C8PWaJg5fGwtMFjgGOVYdo89LA9ov6lSwmZWobYGZqLhDsnVjpndMtYEVN29QThqsZ3gHZSET0+y87ayRgpCNkcZ3eUs7DmtR/YRUOGsZCeOiDU3N8Vf1rLISkw/M500IcsHyodVJwU3QrBhJOFeW7llSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpcGpLcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpcGpLcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3555C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781774793;
	bh=eTQrAvP6ooSrAjF1fYxEFGTjPld18jrBHxwJTNI357I=;
	h=To:Subject:From:Date:From;
	b=tpcGpLcH9wmubQxk48e8dA87d6jl1HyrA8zFjwBfTLxrk62hHOA/BufxnJZ5tRWmx
	 sB0GRhFH2rqvlOy1Dw3x9k47TgXxoL9rJi7hAMKBKQvvu2YyeIm+myvcwImrjBwVy+
	 3gB4tASwqGfCeQi/tjeUrZ7BGlbtPnfHIN29nda1tGrUW1tMUHFtYPtcwCGsLDBIr5
	 mlts6JrQG8D+wFSeiYcuNkLVraIKuOS2QdwNlHGyfUsb/C9Gw8DT6pTeHDR9vKUFjz
	 JJANrGeHPdsZksW4WHgX75tL1+CxytRUU3KvSh/jOOViSEfZ4kt1Yu/Q1PDTBEkCx/
	 XkFm8OdKCTI2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33B3CD98F9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177479372.22687.16633114014594922594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6ee24abc92b06f748fc1b1890d8be4fdd20a601d630686aa1dfe62c72cca1f
Date: Thu, 18 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781774793
