Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B5023DE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721643954; cv=none; b=dF89xCOUK4NMVGeusZKy0vxVJRjN43ggSrTFyl7LD62AQzdl5wsHdVnIEcWvQz4rkRbneqdH17DgNEx9Tl6u096sqQB9COx++h+p6MkxOuAZKi2g3mE6+/f1IctRVaoRSKWqVm9Oyh4x90O3OiOJLiRdVtoCMFVzpKAaLhKDw2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721643954; c=relaxed/simple;
	bh=TSb/ZzHWEzno8F06JWE/ORhQjx3JRYI1xr5XWBLsptk=;
	h=To:Subject:From:Message-Id:Date; b=OdaefyzgNsbiFLYH/yvlxQxK6vYdU5pbHGTD9FevKB/Ktx9M7uhJhM1olfnGFbk48JT5nnTIpRi25pwFg795POyzHIL13Zw/H+HCSTzoTGwgPsMOTcAte+sFdo4blHlF2cbkmEUs/eTsk7RRGNOZdOwFEep5Pwj7DWdskJbpo28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0m5NXY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0m5NXY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B472EC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721643953;
	bh=TSb/ZzHWEzno8F06JWE/ORhQjx3JRYI1xr5XWBLsptk=;
	h=To:Subject:From:Date:From;
	b=H0m5NXY7dTNQs924gJl6dB2NwMP9bsLfvalInxlhpLX4j9CcrFB/Mvp4Pa4LP1MAp
	 sNlU1PnNVVgeUSngNCRj4fqn7gfg/iky2KTht+mxtw2bTX/9Sp7+TNNudSl9tJdzgQ
	 YqecK5VA5Lcm/pJRpUdXhoPXTJV6Jbaigx6zaOCrKby/qcBPBjG9oklWpJIfhubo2e
	 WHA3JsbxLWxPKSmADmCYr6HmORVLZ3hj5PGcM9pbvCsIXCIokaFhEq3b62sYTC0YA3
	 4XFZfgba1awKNtBqOxRkOD8dcZjI5GKL3jmQ6uYYngv51JxBS9bFrW3hYuwsUTg3tq
	 +046kt5QU7PWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A66C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164395360.8511.18220816917418687549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ab9e81ae3a39b14c7db1b76f2e70d0a93b155bcb9b0fdd14968f54487627fa
Date: Mon, 22 Jul 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721643953
