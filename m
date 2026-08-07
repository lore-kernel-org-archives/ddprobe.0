Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629FA37B40A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786128034; cv=none; b=H+6uffJvHw/6aCVdU5EIRMumCjQWcNnSz2DbBmstXQidXsD7pP57n+raJwCVwpK4orx9R0nH3v+KReBuoCcUUctIJjx5uFMM1SWOCsLjws1xJguKLlLXB7ZZ/qeaaIx9KIYFQN9PFiZvl/JepVqeUnNEJxYHyaSY3KAG5W/OHKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786128034; c=relaxed/simple;
	bh=uuZTWn8ws4dTTaf0DPA3AeMoFKEVPQehH7MHXpf7FN4=;
	h=To:Subject:From:Message-Id:Date; b=d9+LtNlSXwECbo5jdDD4WzKLH7qcFcqhc6sQCTKzBzZrGlUT9VWRvxQZJNb5p8y2KbcC6+S1s/R5pJKLjsvM4x/n2rI+roWTdhxsrvRWP1eG4ocOZMkHmuDLqGttzJwTsy+70HujKKE1MStIW41AokoYBTgVaX+4LWlm24GIasA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnidhvqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnidhvqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A15C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786128033;
	bh=uuZTWn8ws4dTTaf0DPA3AeMoFKEVPQehH7MHXpf7FN4=;
	h=To:Subject:From:Date:From;
	b=pnidhvqtjXW4odLtBH3k+EOGD6ApnkhxwbGjj8MMwPCuRbCJ50wf44QsxU2HBk4zw
	 lisuFp0gMWEwv5m1kdPH+lFR4nYnooTMYOKzYEbLADocyQIwmZtr9EFoh1ITr6VIXm
	 I7bbO0Z6WqXNPpZAJ5YJFrxV6bztEjjfoTK379wgRMSDwrMhdy3ojpnbev1fzlR72/
	 0H2kOcv4q0c/B7a2CWomrYU22eax4pLtVWpeYFdwNiMtgVIsf2g82uGfute5wKbX+9
	 4zODjTqAHl+2lYx3KR+hylFip+H9cQpHXb9f20f+rGNkg+tSyY7eAtS0PXD0QaLnH3
	 e77+oVF+OMO1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BEDC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612803371.30544.7116929665068558660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2539eb8b41edafc8f36c0918bdbf2099b3f9a84e9680e318a850fffa1e9324
Date: Fri, 07 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786128033
