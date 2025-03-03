Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C272C181
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740966534; cv=none; b=OWTR+NKryQ19kgxrFJtv5FWlnSJYxm8463dAWPt9KAFzBhCk/5IOJVYXK05ASsIHDJmWJ00qaWMmCd3YLIc/wJ26tQnNTyyA67g5Csqs4l+B4YpjXD/g8grEv2EwzemGnbWRu15cjjfi3L1d6+P4tynyqeO1zwtUzn17oC5y9+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740966534; c=relaxed/simple;
	bh=QVNc3RTZfCFWsHiAvXrK90i4Tr+sp3ixc7xg6scIJvc=;
	h=To:Subject:From:Message-Id:Date; b=mv+fnfiBIP+EVyUJWbhKxoPQHbumUBZuCSLHDJWZgXGMEOJQ87Yn6x1RpnnGDnent+kDJHRVHng5qwjtupHFA7Eo4ETYbG2dJbsdBuksDplxpL7gVBjkv280QRZdc3v8J+e1QA1XUlNmItpYg01WZ3LJG7Q07lbs18iVaT9UHjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4/aTqQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4/aTqQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8700C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740966533;
	bh=QVNc3RTZfCFWsHiAvXrK90i4Tr+sp3ixc7xg6scIJvc=;
	h=To:Subject:From:Date:From;
	b=h4/aTqQVNtHaqJTbeczJHa/IN0lNySXNeOmYB4bAIZxYx4z77r5XemuRT4O77ze/O
	 X/y3QmJimyO/Po4xJovlEh5+fa2Q/kcZzfAlZgli0pGbH+xCWSJggW/GHF9pNJW0eK
	 SVZJp+gK1d8rVyVcN4FjNSX0OiaALX9YjvvV1IIK6oOwUWl4SCyOAXxwjNtIN5UiVv
	 74781Zl9YluIOiCv0fYhBW7JBOR4qbLvNtwGYoFb1th9o6oojie5AA/TI+WjxFTeU2
	 nrLPCKYxZMlfjcMNH8mj6Vf+FyiksDs1X4XpjSAuqk2aeZJ8SeoICK5RyU9W+ry8qs
	 PEORGG71sNPvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94634C19F32
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174096653360.31586.4518324039727930179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7fd91200d90aad46cd2ff6bcfb87ab00e45766e72233c607cc381e217980f6
Date: Mon, 03 Mar 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740966533
