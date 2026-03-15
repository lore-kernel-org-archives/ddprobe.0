Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1574D15E5BB
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773538494; cv=none; b=KQggi7UGrs0e4OzEQJ9DLhtwOPa0zX9APoZyo2BXkAuP0kKdGsXgaicurgkoYeXTdkoAxsAZEwXH5ES3z2sLzPbX95H1NfSlzqUjEfy67h+1UjQTqwS3QIPb9rPDrGmT07XD3KBEKSqPU7h5pe7w9TuBj22ZN+VrkN3Szj1Ts+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773538494; c=relaxed/simple;
	bh=becwQjxT8Ns/zbjuZ0rlNK/S1dfRmJEOrdw+ezbtPNg=;
	h=To:Subject:From:Message-Id:Date; b=PE16Ikfuucsz0Tv9qkh2qyMN3lrt1cBJQAmj3pCb0TkNHefoNHjnRUOeJYyTOkPcCzgAxotHqqH6WvivbJDT6D96yaqQxVwTo9dByF1SDlk3iL/+eLwmSEG0LolQzvLts3BzyOeJ4pP05dNddj3BEaG+mbi8ypY7Fl1UAxvF6vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twwUnbeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twwUnbeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0B2C116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773538493;
	bh=becwQjxT8Ns/zbjuZ0rlNK/S1dfRmJEOrdw+ezbtPNg=;
	h=To:Subject:From:Date:From;
	b=twwUnbeS3yrlVBtG9RLBDbzp12WM8srujz6JiWFlKXa4CSPAQJs5jZP9QOd2+kWst
	 +3kjZ3g0dy9sE7yy7K9kAnMgAW/4/KLs2GZLpnig/eo4GDI/kSYHSI1ZqyFgDp9FQE
	 Sl9K2yWufKypNpmFVJyVdZ7GNtR2fnyXgxXJSar2x6vn9iQ991dowgOpEAQjhLO9Gn
	 FDYFgeOdok2xMpRAfXpuCQj80HtwpAh7Wni/71OTgxOAZg8L5NmLZ+PgO68HjCvIGS
	 xeRXW24jIFgEV3YZV/2lhMqJ65KktM1cjW/OdFzpenGyMKLtxIPbjHcAISiR1Cb9yu
	 K9D/WusaUgEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B7710854B6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353849358.943.9426156882320904127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51fe3d803e9310abd7ed9f658bded1c65f351a5ccf9f0a471faeda6c96a52095
Date: Sun, 15 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773538493
