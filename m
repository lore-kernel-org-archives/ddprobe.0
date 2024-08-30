Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13451136337
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724993754; cv=none; b=DyygZrE07VwvFgn6fN5gxnLiHyUpNhP5W/FOxJvgrxTqGh4oRPD+5rkUbTNPCeW32walRlJhzsG+NKCN4HsYuUXfKQWUX5pI+0BuSwiDr0rJHwn0GJ6hyRPCNrs6GpszwsEvU38rPaZHvCyKR8N9pAB1eT1cixN5ikkPPNpwvvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724993754; c=relaxed/simple;
	bh=983G1o7GEG1Jyr3+UhKo5frXOEYA7gbxmz6fkyV9WHQ=;
	h=To:Subject:From:Message-Id:Date; b=e6NSWXSY6P78vSybH3n0RkPMJ7KEho6oc66ofdlm1VduUsr8kB7EepwcNALMCy5UzrnJir39025Vhy9HxTQYYwtfheo22TLVFSFC8uf0NbRCddnK86dcvFMzdlma/YlB9c97ucJzbbdScXzsuKTAZNXO4vWq/gWjEt+/ATYXEGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVJjWuEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVJjWuEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D5C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724993753;
	bh=983G1o7GEG1Jyr3+UhKo5frXOEYA7gbxmz6fkyV9WHQ=;
	h=To:Subject:From:Date:From;
	b=gVJjWuEOCJhw8wPXccK7wqXxiHZfWq9V8ELT3cuBDS4Fc5BfcYhBQDzKAUsgHBa33
	 3FOB9FQkjDqwGdwJBImvdTJJXLf7liH5PH2lMHjvEqSDPsBugdQ5q0FBj+1ZrQqnBU
	 ojGlIbqYbw9eYnGfTy0GYSSNpwtkybFURHh8M7z7vyGY8RBqmASXcKlKlmsMziXTYe
	 XGXLq9fkAEaPRgOgLuFvwdo6xdRtCotU5DmwlTLF1zkdWaFgKbmTQMPlqkskZVEUwA
	 XzpHT8CqQhB2zRDzOcjc3bttPfMN0QKtjE8j7nQoyjE5jxw46rEDbdLzjUP9Tvqxoc
	 if9vkz6Ly4VCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD4ACA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499375362.647.6972870803525490366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e602753f3115e5dbdf291b8a7ef9999d88db673130a32b0b0bbc19af1685bcc2
Date: Fri, 30 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724993753
