Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4523F35949
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748669394; cv=none; b=r9agBKxa/eVqjtp3HTDlUKdtupv+ZjSb8BCJlQnHtI322ZS2yOjCQ158gQ7xDCpHnLHoOCQJx6CZ3630wVNefo+uoEvysJzpUm0HQSLnKN4G2QZ9zMVa6aUTTJ8H3r656O9Gj27gK15e99fERCpOJ9+klxyU1IqSaaOalpaSdKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748669394; c=relaxed/simple;
	bh=w914HPQQU1Bf5B/x7LmJ+Y+rPwXUVJWcICZc67+Gg7o=;
	h=To:Subject:From:Message-Id:Date; b=cEEio/47piHeJ0JSK4Z3+1CSPjV1EaZIqE4Tw3ZMvQglOami0N9hCrKa5rZVddfQT7FpYRKX6m/Hy7Mayi4PcZgsZcV8OusnmsuTlWMLj3kwzmpScU/r6LJd/4jfpATT9/O3qMTxMa6H+sD1WJEsXbseIX7ZM3nx9Lf2lI4Zk4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKm0Ohru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKm0Ohru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFA6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748669393;
	bh=w914HPQQU1Bf5B/x7LmJ+Y+rPwXUVJWcICZc67+Gg7o=;
	h=To:Subject:From:Date:From;
	b=mKm0OhruOWRRMmOAZYFhbM7FJdXkdtlQDmpmeMk5hquU1fbVW5VhNrBe1Ffoltswq
	 LSUhvDZUrXz+HFyhMZ4iD6clbaCkx+biv3jqQr69zPAIRYm+AtEBiD3/gfyPvgswiF
	 0408Efp2QGLbb/3c8tkK/s7UYGfdP6zA9nGMnxoC/ngXEjExKrmijTwOXgoJIEadza
	 cSa4MaCQrgzzrmt6v1jJXrk/f/x8dSl2omlf0CT5aQCn4OEHiH+exht2v1616STIhd
	 R2ExX8Gn5D1oE9cxrs0qf5mka9USRXCMXzCWJsPcB+Wi++uBb0y2fshd4KU7eE+2sy
	 8NXJvZWgcOE2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968E8C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866939360.21112.12097255107998691968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e4712dca539498331995dbc67ae41dae2307337867be72e1eba9a06de8de6c
Date: Sat, 31 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748669393
