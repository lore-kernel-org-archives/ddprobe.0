Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1486A33B6D4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580634; cv=none; b=nWfJwQ+KcXy21YEEqNZY2Py+HC3jzXYKamZ1z+8VrqLFBqCJuvwJOzrQeEa219niOiOhoywuGqs8vCUiD4Lv8X0+fNorhs3Td2YlAs55i692EyjI4Z4M+hiNFwmLra4++YOE1/bcubLq7ABj4kKmpel+x/ItIsF22s51xE0yoWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580634; c=relaxed/simple;
	bh=qEusiPpgX9qx9gjbVHsULUBFlXZyKKwxJUC18Z66UKw=;
	h=To:Subject:From:Message-Id:Date; b=RxAf9D7Z45/nN1At3slYDnPdivjcTaHhz7z5hE2kiIgWM5q4oEUOiAqFwlOzAp0WVv+Slvk2SB0aN/MAIcJsw1+nV1+KC14K+9WdioBj87CkfWSg2duMrMaNG+3kxcjefrEYSdkrmFJCUEhuX0DdUVUbkrsY+KW7FTRQj9U/t3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCeQTZch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCeQTZch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF33C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768580633;
	bh=qEusiPpgX9qx9gjbVHsULUBFlXZyKKwxJUC18Z66UKw=;
	h=To:Subject:From:Date:From;
	b=VCeQTZchkahkgBLPzNqaVsutVruylQCHBYDL4xhihJ5ZRClKghLxNIevu63w/wh7A
	 GHCAOToNgmg3dfDkZT5scmpyTDk+jwOc8Td1175yh/q5Sz+fpLzmnkB/A9bUqAd2n6
	 UULGuV+PdDLAEDHBi5gQMvJaTbfAMvrA/gMRWqBXL9hgM409R0oYlOQCjwiX8ibYI+
	 jhK9q4q+i72PJQvZUohwds+pJyqZMSjGIiWi5/dZ3C6o6+vWXjWRnVPT+EIlFPBZJc
	 UCMWEziC4O6s5jiYLhT2RxGQ9bcmu7MttmiWuRe6kbPwJ8hEWn9h+60RrzfDMlkp4c
	 /A7dVlsX5fvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C80C982D4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858063358.20236.12600466560755741133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb15ed171252bf9b9aee2687923e6c27b4120e96b0cc525abdf8b4b7b6791ef
Date: Fri, 16 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768580633
