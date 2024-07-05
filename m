Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB14ED9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720139123; cv=none; b=dOIz0AYo7dfKaBV3jLn+rJSWyFjeWnnT3sEGwbkHIvp+utkc/lGHTeCV+y2RnjspGLKsTiIsI6POsUGct/x0Vmpw+RuEu/LM4y+HTlS4rGp3SZj39g6ZP+B+0/U2kWTaSe7o8eUrcYKMNVYs7y5Ti2An569dh4oqAxa0FjxiogU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720139123; c=relaxed/simple;
	bh=oEI2DeVRohZbVlWQJ/doM+RhqjhFk3dtZ2WPXJKGNCc=;
	h=To:Subject:From:Message-Id:Date; b=di6O1Z21C1u9kfJp2x84WZsfAwm18Lu8OiAxbWEE4A7MEycEzhFBCpVWPAZyTDDJ+JlmTBvrDu45yIIxotto8Q7dMfD3077DWHbXya+CvnkX2qXwqX0MMYntys9toNrZFAYF2qbo5kqhfSiCWcQ6k1iTafs2B9h7YQ5jBCTyB8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keEAEF4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keEAEF4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7549C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720139122;
	bh=oEI2DeVRohZbVlWQJ/doM+RhqjhFk3dtZ2WPXJKGNCc=;
	h=To:Subject:From:Date:From;
	b=keEAEF4DCkfH8d8DzhUleQrVsYsT5HvNvnQw/a/N7ZM+VtZ4McpdksRS3p3zZBKvO
	 iRrrZnQ3rDV9nYYC2qBPp8WMn77JB0vBsls5WM1ndCHZ20PuBRwORImy8nbjQrzNCJ
	 0/LrZWKktG2kQ/29pog++NIa0mCaMP6NqjREBySj7twyO1tidPzg0kuvddeawJAPia
	 /JGdDbP65iRd3mNlsjowuCuJsd0tn/OxaaiaMVdlx0mXnBdbsJWFx6UehrnIXVIJMo
	 Vfz35DwJBYbHMSGtGiUEbDLILgOd+mS6dQwMXgQ36n6EDAXTPXQ10nd01BGB7Fb194
	 9yoBzrvVaJ4XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C05C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013912280.10626.16396348767690901933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c659b3bcda8b9adcf91804d19ce73beb56df6c84fa8b7f67e0baba77650ea2a
Date: Fri, 05 Jul 2024 00:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720139122
