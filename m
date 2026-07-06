Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BBA42A780
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783341514; cv=none; b=GnhE/DdFXyqM9MuHnF1wktUjHxUFd61L0iiDbMckbkhV1GYhh5/+lH7CDe8UNOLWkI3W0bOo4k09hOhZVCCkMgVhcwfoZaIenTjvFAgRwFIMuGqr9Y7Rskdoi5A6EFM9VwFlMPaZEbyJUEC+hdsz8Rq5cfGdzpuo1GVjE112aTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783341514; c=relaxed/simple;
	bh=pDD4Absj/9ktWd9OTpVl+aGlRFs+0ymClDKmrO4zAko=;
	h=To:Subject:From:Message-Id:Date; b=Xxijgd6a1jJWfBq/RA83jQI7NkImWlMXt8I0pzqKY9QrviJ5oxubT6n1uqbbC8BGcyAidnslb6+EB8QWmZTsyvdEAZFORRD+q8stcEopCh6Z9YckUgDJvRiQe++5hQBJn8kX9YlJSe4FnaWFKef33JYLmnN8OfNy8hrjtRCYPcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IV5pnfa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IV5pnfa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA063C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783341513;
	bh=pDD4Absj/9ktWd9OTpVl+aGlRFs+0ymClDKmrO4zAko=;
	h=To:Subject:From:Date:From;
	b=IV5pnfa/o8fz26kReKad5fQHJpycVIcxbUaAuBLfVI1Q2s+srTF8N2+538POk30k7
	 RH9VEM0rGMmdjNLSjDybuqLaY0lyW3yEHsJ8lNNtDjR5e0KGT3eXpD3hg4XAnwRYhX
	 B13Uje946SsSWkMS5tPEmLa/yhtfuPqwoNeHf+VMbgYIh13N3mHzbCVdSRcD2sCxvR
	 3JAXpPw+bZZEOtOp/zFyFx778l3GENhEZCtttF7H3pY7kvulPBHm8g6EeXXmkXwaLk
	 /N9rmFyzIXhEE2B09OQBG+v4GSzmgxZ/roQDtvNrbPiAhffXVUFVO4USICkrenf1jS
	 04bCDA16bd3mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB3C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334151368.7241.11193861243869220532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc08b03dac9fb41841a9a6db3b6b7854daa60dbb9ca7bae714a8edd7beb5ec6
Date: Mon, 06 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783341513
