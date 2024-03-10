Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EB3A3D
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710035897; cv=none; b=uEVRqRihm6EYM6Nc8xzXyVxFc5XDMWXUiymgNwVUUymNerUyiT0H2C7LMSCCSpWQI6gks4bxHJe89ItrQiBp/RavZ6u/E7P1/+Zj4hsIhfs84xJ4Rat5gvhiV3PAw8wZ/eVua9zPb7SyAF9mPV9BSMFhhSDtvdXkbh9HvP146sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710035897; c=relaxed/simple;
	bh=TphN9Mzx2h/DOl/2IFOWNto8/vBadf2yHXCqXdCoIbs=;
	h=To:Subject:From:Message-Id:Date; b=TZxA4pG3F7k9z1mLxXYJgxBNcDMs2D4WETUydWZrxaJq/Ne0j316VQuevNRsR9SwyN1JtdvWofLvWTMJLQK/pI8pZ2F7tqvShM2O5nN+dGGxFwnxNkFXY+bsWTTWUxB+dxKpsG4wxfQ5sRxO+JZPrWe0J4cCYZZN/pmZxSUdg4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPHzHjvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPHzHjvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8DDC433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710035896;
	bh=TphN9Mzx2h/DOl/2IFOWNto8/vBadf2yHXCqXdCoIbs=;
	h=To:Subject:From:Date:From;
	b=jPHzHjvXv8EvYEYuvnCx0QTPPemc93rWTmJskjznNIs29y3wzUP+t5G13F+cBWgKw
	 EISn1SM5tODHcFVhSz0RaqvlzUfy4Ed1ZfL+OY84Nfirb2akKuIjeho3TAPLXpFxK+
	 +7a2oXVvPci3QFA0IWOksG6tZEEVtXZ6m3hL/2c6ASxl5EsgOhiCXghCo9O137laeX
	 cELQaRqYR/a1+uJr5dFsJysDl4dDwyDp8FssNyOlIy3uRPh6GvmN04RHKs2UZY1EbZ
	 Nr0EuSVI4zCtL4ti5vIr4Drufc7ISf4vIAyUbwA+OTHXxUWt15XO5YcEN/UWtqpv8t
	 eJ7o7BMsJVbgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E513C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171003589636.21906.7880609137090870896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3804e68f2e2b1bb126dd8b3c15c22c6416464af6e46c7b6e5dce91c657611e35
Date: Sun, 10 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710035896
