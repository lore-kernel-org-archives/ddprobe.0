Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4293423EA97
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768955034; cv=none; b=UUocamXk6xEM4lszDaXbLE51VOEiLpAjyF+oLEz/d9EyEfV5dUrDQQZqIcr+uyoSzPrDmDxO78KuERuvgAVmW4VGSxryw1mIXMtB1iVRW80krjwcG8bEChs9mZSpHGSCD/3EYjRI2jmOlIf9/+yJDxHcB0nTnzHDu4Y0Sb2xzB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768955034; c=relaxed/simple;
	bh=d2V3Dv9K4liHqxDg0O0yr8HUkmPz4LuDYLOMST4xTwQ=;
	h=To:Subject:From:Message-Id:Date; b=Uz652Gc3ZW8jL/gWkFKVZtfZANT8/S/nFmZY538mdps5JSKTq3p4AnEET9ZcgN47Tl7v6ZDHD1FkTOejn9Bw1aIwfeP7FfmXnywki6w6j/rQaY9N+ql31g4gW8Su/pI3aAUaFzEqQlWrzRXpXVJ4mX5TJFSnagY4hBayTgb+hDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJXFzOLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJXFzOLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FBC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768955033;
	bh=d2V3Dv9K4liHqxDg0O0yr8HUkmPz4LuDYLOMST4xTwQ=;
	h=To:Subject:From:Date:From;
	b=AJXFzOLIlDgarQtz+E5lSjucWDtAFX496gW9SyjFeULM/FQLMW/+JGvDgEmMwMOiw
	 Ejyv9FOulkaEWPGS95ic+eOnhGZ7gxVV330B9yn52iHgxAwuTaE3oYtWvfP8oUzYPg
	 cD989grnBN2cUGcqTBXhLqe91WyMqoOA9ojjAztrcYSgNgcLjEvWJ6ylpesSH+x79t
	 i/Qjmybnc9RjNoNheXUOCSdL9RfyTgDDhaiZ7/8BJXqlrqdLDgdYadRWMbWMnRDvM8
	 E0nocjQ6imXU/4YZgxntEbU9sdJKhH3h3kVO0olU3KsfoYWfbNKONW+9B7vw5CP3PE
	 E3DkaE3WI++Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908DAD2629F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895503358.9983.1661216533542817789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ba0ea3a7a4c3de59e9189cf26c6f24f1567d26d8c3980a9debe2671b87844d
Date: Wed, 21 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768955033
