Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA5A1B7910
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778471434; cv=none; b=N67968xYy6MQochScmRD8n6CgWUftXUBRRI5bbF/mq5lY/cu54d3wO+Rm9PjZ2cmCoyVjxBF5FppcYV+HEr0ikl1S/GNXDfqbtJHx8mYZ43naAe6pY6F6O8dulq6MDn7dpIVNbeRd8Uzb2161h37eZ9TlTAEtOfG8sv+QJmdVV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778471434; c=relaxed/simple;
	bh=pfAdRi4KRMOdbG3ri93kj2a7Ncor+JX1yn7ngjnXqyo=;
	h=To:Subject:From:Message-Id:Date; b=jddVfthYWKAAUwrBPqkZzuv6CZG3gB7vvVjPF4XLHwX5h/RUes4gKp1bx+u/QHgyUfMIIA5aY0mjGvL7AOLKCgDR5D0sJ1TqlJg+s+KdhATdi3K1kV/y96yISVpWgTXrEahONstPHLogs0rG5PeG/HYbEzG2LnLfIRqHMH6BUhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3iz3Enc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3iz3Enc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CDAC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778471433;
	bh=pfAdRi4KRMOdbG3ri93kj2a7Ncor+JX1yn7ngjnXqyo=;
	h=To:Subject:From:Date:From;
	b=Z3iz3EncHfllhKFK6MXPuJ68sowdMDhJXAqE/8fsAkhLajJlWhaTND8lpYjuubfX4
	 tew5X6cfisGYOZJnWJWQO4DaZ7u2yExIYG3kGF9Jdbu41VWR1mxsLz+uK9SH8dd0IX
	 +A3DRi+e0QEut9c6DNeWR8PDntDG2XpM1RnekkVvgA4kBLApryEWMV10z3n6iv9fbt
	 IiCXSruDWZY5OWxMAtq0KTuFfaIFvXXmdEwHoZVcfcFK5wGl5M96EG5SP/12tSJYvC
	 FG1YpNYAZCyPQaZD+IHoJzgLfVnsx/eUHmYwhTs2vbAUuUi1Gel3jLzduklGEn7wKS
	 rs9FspGKmMt6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B160DCD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847143369.11575.10524382592292684047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25c35699f4f6b97be124696639d29c57dc4a249ae93cf03527780b31a7a0248
Date: Mon, 11 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778471433
