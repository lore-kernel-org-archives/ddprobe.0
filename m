Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B424B04B7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786414234; cv=none; b=dzOJ/cC8v2J5MzaDYpyspV01yfmFZdS8I30efBQjUA5rWIN5mY04cibCIFhwViDKXpfEGj9D6TU4S+cwnQ8r9qQ5EAHg8U25LZuVHokj0lZcOZS3dmjd7nzX/lhafgLP+NX+Gvdku7CI+HAz8fqUdvpNIi5PYlkl51krzKe0W6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786414234; c=relaxed/simple;
	bh=TziUC9o6rUoEL/vYBCz3xN6MVW9aX8yb6WRWUuFQDn8=;
	h=To:Subject:From:Message-Id:Date; b=nvMeG+q3PoJd0qq8V2eP///0HEJ0nEXuttlzqy5uzbPYeFYoYfOU29fOWIZOUHG7yKBi31mT9SeeYa5FRIQbryW491xFVt64d+J/voHsheV1Tl3KAf45L29LPa3E/CJ1KcKCDcst8lLHA4Q1cCnsJJFW8DuVzVq3Ik95av1wDGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIihOxPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIihOxPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E30C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786414233;
	bh=TziUC9o6rUoEL/vYBCz3xN6MVW9aX8yb6WRWUuFQDn8=;
	h=To:Subject:From:Date:From;
	b=TIihOxPugiaa4MclxRBCpPUy0/EOr3JasbU+EqJTA366qXJO/Z0BcOhix2kq0FxSe
	 Sqjd/T/rgReQ9XE7ekhyQUAOrbQigFtlSEG6qXTZ+wvEhSn5vpxRw6NXFp/8xQBpEU
	 i+ZoFuvUw6Hv/kV0sHAsOXP5dQ9nb2rAGtAfcWXtrf+V7BlxNWNSYH2bCT9zV53Pv7
	 u7fmJaL5us99r38gCgRibU7U6NNPu0AjDw08OYyCxSaHxUr8RH+LWMYrduGUkoUKWW
	 vm3QzWwzKSOlYMYFE0hiJvHdeeFQNV3HRfzcrFv1Cl1KXFYoN0kWRgRL5Nb0/atB+P
	 j1VCrR+unzBKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE979C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641423368.6936.9016607984765104116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e00699a6bef4664a09829af9823f393fb70c5d3992abf21133f9262a3a24ecd
Date: Tue, 11 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786414233
