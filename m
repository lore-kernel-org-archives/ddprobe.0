Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8873277B1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760533794; cv=none; b=AC4ldQ2VcOKQk5FjNx9hSBl1BVNpHVOCyX4QuQk6U3vxXdWGb9mG1E7JvMWYwjvVNmRcbkp63lPNMWl97ki1EUk/BhARB2FCbKlJh7vw6Ozi2hwylrll1LtKwadyvlbpIXX5v5oklgulXbdU5///MKbnpMdkcC1qf6nGDQ8wum4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760533794; c=relaxed/simple;
	bh=4CgDKAXJzZSTB85Em7Cna/HQjhUxiuHJHFg//99qtC4=;
	h=To:Subject:From:Message-Id:Date; b=RmdZJf9Bbocw+WsC9SaxgmnMXtFg/h1UQIsRcZ6H196aFXRaOxMC8Q4AxgRtNL9tojI2WX4Q3toLcW8p5pd0uhznU0qYjQbo3E4gpgobQOUkvw5K9OcyU4eka6t8cWh6w4jD7P9BlPYliV1M+I0OBgDNItN7MoKbPT9B2N5oM4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1d16Fss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1d16Fss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11F3C113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760533793;
	bh=4CgDKAXJzZSTB85Em7Cna/HQjhUxiuHJHFg//99qtC4=;
	h=To:Subject:From:Date:From;
	b=J1d16Fsss+Bg+XoetL0cYHq7cjDx5ny+YBhrAkcHaWp3NUsjeaISU5OWeDuBNthoL
	 9mHkg4wiTrmQhl3fxeQA5gdot9iwEDcPeMVzHNgCQoRCHqvLLK05url16rl3T9wI99
	 dwjYCjgFubu6SvvpLxE0YN+mqcesrQwn0HyeDn/x2k6OdEVCX9ej4usgBjkj890xT3
	 gN6pj7ufdGt0njP51hZ8SGYGAeb7wmGFzdMffWREQSc0O6vdBDNCszTpe0ymyhHXYZ
	 zOnmWMUlCUFJ5O4dHYiLEM+FxEFP8chsjqhVjswrMem12t1qR9vvnkO4S4RB6IQHmU
	 zRjmlr5zrqPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1ECCD192
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053379358.32670.17791392138322294538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d90f60b4902c36e54f8bb5c7ea0215cb894d94354b0fb10004fa6ab2015fb33
Date: Wed, 15 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760533793
