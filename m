Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF5212C49C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727862354; cv=none; b=pj5eHvSlCwuZLlckT01gFX3P29DhATYq6+d2hOiy33fCcy4zj1rQRXQn7P3X9LtTT0L/XHZFPfiW7gaH4+rhBqNtmu0vNbxtLh/RHtSSP/7/iu8fTBTWggomeNQgzBqA2UeOpqfBNE11ThIm0PR+S5iKKXaiBak7XDQk4AsLCH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727862354; c=relaxed/simple;
	bh=3zRq3X7enmtqOl9Yb+oSRWtA1mghDb55axNIWOhfVX8=;
	h=To:Subject:From:Message-Id:Date; b=NA8ntKS9fyYIYMPQMuLeTVw+dXgx1WcHVcnoUSFMwNTgq30yOf0+NyvBcy0L6/WlS4u3VUoezWHYCotLBuZGLJcoS3AK1IpsHJZRFZzWGcwdVyC9zPlKNzfU41TKe5CCbHDQcvQW7OffqCiMqTPvg0vvRd5HK/4fpmWYYY4uXR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbe4kCnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbe4kCnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2FCC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727862353;
	bh=3zRq3X7enmtqOl9Yb+oSRWtA1mghDb55axNIWOhfVX8=;
	h=To:Subject:From:Date:From;
	b=bbe4kCnmJdZdZQcvv4LlINWD3xmt11a4L+tqmZ6kVgLh0AOkf/SlCj0HL3LkWbwQ0
	 ZoJ0r9V4ZtQaPf7vY8gRT8Te3U/4DPYT03XOBaoAI3BIpl/4/GknWEilFfAMu5fc/I
	 GC93UP5PqTfdCAQWLGRY9GZYj8Pba4R/sIIbJfK4eYWmdyu4CtAPM2C7f1ZJ1BEyA2
	 DHkpjqvOEn2QmNT77oHauVj/aUTa7iMPM1vCVefu+uOrPBSplnC0PkjWIVuXdCMePw
	 RmTyDWuOhCrvxiBRicBmkgmRdfuNOxTRYy94q12VzAUaSXBgVfSs287gNxl357uLzG
	 57knjxWFhvn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A94CF31AE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786235366.29779.3121402389714737694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d190a1fec29fe306c772169d480b0a27cccc9359e86b18130bbc5f3c5bc8b71
Date: Wed, 02 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727862353
