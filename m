Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2051C5F30
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744708194; cv=none; b=n8kwEH6IO7KpXlcgDzjGf3x/4et3D84v7DE7wXF5yWU4CQ0w0eaPRy0Hvzbjnb67ZDkgwCy7akHRWMDkLNLm6jOVPG+hHsm8neAArC8LqSszCrxeDF9IhjRQp6epSOeK46ATGpi41wvFJnenDgSaxb6kgYsklMrISyB8bOKry54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744708194; c=relaxed/simple;
	bh=jD6+UVl44rxscaLU5OxxpLlnnJ5QXTFBNsyssx1bzF4=;
	h=To:Subject:From:Message-Id:Date; b=XHOFmxldJVuEZnjbDA3u4MLNSJBerty9B9cLCVHnF3uBMiAP6cZvU98tzHGpKIZBRwD98NLaTl0TR94rQN5Gq828VT/IP5XS1NXADh5mwubPp+74FibWpEPthOA1YNUWxEgULBBtyOCQIGt7oMpPwZOO5ACGS1igkCH0opFjGkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVJN57QM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVJN57QM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8351C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744708193;
	bh=jD6+UVl44rxscaLU5OxxpLlnnJ5QXTFBNsyssx1bzF4=;
	h=To:Subject:From:Date:From;
	b=OVJN57QMoDN9vFrn1qmG+E0KazaQc4+2g28krkI2I41d/Gj5+LmKCbP1VbmAlyRJV
	 /TzBGJK3U6wlYqnzTWKTjcYmS1ELy9Nl7HfqqZucWX/6ib9OmRt69A99mEheDKBqPV
	 1rzohtQUvqrfdsISf6eJMwh9IK8mwAhNh1bTnMjxaDcJKzqOwxq/8E7wCd+98dhgbR
	 g20oJrU+1XDly5mEWW9bZqs/cWMTlPxck75zjn6O9nZAoobqxIXvZloyIEhJQHyDmV
	 vzxtt8ua3X6f5gmyoRWeFvLreOnzTJ5SYRn2/cc9iHw2dQy7PvfstkkS6losj9NFpK
	 sb4G+UE2EZcOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96187C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470819360.1951.12556501211269080924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0466447e620dc3ea2cca56c34fd112a197da7840b548b20c2750a25fe4a80f8
Date: Tue, 15 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744708193
