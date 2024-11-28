Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5F32837A
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732831554; cv=none; b=G46Ztg1DhAYQ2ifIh1AYmwLEHskQQPaWhDpkbLUzvQVYtR3RZKyMfWTzK87fynFjfKu2O0P0ukwEhaRl+NPctw+Bt1tQLyShpwzKyyHBCx/sbWyUg6hWX35VdMKD/rwOkYf5AAZndJdHVXj9GFP9POufssnTm9sgooJ64NKD+iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732831554; c=relaxed/simple;
	bh=+V4kziSMTClZnAaIQtZe7G+LuKS4O5IiBNvKcYlWxvQ=;
	h=To:Subject:From:Message-Id:Date; b=cQbLFCr8KZS4TOVXPaUxnQCpXcI8QuTZX0ZP3ThgmvPeU3nmlJEQ86MkgYFi31Ngl+41RopEvS9pW4UNGturuPPwpYOUo8qkg2K/qDKOccxUrJDekGB58HZ97ZLxUHoCNQPpU6VEZwKccQHz6cjgOM92TpWrVfuIXDroPQ4uBDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiphW1NA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiphW1NA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B6C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732831553;
	bh=+V4kziSMTClZnAaIQtZe7G+LuKS4O5IiBNvKcYlWxvQ=;
	h=To:Subject:From:Date:From;
	b=fiphW1NAUP9Y+SBs574LJXy7iyJWcWDdvhEb9A1PFmlIOycLKzM3KO2ZXz4LxBu3M
	 jeSJgs8ZrTgkvrFCt8C5camtv0SX2IJL1LQilswoWvhD/aWCaXhXj3PYbIs27iuyAl
	 n6XbWjFLtzGpt8XAbD8OTDfyETqLrk/WAxOJt8vaN6pBEKdfzNPZTmLqWB0zSjLWXE
	 +abvIywimmaq56jYuRva5tRZeoUidi1OvhbVaD7rYVb8SqoVsOs4hLcx7N9TiaVTNV
	 XSbH9YMsWXRO0gJqChzwgGPNcmzjoqWfsqNw65HDzHuAmBWWCxTuCdp9UgnE0UQ4Ld
	 TGrdZ6R7KqT+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA8D70DF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283155359.21748.12119516166805244840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6375a243da1730240ff6c35837008c8b8f5791a5c82b1c596ab01c6ab47fa211
Date: Thu, 28 Nov 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732831553
