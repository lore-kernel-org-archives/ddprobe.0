Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE54305678
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786967434; cv=none; b=WT5PUy4oHRoDF8fZ+58+qpsEmZ474aEohe9rVy+CY2XHDwArzAVaT/N/iw0b8oU4/ORLI8WmM2Gx7SbbiOAW0HvqD0GV+2Uw0PfIW78X94B2NdV87i02H/ta+hZu5EOhHTZPgAITq5Vvikgj+LzuiytP538dLMclnrkGGARrYdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786967434; c=relaxed/simple;
	bh=7D2omAqjaKQa5NOJ2RLpMUcvg5bYadfULoq92jMcmlc=;
	h=To:Subject:From:Message-Id:Date; b=QLNSTeQPHNoX3wJyv8F/xQqlmH+40LTDyPXsKJEJ2Du69uIxCgcNtu5rbwhsLqXWYlkvDrRxxQJmMZQLzMHceN+tDpUOqQrkCkQspaoWWRmtwSOL4+Fe+RdoVf7drJIbqLZNIy3HVyxnACIYsw7oM9hZEKjjpU2xNK4xiHpnxsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kr1lAMXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kr1lAMXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16D1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786967433;
	bh=7D2omAqjaKQa5NOJ2RLpMUcvg5bYadfULoq92jMcmlc=;
	h=To:Subject:From:Date:From;
	b=Kr1lAMXXNACXDxEsDvz621hg07t9hOIm4lfW+1VsujuuzDZ3zOBnNBYZELlSgxpWi
	 VQE1k6kSECWMlo+V00xicEfkkcwarHE33izHWub7B4ePu9adV/0D69htltzHsDPdnE
	 nqm11wKjpjpS2jylP0GI6k9Kjyamosv0ef2qGZVlfYPa4m3uF/+ATVU5BxIKQXEbFv
	 qkuw2RzyIkkMz/U39KuVR8Hr3oDKT/EODOdxo8eXsBfuSt4FhwmgHpKiFBs/ap1yH5
	 auz0kDOMm1/0Xv3XD0w34XZTiIKmKKMtR+dVFL5z2haz0LOnDZ7RiVJpVkDBpkUbMA
	 y3EoCUm5jjeqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA58C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696743370.2430.1715656406570782129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3cc8b692db04a7deeda73e731e20124ba90c331d0e25a2e137e42fc79204c1
Date: Mon, 17 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786967433
