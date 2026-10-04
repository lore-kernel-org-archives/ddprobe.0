Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB76F3B8D5C
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791099035; cv=none; b=b1mUvkeEKH/vgG+za0JNdQ605uv2O9HsaHz0xYeQmTi6Q4xk5ki8XsRFgwx8BDLw1NtqOpeEvcjWQ5V/AxMVsX7ucVZz/fitmM46WBBuCDyhYiDF5gnafU0bT6Fz/do1a/N6sSnxxYw+iaQCxscuyO7Um91M0rQOZHvGYnyxYQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791099035; c=relaxed/simple;
	bh=/LxNYbAaJWQndHjY+julefFWq+3q5BNo487o5Ntsd0s=;
	h=To:Subject:From:Message-Id:Date; b=PuZBV+garGiGmbaJrDcCktkOn1fjUb4bCwU2deW2MDHsEE8BF/TS/MlII3a0AZWlk/2oalsWKRa0H89bbhbqpprU8uq+y6tjUgUbJzDYJs4UXnlN8A3DKHDGQwTde447PhCEDTKd4QOOAd6Z+lUdkT3MtwDlTygLEsbpCaPFQDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FN/WyFbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FN/WyFbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D343AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791099033;
	bh=/LxNYbAaJWQndHjY+julefFWq+3q5BNo487o5Ntsd0s=;
	h=To:Subject:From:Date:From;
	b=FN/WyFbUXQpTSCvPEy9N8vguLZLCfcW+45vaj7GXgGeLCj8t5cl+jLnf9+86MBrgQ
	 QFCqjKYX8QYIw53Q0IaFngn/ZgzfSbw5oSQ/YE7xJuNI1TFwTZDJiXrVWeYXpyUJCZ
	 dTmhfckEwawLIVOwSMv44zbgdHmwjK+tPe0PWzqCFiaFepk9ms/zrsn2kYYGUkBJhb
	 qh/sLPvqhX0hww/bbGt3Kv/SC285+oTSCFX0o0gdh4kOJXPfPxdBhkJYApv4FhfMwF
	 tGbgxIIf6LLJyba3mgxFvfZaZrQtoHaOvozAK5zr41JMHfz8S4HVVB9uHR8UE12lOD
	 q78Rk7nBpDJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD50ACA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109903370.5482.514416345697694465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c45be0eb2907fa5811a9d76ff61062eae7e79d9f360c67b7c4c15b84af49b72
Date: Sun, 04 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791099033
