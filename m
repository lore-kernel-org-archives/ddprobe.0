Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6E030F819
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774098294; cv=none; b=sfRtct1zc90pDI7xrUbhQVAEMsYJwOQSJcyDM6UygmuvbFdzZE57LjlxZ2o1l0xN0BJn7jlvWtDiois8z8L57g9ZKm2DbfRp91p/iC+UG3Jjf0wCGpMkc32/TvYLIB0RSWck8VYH9G1sRnYg7zPvldHnhNmSjPVH0sxVYWweK9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774098294; c=relaxed/simple;
	bh=wb/LyicY+w3aBGipjrY1zSlXfhPa0JXDpmeZJR8x7Sk=;
	h=To:Subject:From:Message-Id:Date; b=AQtFtEuWO2PgoefVnmNi/9JnPfnKgGBuLSeijJ9TnYKLWZJXVeWygrwR9Dr8zAbhnKKzJgTO9XwIfcrJPUrs9kVia3oNsb/+8fvJ7tNjZwdB/kVne1CxiSn+9DdV/biw04jrRv6nNrWda8hkGYlw44VXm4CHVjgXGiS5mWd/stk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIrgxfRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIrgxfRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A144BC2BCB1
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774098293;
	bh=wb/LyicY+w3aBGipjrY1zSlXfhPa0JXDpmeZJR8x7Sk=;
	h=To:Subject:From:Date:From;
	b=dIrgxfRdxjmJfwwP4ubKt0q7Plm0k+9LKKBReOmaBDHp8ddsIWV6df8ql8x17CSuG
	 d776eXyDtChB63iV8wqvHFXAIgqjg6kwpVxPJsdRwp5w+JwE8IAV7DSJHsRz98dcVz
	 A7jWr8HHadZeDqYJOCZDZ7F3HeUBxg04CMNZf/ScybyHcP+vTu8bTkZQjJYt8Alt7J
	 LWaeCPFATASMSgZWUrFzqbQZApDgdWjcso2bDjL59XRwFk/64tZAIORDSnI7Xr9T/1
	 0d6VuFoYjWIReLtz/LOvjyubAICtWOsBFGSE7mqyyvod6utPrIlyYjXkGyRjc1tafO
	 k0NvtRmsFVTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FD1094474
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409829357.17791.410504251360859510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1ad07e3ec4a04c864246d70e5741cc3d1dbba5fd9219ad0511e86b7930b809
Date: Sat, 21 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774098293
