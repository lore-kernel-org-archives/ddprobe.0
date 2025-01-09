Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FDB218EAB
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736430954; cv=none; b=UQ/131HyrtyauaZ9855CL12aeltfUfv4h66wIBK5NyAu23QmzSwmChgbmbjLuUVt9wmlXMuavknpsgkV0IgolVQvl2qhCBwxoV1C5zMbDto55gR6rUsbPZiobbpA7WR9mzWbcHPk3ELc7Qrv8skt54RbBhBW06Q7rIhtAUMNlkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736430954; c=relaxed/simple;
	bh=ILUP88DI9ZpzcJILiOZp/sX75Tb/BrYhX3+XJNev73o=;
	h=To:Subject:From:Message-Id:Date; b=bLZp4q+0uCQ4vaXIr2GpdBsUxXPZGyv//mS+gytksDw6Q0aXF004PoiJSllHpU2OccPjV3O8t2j3DHycyYN9yH1TKjrEaX7/juZO8lbWrO3c5AScKIEIiHGtwt70IUOyoQ9HZznbN68HtGolH+V/fNheAwsKjeDnL6LCOE8lQ7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH5TkGjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH5TkGjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AEFC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736430953;
	bh=ILUP88DI9ZpzcJILiOZp/sX75Tb/BrYhX3+XJNev73o=;
	h=To:Subject:From:Date:From;
	b=XH5TkGjfmj1RgdcD1wsadRGJxNhRcCJMq9t5WEefqyq1grP4PTX39gDYXMWKt2U25
	 EctQ/eKwqONLIqFXRCl/e/Gn4p784elQ2twbRsrdnUiEROanO8/+bz5QKbGlpBZ2Sn
	 1UBA8VNzNoehQOzftzy+yQIC0elWIdwZYVf43nAu6ZUjHbomu1jWf8TuhGpqRJHgiP
	 HscXlf0Ah6Wt/TpZMWeCQ8UkdM1pwHfAkF4Nvmm947pMc61Bd7a1C0vTANtRilZ5nZ
	 hHr2zeVdO+bpypgeCp816kTQORnoWQvzj2jZDjS0qK+BV9rZm6yC7hKh2OyahtOVFH
	 0dRJkg+gw/vcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C67E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643095357.9468.4538336077388209018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61160b4fabcb890ed58764d49a4b6b9c09f46687f79e524d3ba6bbced2880127
Date: Thu, 09 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736430953
