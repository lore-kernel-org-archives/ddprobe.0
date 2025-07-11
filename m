Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1069E18DF6E
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752261594; cv=none; b=jVo7EgzZHdrMfbaD7DLZ5PwfEMV9hClglqV9RC+h8hy2UnmE0TE6rncvEdVpoSnkXuh6Az/SlG3IE5UWiH749t0yW1tfkpkNGJSSMNT6rD9b0V1OKIwoWDv9XcK0jImcypqiv6R5I9T6wWhaaPNb+lB2mUqStXzswVcGZNZA9q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752261594; c=relaxed/simple;
	bh=AH3rutZVRIWpRZVJtxANrXIf0v4w4BgrA9FsbD1A/gM=;
	h=To:Subject:From:Message-Id:Date; b=TKNSJv9x2Z29HzgU4sH8H88FgSSP1wSfAM2nDdQNuRCu4RQgegl0GEXtPmF2Q5aJl7UuRrrm4VhWEVwj7OWvqQ6/OJVwgdT++XrM97zGvP6gz/psZiLOQnSilkbAMIuIpJ0DzO+KHs03Tvf026+ClhdDZk0iaHZzGx61TKhaCLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSu697jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSu697jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A854BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752261593;
	bh=AH3rutZVRIWpRZVJtxANrXIf0v4w4BgrA9FsbD1A/gM=;
	h=To:Subject:From:Date:From;
	b=SSu697jfXvOdJK4w+EmWN+LcsQEDEHlNKABgII5TtzaGIhD2a4IL2po7zBD+WA5ZL
	 vFaNFeIj9f5cvsLVok11nngKmLaJmJOyQMAINIkM+/Pxmlv3dSBMw4iR9YxxZ0gzI+
	 XFmFwa+VJDCb1Zhd86/neVIUBTBZp0BBaToPg9SydqOhDMc9EinF0nXOnKr/zsW0w7
	 gvptQ9tak+ObKH38jiF0aL66hIslZZED4fCyvrPBfNg/qQD0EmA9u3Yd+aVA/t120u
	 UgHMobnjc3/1jyWy7tkNE+eE5ZFLkBBsTUJ+6JzO+e31u3nSMzAnZ+wHOmWGmmM2RU
	 E2oQmNqbQGfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96418C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226159360.25393.15763225057906534599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71c11483fe79d03e2a37b875ec1c5fa021b4eef1308cd263a88100dd91f6d52
Date: Fri, 11 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752261593
