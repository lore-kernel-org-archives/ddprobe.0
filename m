Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F9E23D7CE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768863835; cv=none; b=EwdMY9hPtFhsPlDsW4brwXd+Uwt6r5DEi9C/WpgJYqDaV7VuFtB6VArkNHtE66aQ0ZWAImNIVAO0lzcRrR6GNWP9+GLVGD9xkT2tzkR1tepT5pBIzJ6N3c4P90jrZWOMTkiXaHGIETVoh62oWqr0D2IU90YxME6/3imM3fiNFlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768863835; c=relaxed/simple;
	bh=LBLH49oMMvJlGWm+4LS3HxCyHP9GX/cd+CyxSxA2h1E=;
	h=To:Subject:From:Message-Id:Date; b=UEBNKMIbg1l3IuyV6dCP8+OpAK2PS1XzBurU418lcbFAGlmDPDE/FKxNQ782v5M1P6cOu4hU39iJ3dpblYg7LweP55FIncW56h/flyJkcXkfopDjdhPbUBOUD4HQHLSQfFVq9MGuVum4LhSUs7ZKOyOz8ojPeg/yHfy8qCKiw/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMpLvJfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMpLvJfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D8BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768863833;
	bh=LBLH49oMMvJlGWm+4LS3HxCyHP9GX/cd+CyxSxA2h1E=;
	h=To:Subject:From:Date:From;
	b=pMpLvJfxWmYbCpUk6JZMBHvVT6qV7w6HSTm7wtDif3E6f44v5uKmDls8vTVC256iA
	 ikoWzb+d1dyeTiPT6DSgendvoLduD3MdS4YW0TjQgBr72KYlZd2F+iZiDo1PSYFVr2
	 u32kAA/RaRt8hKIQEvFZ9SCzECnJfhcA3Uk2sbIHfRko0sOdR+DulFJ+HulQmYU/ca
	 ifjvayKjr4Urh2ft0L2oOn8IA7sua1MxgUsuZ8N/Pw3/MQ0Zs0GjzYp2LA15ldLlGO
	 XY+6bAHGTBmS5YZUGRUDEAbA6O1IY0uyw/PzerJwBVEUvy/qxCr5lJfDmWE8a2aRJr
	 Jm2S/t9hn3u2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E44AD2ECEF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886383363.18689.4762482495550035344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc00a396b13a9d8f7778f972eb85ed483053c44d7f837d2cb5362527dc0e400f
Date: Mon, 19 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768863833
